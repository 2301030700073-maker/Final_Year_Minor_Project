package com.android.systemui.shared.plugins;

import android.app.ActivityThread;
import android.app.LoadedApk;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.widget.Toast;
import c.a.c.a.a;
import com.android.internal.annotations.VisibleForTesting;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.annotations.ProvidesInterface;
import com.android.systemui.shared.plugins.PluginInstanceManager;
import com.android.systemui.shared.plugins.PluginManager;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class PluginManagerImpl extends BroadcastReceiver implements PluginManager {
    public static final String DISABLE_PLUGIN = "com.android.systemui.action.DISABLE_PLUGIN";
    public static final String TAG = PluginManagerImpl.class.getSimpleName();
    public static PluginManager sInstance;
    public final boolean isDebuggable;
    public final Map mClassLoaders;
    public final Context mContext;
    public final PluginInstanceManagerFactory mFactory;
    public boolean mHasOneShot;
    public boolean mListening;
    public Looper mLooper;
    public final ArraySet mOneShotPackages;
    public ClassLoaderFilter mParentClassLoader;
    public final PluginEnabler mPluginEnabler;
    public final PluginInitializer mPluginInitializer;
    public final ArrayMap mPluginMap;
    public final PluginPrefs mPluginPrefs;
    public final ArraySet mWhitelistedPlugins;

    public class ClassLoaderFilter extends ClassLoader {
        public final ClassLoader mBase;
        public final String mPackage;

        public ClassLoaderFilter(ClassLoader classLoader, String str) {
            super(ClassLoader.getSystemClassLoader());
            this.mBase = classLoader;
            this.mPackage = str;
        }

        @Override // java.lang.ClassLoader
        public Class loadClass(String str, boolean z) {
            if (!str.startsWith(this.mPackage)) {
                super.loadClass(str, z);
            }
            return this.mBase.loadClass(str);
        }
    }

    public class CrashWhilePluginActiveException extends RuntimeException {
        public CrashWhilePluginActiveException(Throwable th) {
            super(th);
        }
    }

    public class PluginExceptionHandler implements Thread.UncaughtExceptionHandler {
        public final Thread.UncaughtExceptionHandler mHandler;

        private boolean checkStack(Throwable th) {
            boolean z;
            if (th == null) {
                return false;
            }
            synchronized (this) {
                z = false;
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    Iterator it = PluginManagerImpl.this.mPluginMap.values().iterator();
                    while (it.hasNext()) {
                        z |= ((PluginInstanceManager) it.next()).checkAndDisable(stackTraceElement.getClassName());
                    }
                }
            }
            return checkStack(th.getCause()) | z;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (SystemProperties.getBoolean("plugin.debugging", false)) {
                this.mHandler.uncaughtException(thread, th);
                return;
            }
            boolean checkStack = checkStack(th);
            if (!checkStack) {
                synchronized (this) {
                    Iterator it = PluginManagerImpl.this.mPluginMap.values().iterator();
                    while (it.hasNext()) {
                        checkStack |= ((PluginInstanceManager) it.next()).disableAll();
                    }
                }
            }
            if (checkStack) {
                th = new CrashWhilePluginActiveException(th);
            }
            this.mHandler.uncaughtException(thread, th);
        }

        public PluginExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.mHandler = uncaughtExceptionHandler;
        }
    }

    @VisibleForTesting
    public class PluginInstanceManagerFactory {
        public PluginInstanceManager createPluginInstanceManager(Context context, String str, PluginListener pluginListener, boolean z, Looper looper, Class cls, PluginManagerImpl pluginManagerImpl) {
            return new PluginInstanceManager(context, str, pluginListener, z, looper, new VersionInfo().addClass(cls), pluginManagerImpl);
        }
    }

    public PluginManagerImpl(Context context, PluginInitializer pluginInitializer) {
        this(context, new PluginInstanceManagerFactory(), Build.IS_DEBUGGABLE, Thread.getUncaughtExceptionPreHandler(), pluginInitializer);
    }

    private boolean clearClassLoader(String str) {
        return this.mClassLoaders.remove(str) != null;
    }

    private boolean isPluginPackageWhitelisted(String str) {
        Iterator it = this.mWhitelistedPlugins.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str2);
            if (unflattenFromString != null) {
                if (unflattenFromString.getPackageName().equals(str)) {
                    return true;
                }
            } else if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean isPluginWhitelisted(ComponentName componentName) {
        Iterator it = this.mWhitelistedPlugins.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
            if (unflattenFromString != null) {
                if (unflattenFromString.equals(componentName)) {
                    return true;
                }
            } else if (str.equals(componentName.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    private void startListening() {
        if (this.mListening) {
            return;
        }
        this.mListening = true;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction(PluginManager.PLUGIN_CHANGED);
        intentFilter.addAction(DISABLE_PLUGIN);
        intentFilter.addDataScheme("package");
        this.mContext.registerReceiver(this, intentFilter);
        this.mContext.registerReceiver(this, new IntentFilter("android.intent.action.USER_UNLOCKED"));
    }

    private void stopListening() {
        if (!this.mListening || this.mHasOneShot) {
            return;
        }
        this.mListening = false;
        this.mContext.unregisterReceiver(this);
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public void addPluginListener(PluginListener pluginListener, Class cls) {
        addPluginListener(pluginListener, cls, false);
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public boolean dependsOn(Plugin plugin, Class cls) {
        synchronized (this) {
            for (int i = 0; i < this.mPluginMap.size(); i++) {
                if (((PluginInstanceManager) this.mPluginMap.valueAt(i)).dependsOn(plugin, cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (this) {
            printWriter.println(String.format("  plugin map (%d):", Integer.valueOf(this.mPluginMap.size())));
            for (PluginListener pluginListener : this.mPluginMap.keySet()) {
                printWriter.println(String.format("    %s -> %s", pluginListener, this.mPluginMap.get(pluginListener)));
            }
        }
    }

    public ClassLoader getClassLoader(ApplicationInfo applicationInfo) {
        if (!this.isDebuggable && !isPluginPackageWhitelisted(applicationInfo.packageName)) {
            String str = TAG;
            StringBuilder f = a.f("Cannot get class loader for non-whitelisted plugin. Src:");
            f.append(applicationInfo.sourceDir);
            f.append(", pkg: ");
            f.append(applicationInfo.packageName);
            Log.w(str, f.toString());
            return null;
        }
        if (this.mClassLoaders.containsKey(applicationInfo.packageName)) {
            return (ClassLoader) this.mClassLoaders.get(applicationInfo.packageName);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        LoadedApk.makePaths((ActivityThread) null, true, applicationInfo, arrayList, arrayList2);
        PathClassLoader pathClassLoader = new PathClassLoader(TextUtils.join(File.pathSeparator, arrayList), TextUtils.join(File.pathSeparator, arrayList2), getParentClassLoader());
        this.mClassLoaders.put(applicationInfo.packageName, pathClassLoader);
        return pathClassLoader;
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public Plugin getOneShotPlugin(Class cls) {
        ProvidesInterface providesInterface = (ProvidesInterface) cls.getDeclaredAnnotation(ProvidesInterface.class);
        if (providesInterface == null) {
            throw new RuntimeException(cls + " doesn't provide an interface");
        }
        if (!TextUtils.isEmpty(providesInterface.action())) {
            return getOneShotPlugin(providesInterface.action(), cls);
        }
        throw new RuntimeException(cls + " doesn't provide an action");
    }

    public ClassLoader getParentClassLoader() {
        if (this.mParentClassLoader == null) {
            this.mParentClassLoader = new ClassLoaderFilter(PluginManagerImpl.class.getClassLoader(), "com.android.systemui.plugin");
        }
        return this.mParentClassLoader;
    }

    public PluginEnabler getPluginEnabler() {
        return this.mPluginEnabler;
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public String[] getWhitelistedPlugins() {
        return (String[]) this.mWhitelistedPlugins.toArray(new String[0]);
    }

    public void handleWtfs() {
        this.mPluginInitializer.handleWtfs();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int disableReason;
        String str;
        if ("android.intent.action.USER_UNLOCKED".equals(intent.getAction())) {
            synchronized (this) {
                Iterator it = this.mPluginMap.values().iterator();
                while (it.hasNext()) {
                    ((PluginInstanceManager) it.next()).loadAll();
                }
            }
            return;
        }
        if (DISABLE_PLUGIN.equals(intent.getAction())) {
            ComponentName unflattenFromString = ComponentName.unflattenFromString(intent.getData().toString().substring(10));
            if (isPluginWhitelisted(unflattenFromString)) {
                return;
            }
            getPluginEnabler().setDisabled(unflattenFromString, 1);
            ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).cancel(unflattenFromString.getClassName(), 6);
            return;
        }
        String encodedSchemeSpecificPart = intent.getData().getEncodedSchemeSpecificPart();
        ComponentName unflattenFromString2 = ComponentName.unflattenFromString(encodedSchemeSpecificPart);
        if (this.mOneShotPackages.contains(encodedSchemeSpecificPart)) {
            int identifier = Resources.getSystem().getIdentifier("stat_sys_warning", "drawable", "android");
            int identifier2 = Resources.getSystem().getIdentifier("system_notification_accent_color", "color", "android");
            try {
                PackageManager packageManager = this.mContext.getPackageManager();
                str = packageManager.getApplicationInfo(encodedSchemeSpecificPart, 0).loadLabel(packageManager).toString();
            } catch (PackageManager.NameNotFoundException unused) {
                str = encodedSchemeSpecificPart;
            }
            Notification.Builder contentText = new Notification.Builder(this.mContext, PluginManager.NOTIFICATION_CHANNEL_ID).setSmallIcon(identifier).setWhen(0L).setShowWhen(false).setPriority(2).setVisibility(1).setColor(this.mContext.getColor(identifier2)).setContentTitle("Plugin \"" + str + "\" has updated").setContentText("Restart SysUI for changes to take effect.");
            contentText.addAction(new Notification.Action.Builder((Icon) null, "Restart SysUI", PendingIntent.getBroadcast(this.mContext, 0, new Intent("com.android.systemui.action.RESTART").setData(Uri.parse("package://" + encodedSchemeSpecificPart)), 0)).build());
            ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).notify(6, contentText.build());
        }
        if (clearClassLoader(encodedSchemeSpecificPart)) {
            if (Build.IS_ENG) {
                Toast.makeText(this.mContext, "Reloading " + encodedSchemeSpecificPart, 1).show();
            } else {
                Log.v(TAG, "Reloading " + encodedSchemeSpecificPart);
            }
        }
        if ("android.intent.action.PACKAGE_REPLACED".equals(intent.getAction()) && unflattenFromString2 != null && ((disableReason = getPluginEnabler().getDisableReason(unflattenFromString2)) == 2 || disableReason == 3 || disableReason == 1)) {
            String str2 = TAG;
            StringBuilder f = a.f("Re-enabling previously disabled plugin that has been updated: ");
            f.append(unflattenFromString2.flattenToShortString());
            Log.i(str2, f.toString());
            getPluginEnabler().setEnabled(unflattenFromString2);
        }
        synchronized (this) {
            if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction())) {
                Iterator it2 = this.mPluginMap.values().iterator();
                while (it2.hasNext()) {
                    ((PluginInstanceManager) it2.next()).onPackageRemoved(encodedSchemeSpecificPart);
                }
            } else {
                Iterator it3 = this.mPluginMap.values().iterator();
                while (it3.hasNext()) {
                    ((PluginInstanceManager) it3.next()).onPackageChange(encodedSchemeSpecificPart);
                }
            }
        }
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public void removePluginListener(PluginListener pluginListener) {
        synchronized (this) {
            if (this.mPluginMap.containsKey(pluginListener)) {
                ((PluginInstanceManager) this.mPluginMap.remove(pluginListener)).destroy();
                if (this.mPluginMap.size() == 0) {
                    stopListening();
                }
            }
        }
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public void addPluginListener(PluginListener pluginListener, Class cls, boolean z) {
        addPluginListener(PluginManager.Helper.getAction(cls), pluginListener, cls, z);
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public void addPluginListener(String str, PluginListener pluginListener, Class cls) {
        addPluginListener(str, pluginListener, cls, false);
    }

    @VisibleForTesting
    public PluginManagerImpl(Context context, PluginInstanceManagerFactory pluginInstanceManagerFactory, boolean z, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, final PluginInitializer pluginInitializer) {
        this.mPluginMap = new ArrayMap();
        this.mClassLoaders = new ArrayMap();
        this.mOneShotPackages = new ArraySet();
        this.mWhitelistedPlugins = new ArraySet();
        this.mContext = context;
        this.mFactory = pluginInstanceManagerFactory;
        this.mLooper = pluginInitializer.getBgLooper();
        this.isDebuggable = z;
        this.mWhitelistedPlugins.addAll(Arrays.asList(pluginInitializer.getWhitelistedPlugins(this.mContext)));
        this.mPluginPrefs = new PluginPrefs(this.mContext);
        this.mPluginEnabler = pluginInitializer.getPluginEnabler(this.mContext);
        this.mPluginInitializer = pluginInitializer;
        Thread.setUncaughtExceptionPreHandler(new PluginExceptionHandler(uncaughtExceptionHandler));
        new Handler(this.mLooper).post(new Runnable() { // from class: com.android.systemui.shared.plugins.PluginManagerImpl.1
            @Override // java.lang.Runnable
            public void run() {
                pluginInitializer.onPluginManagerInit();
            }
        });
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public void addPluginListener(String str, PluginListener pluginListener, Class cls, boolean z) {
        this.mPluginPrefs.addAction(str);
        PluginInstanceManager createPluginInstanceManager = this.mFactory.createPluginInstanceManager(this.mContext, str, pluginListener, z, this.mLooper, cls, this);
        createPluginInstanceManager.loadAll();
        synchronized (this) {
            this.mPluginMap.put(pluginListener, createPluginInstanceManager);
        }
        startListening();
    }

    @Override // com.android.systemui.shared.plugins.PluginManager
    public Plugin getOneShotPlugin(String str, Class cls) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            PluginInstanceManager createPluginInstanceManager = this.mFactory.createPluginInstanceManager(this.mContext, str, null, false, this.mLooper, cls, this);
            this.mPluginPrefs.addAction(str);
            PluginInstanceManager.PluginInfo plugin = createPluginInstanceManager.getPlugin();
            if (plugin == null) {
                return null;
            }
            this.mOneShotPackages.add(plugin.mPackage);
            this.mHasOneShot = true;
            startListening();
            return (Plugin) plugin.mPlugin;
        }
        throw new RuntimeException("Must be called from UI thread");
    }
}
