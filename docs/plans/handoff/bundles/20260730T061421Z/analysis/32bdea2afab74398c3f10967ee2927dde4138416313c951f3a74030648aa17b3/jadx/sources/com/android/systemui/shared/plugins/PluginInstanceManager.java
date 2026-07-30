package com.android.systemui.shared.plugins;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.ArraySet;
import android.util.Log;
import android.view.LayoutInflater;
import c.a.c.a.a;
import com.android.internal.annotations.VisibleForTesting;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginFragment;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.shared.plugins.PluginEnabler;
import com.android.systemui.shared.plugins.VersionInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class PluginInstanceManager {
    public static final boolean DEBUG = false;
    public static final String PLUGIN_PERMISSION = "com.android.systemui.permission.PLUGIN";
    public static final String TAG = "PluginInstanceManager";
    public final boolean isDebuggable;
    public final String mAction;
    public final boolean mAllowMultiple;
    public final Context mContext;
    public final PluginListener mListener;

    @VisibleForTesting
    public final MainHandler mMainHandler;
    public final PluginManagerImpl mManager;

    @VisibleForTesting
    public final PluginHandler mPluginHandler;
    public final PackageManager mPm;
    public final VersionInfo mVersion;
    public final ArraySet mWhitelistedPlugins;

    public class MainHandler extends Handler {
        public static final int PLUGIN_CONNECTED = 1;
        public static final int PLUGIN_DISCONNECTED = 2;

        public MainHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                PluginPrefs.setHasPlugins(PluginInstanceManager.this.mContext);
                PluginInfo pluginInfo = (PluginInfo) message.obj;
                PluginInstanceManager.this.mManager.handleWtfs();
                if (!(message.obj instanceof PluginFragment)) {
                    ((Plugin) pluginInfo.mPlugin).onCreate(PluginInstanceManager.this.mContext, pluginInfo.mPluginContext);
                }
                PluginInstanceManager.this.mListener.onPluginConnected((Plugin) pluginInfo.mPlugin, pluginInfo.mPluginContext);
                return;
            }
            if (i != 2) {
                super.handleMessage(message);
                return;
            }
            PluginInstanceManager.this.mListener.onPluginDisconnected((Plugin) message.obj);
            Object obj = message.obj;
            if (obj instanceof PluginFragment) {
                return;
            }
            ((Plugin) obj).onDestroy();
        }
    }

    public class PluginContextWrapper extends ContextWrapper {
        public final ClassLoader mClassLoader;
        public LayoutInflater mInflater;

        public PluginContextWrapper(Context context, ClassLoader classLoader) {
            super(context);
            this.mClassLoader = classLoader;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public ClassLoader getClassLoader() {
            return this.mClassLoader;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            if (!"layout_inflater".equals(str)) {
                return getBaseContext().getSystemService(str);
            }
            if (this.mInflater == null) {
                this.mInflater = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.mInflater;
        }
    }

    public class PluginHandler extends Handler {
        public static final int QUERY_ALL = 1;
        public static final int QUERY_PKG = 2;
        public static final int REMOVE_PKG = 3;
        public final ArrayList mPlugins;

        public PluginHandler(Looper looper) {
            super(looper);
            this.mPlugins = new ArrayList();
        }

        private VersionInfo checkVersion(Class cls, Plugin plugin, VersionInfo versionInfo) {
            VersionInfo addClass = new VersionInfo().addClass(cls);
            if (addClass.hasVersionInfo()) {
                versionInfo.checkVersion(addClass);
                return addClass;
            }
            if (plugin.getVersion() == versionInfo.getDefaultVersion()) {
                return null;
            }
            throw new VersionInfo.InvalidVersionException("Invalid legacy version", false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleQueryPlugins(String str) {
            Intent intent = new Intent(PluginInstanceManager.this.mAction);
            if (str != null) {
                intent.setPackage(str);
            }
            List<ResolveInfo> queryIntentServices = PluginInstanceManager.this.mPm.queryIntentServices(intent, 0);
            if (queryIntentServices.size() > 1 && !PluginInstanceManager.this.mAllowMultiple) {
                StringBuilder f = a.f("Multiple plugins found for ");
                f.append(PluginInstanceManager.this.mAction);
                Log.w(PluginInstanceManager.TAG, f.toString());
                return;
            }
            Iterator<ResolveInfo> it = queryIntentServices.iterator();
            while (it.hasNext()) {
                ServiceInfo serviceInfo = it.next().serviceInfo;
                PluginInfo handleLoadPlugin = handleLoadPlugin(new ComponentName(serviceInfo.packageName, serviceInfo.name));
                if (handleLoadPlugin != null) {
                    this.mPlugins.add(handleLoadPlugin);
                    PluginInstanceManager.this.mMainHandler.obtainMessage(1, handleLoadPlugin).sendToTarget();
                }
            }
        }

        public PluginInfo handleLoadPlugin(ComponentName componentName) {
            Plugin plugin;
            if (!PluginInstanceManager.this.isDebuggable && !PluginInstanceManager.this.isPluginWhitelisted(componentName)) {
                Log.w(PluginInstanceManager.TAG, "Plugin cannot be loaded on production build: " + componentName);
                return null;
            }
            if (!PluginInstanceManager.this.mManager.getPluginEnabler().isEnabled(componentName)) {
                return null;
            }
            String packageName = componentName.getPackageName();
            String className = componentName.getClassName();
            try {
                ApplicationInfo applicationInfo = PluginInstanceManager.this.mPm.getApplicationInfo(packageName, 0);
                if (PluginInstanceManager.this.mPm.checkPermission(PluginInstanceManager.PLUGIN_PERMISSION, packageName) != 0) {
                    Log.d(PluginInstanceManager.TAG, "Plugin doesn't have permission: " + packageName);
                    return null;
                }
                ClassLoader classLoader = PluginInstanceManager.this.mManager.getClassLoader(applicationInfo);
                PluginContextWrapper pluginContextWrapper = new PluginContextWrapper(PluginInstanceManager.this.mContext.createApplicationContext(applicationInfo, 0), classLoader);
                Class<?> cls = Class.forName(className, true, classLoader);
                Plugin plugin2 = (Plugin) cls.newInstance();
                try {
                    plugin = plugin2;
                } catch (VersionInfo.InvalidVersionException e) {
                    e = e;
                    plugin = plugin2;
                }
                try {
                    return new PluginInfo(packageName, className, plugin2, pluginContextWrapper, checkVersion(cls, plugin2, PluginInstanceManager.this.mVersion));
                } catch (VersionInfo.InvalidVersionException e2) {
                    e = e2;
                    Notification.Builder color = new Notification.Builder(PluginInstanceManager.this.mContext, PluginManager.NOTIFICATION_CHANNEL_ID).setStyle(new Notification.BigTextStyle()).setSmallIcon(Resources.getSystem().getIdentifier("stat_sys_warning", "drawable", "android")).setWhen(0L).setShowWhen(false).setVisibility(1).setColor(PluginInstanceManager.this.mContext.getColor(Resources.getSystem().getIdentifier("system_notification_accent_color", "color", "android")));
                    try {
                        className = PluginInstanceManager.this.mPm.getServiceInfo(componentName, 0).loadLabel(PluginInstanceManager.this.mPm).toString();
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    if (e.isTooNew()) {
                        Notification.Builder contentTitle = color.setContentTitle("Plugin \"" + className + "\" is too new");
                        StringBuilder sb = new StringBuilder();
                        sb.append("Check to see if an OTA is available.\n");
                        sb.append(e.getMessage());
                        contentTitle.setContentText(sb.toString());
                    } else {
                        Notification.Builder contentTitle2 = color.setContentTitle("Plugin \"" + className + "\" is too old");
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Contact plugin developer to get an updated version.\n");
                        sb2.append(e.getMessage());
                        contentTitle2.setContentText(sb2.toString());
                    }
                    color.addAction(new Notification.Action.Builder((Icon) null, "Disable plugin", PendingIntent.getBroadcast(PluginInstanceManager.this.mContext, 0, new Intent(PluginManagerImpl.DISABLE_PLUGIN).setData(Uri.parse("package://" + componentName.flattenToString())), 0)).build());
                    ((NotificationManager) PluginInstanceManager.this.mContext.getSystemService(NotificationManager.class)).notify(6, color.build());
                    Log.w(PluginInstanceManager.TAG, "Plugin has invalid interface version " + plugin.getVersion() + ", expected " + PluginInstanceManager.this.mVersion);
                    return null;
                }
            } catch (Throwable th) {
                Log.w(PluginInstanceManager.TAG, "Couldn't load plugin: " + packageName, th);
                return null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                for (int size = this.mPlugins.size() - 1; size >= 0; size--) {
                    PluginInstanceManager.this.mMainHandler.obtainMessage(2, ((PluginInfo) this.mPlugins.get(size)).mPlugin).sendToTarget();
                }
                this.mPlugins.clear();
                handleQueryPlugins(null);
                return;
            }
            if (i == 2) {
                String str = (String) message.obj;
                if (PluginInstanceManager.this.mAllowMultiple || this.mPlugins.size() == 0) {
                    handleQueryPlugins(str);
                    return;
                }
                return;
            }
            if (i != 3) {
                super.handleMessage(message);
                return;
            }
            String str2 = (String) message.obj;
            for (int size2 = this.mPlugins.size() - 1; size2 >= 0; size2--) {
                PluginInfo pluginInfo = (PluginInfo) this.mPlugins.get(size2);
                if (pluginInfo.mPackage.equals(str2)) {
                    PluginInstanceManager.this.mMainHandler.obtainMessage(2, pluginInfo.mPlugin).sendToTarget();
                    this.mPlugins.remove(size2);
                }
            }
        }
    }

    public class PluginInfo {
        public String mClass;
        public String mPackage;
        public Object mPlugin;
        public final Context mPluginContext;
        public final VersionInfo mVersion;

        public PluginInfo(String str, String str2, Object obj, Context context, VersionInfo versionInfo) {
            this.mPlugin = obj;
            this.mClass = str2;
            this.mPackage = str;
            this.mPluginContext = context;
            this.mVersion = versionInfo;
        }
    }

    public PluginInstanceManager(Context context, String str, PluginListener pluginListener, boolean z, Looper looper, VersionInfo versionInfo, PluginManagerImpl pluginManagerImpl) {
        this(context, context.getPackageManager(), str, pluginListener, z, looper, versionInfo, pluginManagerImpl, Build.IS_DEBUGGABLE, pluginManagerImpl.getWhitelistedPlugins());
    }

    private boolean disable(PluginInfo pluginInfo, @PluginEnabler.DisableReason int i) {
        ComponentName componentName = new ComponentName(pluginInfo.mPackage, pluginInfo.mClass);
        if (isPluginWhitelisted(componentName)) {
            return false;
        }
        StringBuilder f = a.f("Disabling plugin ");
        f.append(componentName.flattenToShortString());
        Log.w(TAG, f.toString());
        this.mManager.getPluginEnabler().setDisabled(componentName, i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPluginWhitelisted(ComponentName componentName) {
        Iterator it = this.mWhitelistedPlugins.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
            if (unflattenFromString == null) {
                if (str.equals(componentName.getPackageName())) {
                    return true;
                }
            } else if (unflattenFromString.equals(componentName)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkAndDisable(String str) {
        Iterator it = new ArrayList(this.mPluginHandler.mPlugins).iterator();
        boolean z = false;
        while (it.hasNext()) {
            PluginInfo pluginInfo = (PluginInfo) it.next();
            if (str.startsWith(pluginInfo.mPackage)) {
                z |= disable(pluginInfo, 2);
            }
        }
        return z;
    }

    public boolean dependsOn(Plugin plugin, Class cls) {
        Iterator it = new ArrayList(this.mPluginHandler.mPlugins).iterator();
        while (it.hasNext()) {
            PluginInfo pluginInfo = (PluginInfo) it.next();
            if (pluginInfo.mPlugin.getClass().getName().equals(plugin.getClass().getName())) {
                return pluginInfo.mVersion != null && pluginInfo.mVersion.hasClass(cls);
            }
        }
        return false;
    }

    public void destroy() {
        Iterator it = new ArrayList(this.mPluginHandler.mPlugins).iterator();
        while (it.hasNext()) {
            this.mMainHandler.obtainMessage(2, ((PluginInfo) it.next()).mPlugin).sendToTarget();
        }
    }

    public boolean disableAll() {
        ArrayList arrayList = new ArrayList(this.mPluginHandler.mPlugins);
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            z |= disable((PluginInfo) arrayList.get(i), 3);
        }
        return z;
    }

    public PluginInfo getPlugin() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new RuntimeException("Must be called from UI thread");
        }
        this.mPluginHandler.handleQueryPlugins(null);
        if (this.mPluginHandler.mPlugins.size() <= 0) {
            return null;
        }
        this.mMainHandler.removeMessages(1);
        PluginInfo pluginInfo = (PluginInfo) this.mPluginHandler.mPlugins.get(0);
        PluginPrefs.setHasPlugins(this.mContext);
        ((Plugin) pluginInfo.mPlugin).onCreate(this.mContext, pluginInfo.mPluginContext);
        return pluginInfo;
    }

    public void loadAll() {
        this.mPluginHandler.sendEmptyMessage(1);
    }

    public void onPackageChange(String str) {
        this.mPluginHandler.obtainMessage(3, str).sendToTarget();
        this.mPluginHandler.obtainMessage(2, str).sendToTarget();
    }

    public void onPackageRemoved(String str) {
        this.mPluginHandler.obtainMessage(3, str).sendToTarget();
    }

    public String toString() {
        return String.format("%s@%s (action=%s)", PluginInstanceManager.class.getSimpleName(), Integer.valueOf(hashCode()), this.mAction);
    }

    @VisibleForTesting
    public PluginInstanceManager(Context context, PackageManager packageManager, String str, PluginListener pluginListener, boolean z, Looper looper, VersionInfo versionInfo, PluginManagerImpl pluginManagerImpl, boolean z2, String[] strArr) {
        this.mWhitelistedPlugins = new ArraySet();
        this.mMainHandler = new MainHandler(Looper.getMainLooper());
        this.mPluginHandler = new PluginHandler(looper);
        this.mManager = pluginManagerImpl;
        this.mContext = context;
        this.mPm = packageManager;
        this.mAction = str;
        this.mListener = pluginListener;
        this.mAllowMultiple = z;
        this.mVersion = versionInfo;
        this.mWhitelistedPlugins.addAll(Arrays.asList(strArr));
        this.isDebuggable = z2;
    }
}
