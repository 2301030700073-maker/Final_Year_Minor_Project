package defpackage;

import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import com.facebook.internal.ServerProtocol;
import defpackage.Oz;
import j$.util.Objects;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.Executor;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* renamed from: Ra, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0466Ra {
    private static final String DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION_SUFFIX = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
    public static final int RECEIVER_EXPORTED = 2;
    public static final int RECEIVER_NOT_EXPORTED = 4;
    public static final int RECEIVER_VISIBLE_TO_INSTANT_APPS = 1;
    private static final String TAG = "ContextCompat";
    private static final Object sSync = new Object();

    /* renamed from: Ra$case, reason: invalid class name */
    public static class Ccase {
        /* renamed from: do, reason: not valid java name */
        public static Context m2040do(Context context, String str) {
            Context createAttributionContext;
            createAttributionContext = context.createAttributionContext(str);
            return createAttributionContext;
        }

        /* renamed from: for, reason: not valid java name */
        public static Display m2041for(Context context) {
            Object systemService;
            Display display;
            try {
                display = context.getDisplay();
                return display;
            } catch (UnsupportedOperationException unused) {
                Objects.toString(context);
                systemService = context.getSystemService((Class<Object>) DisplayManager.class);
                return ((DisplayManager) systemService).getDisplay(0);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public static String m2042if(Context context) {
            String attributionTag;
            attributionTag = context.getAttributionTag();
            return attributionTag;
        }
    }

    /* renamed from: Ra$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static File m2043do(Context context) {
            return context.getCodeCacheDir();
        }

        /* renamed from: for, reason: not valid java name */
        public static File m2044for(Context context) {
            return context.getNoBackupFilesDir();
        }

        /* renamed from: if, reason: not valid java name */
        public static Drawable m2045if(Context context, int i) {
            return context.getDrawable(i);
        }
    }

    /* renamed from: Ra$else, reason: invalid class name */
    public static class Celse {
        /* renamed from: do, reason: not valid java name */
        public static Intent m2046do(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
            Intent registerReceiver;
            registerReceiver = context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i);
            return registerReceiver;
        }
    }

    /* renamed from: Ra$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static Context m2047do(Context context) {
            Context createDeviceProtectedStorageContext;
            createDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
            return createDeviceProtectedStorageContext;
        }

        /* renamed from: for, reason: not valid java name */
        public static boolean m2048for(Context context) {
            boolean isDeviceProtectedStorage;
            isDeviceProtectedStorage = context.isDeviceProtectedStorage();
            return isDeviceProtectedStorage;
        }

        /* renamed from: if, reason: not valid java name */
        public static File m2049if(Context context) {
            File dataDir;
            dataDir = context.getDataDir();
            return dataDir;
        }
    }

    /* renamed from: Ra$goto, reason: invalid class name */
    public static final class Cgoto {

        /* renamed from: do, reason: not valid java name */
        public static final HashMap<Class<?>, String> f3188do;

        static {
            HashMap<Class<?>, String> hashMap = new HashMap<>();
            f3188do = hashMap;
            if (Build.VERSION.SDK_INT >= 22) {
                hashMap.put(SubscriptionManager.class, "telephony_subscription_service");
                hashMap.put(UsageStatsManager.class, "usagestats");
            }
            hashMap.put(AppWidgetManager.class, "appwidget");
            hashMap.put(BatteryManager.class, "batterymanager");
            hashMap.put(CameraManager.class, "camera");
            hashMap.put(JobScheduler.class, "jobscheduler");
            hashMap.put(LauncherApps.class, "launcherapps");
            hashMap.put(MediaProjectionManager.class, "media_projection");
            hashMap.put(MediaSessionManager.class, "media_session");
            hashMap.put(RestrictionsManager.class, "restrictions");
            hashMap.put(TelecomManager.class, "telecom");
            hashMap.put(TvInputManager.class, "tv_input");
            hashMap.put(AppOpsManager.class, "appops");
            hashMap.put(CaptioningManager.class, "captioning");
            hashMap.put(ConsumerIrManager.class, "consumer_ir");
            hashMap.put(PrintManager.class, "print");
            hashMap.put(BluetoothManager.class, "bluetooth");
            hashMap.put(DisplayManager.class, ServerProtocol.DIALOG_PARAM_DISPLAY);
            hashMap.put(UserManager.class, "user");
            hashMap.put(InputManager.class, "input");
            hashMap.put(MediaRouter.class, "media_router");
            hashMap.put(NsdManager.class, "servicediscovery");
            hashMap.put(AccessibilityManager.class, "accessibility");
            hashMap.put(AccountManager.class, "account");
            hashMap.put(ActivityManager.class, "activity");
            hashMap.put(AlarmManager.class, "alarm");
            hashMap.put(AudioManager.class, "audio");
            hashMap.put(ClipboardManager.class, "clipboard");
            hashMap.put(ConnectivityManager.class, "connectivity");
            hashMap.put(DevicePolicyManager.class, "device_policy");
            hashMap.put(DownloadManager.class, "download");
            hashMap.put(DropBoxManager.class, "dropbox");
            hashMap.put(InputMethodManager.class, "input_method");
            hashMap.put(KeyguardManager.class, "keyguard");
            hashMap.put(LayoutInflater.class, "layout_inflater");
            hashMap.put(LocationManager.class, "location");
            hashMap.put(NfcManager.class, "nfc");
            hashMap.put(NotificationManager.class, "notification");
            hashMap.put(PowerManager.class, "power");
            hashMap.put(SearchManager.class, "search");
            hashMap.put(SensorManager.class, "sensor");
            hashMap.put(StorageManager.class, "storage");
            hashMap.put(TelephonyManager.class, "phone");
            hashMap.put(TextServicesManager.class, "textservices");
            hashMap.put(UiModeManager.class, "uimode");
            hashMap.put(UsbManager.class, "usb");
            hashMap.put(Vibrator.class, "vibrator");
            hashMap.put(WallpaperManager.class, "wallpaper");
            hashMap.put(WifiP2pManager.class, "wifip2p");
            hashMap.put(WifiManager.class, "wifi");
            hashMap.put(WindowManager.class, "window");
        }
    }

    /* renamed from: Ra$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static int m2050do(Context context, int i) {
            int color;
            color = context.getColor(i);
            return color;
        }

        /* renamed from: for, reason: not valid java name */
        public static String m2051for(Context context, Class<?> cls) {
            String systemServiceName;
            systemServiceName = context.getSystemServiceName(cls);
            return systemServiceName;
        }

        /* renamed from: if, reason: not valid java name */
        public static <T> T m2052if(Context context, Class<T> cls) {
            Object systemService;
            systemService = context.getSystemService(cls);
            return (T) systemService;
        }
    }

    /* renamed from: Ra$new, reason: invalid class name */
    public static class Cnew {
        /* renamed from: do, reason: not valid java name */
        public static Intent m2053do(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
            Intent registerReceiver;
            if ((i & 4) != 0 && str == null) {
                return context.registerReceiver(broadcastReceiver, intentFilter, C0466Ra.obtainAndCheckReceiverPermission(context), handler);
            }
            registerReceiver = context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i & 1);
            return registerReceiver;
        }

        /* renamed from: if, reason: not valid java name */
        public static ComponentName m2054if(Context context, Intent intent) {
            ComponentName startForegroundService;
            startForegroundService = context.startForegroundService(intent);
            return startForegroundService;
        }
    }

    /* renamed from: Ra$try, reason: invalid class name */
    public static class Ctry {
        /* renamed from: do, reason: not valid java name */
        public static Executor m2055do(Context context) {
            Executor mainExecutor;
            mainExecutor = context.getMainExecutor();
            return mainExecutor;
        }
    }

    public static int checkSelfPermission(Context context, String str) {
        if (str != null) {
            return (Build.VERSION.SDK_INT >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) ? context.checkPermission(str, Process.myPid(), Process.myUid()) : new C3181jv(context).m7177do() ? 0 : -1;
        }
        throw new NullPointerException("permission must be non-null");
    }

    public static Context createAttributionContext(Context context, String str) {
        return Build.VERSION.SDK_INT >= 30 ? Ccase.m2040do(context, str) : context;
    }

    public static Context createDeviceProtectedStorageContext(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Cfor.m2047do(context);
        }
        return null;
    }

    private static File createFilesDir(File file) {
        synchronized (sSync) {
            if (!file.exists()) {
                if (file.mkdirs()) {
                    return file;
                }
                file.getPath();
            }
            return file;
        }
    }

    public static String getAttributionTag(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Ccase.m2042if(context);
        }
        return null;
    }

    public static File getCodeCacheDir(Context context) {
        return Cdo.m2043do(context);
    }

    public static int getColor(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? Cif.m2050do(context, i) : context.getResources().getColor(i);
    }

    public static ColorStateList getColorStateList(Context context, int i) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Oz.Cfor cfor;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        Oz.Cnew cnew = new Oz.Cnew(resources, theme);
        synchronized (Oz.f2711do) {
            SparseArray<Oz.Cfor> sparseArray = Oz.f2713do.get(cnew);
            colorStateList = null;
            if (sparseArray != null && sparseArray.size() > 0 && (cfor = sparseArray.get(i)) != null) {
                if (!cfor.f2719do.equals(resources.getConfiguration()) || (!(theme == null && cfor.f2717do == 0) && (theme == null || cfor.f2717do != theme.hashCode()))) {
                    sparseArray.remove(i);
                } else {
                    colorStateList2 = cfor.f2718do;
                }
            }
            colorStateList2 = null;
        }
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        ThreadLocal<TypedValue> threadLocal = Oz.f2712do;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (!(i2 >= 28 && i2 <= 31)) {
            try {
                colorStateList = F8.m583do(resources, resources.getXml(i), theme);
            } catch (Exception unused) {
            }
        }
        if (colorStateList == null) {
            return Build.VERSION.SDK_INT >= 23 ? Oz.Cif.m1729if(resources, i, theme) : resources.getColorStateList(i);
        }
        Oz.m1721do(cnew, i, colorStateList, theme);
        return colorStateList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0061, code lost:
    
        if (r2 != null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006e, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x005a, code lost:
    
        r1 = r3.getAttributeValue(null, "application_locales");
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x006c, code lost:
    
        if (r2 == null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Context getContextForLanguage(android.content.Context r8) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r0 < r1) goto L20
            java.lang.String r0 = "locale"
            java.lang.Object r0 = r8.getSystemService(r0)
            if (r0 == 0) goto L1d
            android.os.LocaleList r0 = defpackage.C0219Fq.m633do(r0)
            Bq r1 = new Bq
            Eq r2 = new Eq
            r2.<init>(r0)
            r1.<init>(r2)
            goto L84
        L1d:
            Bq r1 = defpackage.C0131Bq.f288do
            goto L84
        L20:
            java.lang.Object r0 = defpackage.C2845h2.f13238do
            monitor-enter(r0)
            java.lang.String r1 = ""
            java.lang.String r2 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.io.FileInputStream r2 = r8.openFileInput(r2)     // Catch: java.io.FileNotFoundException -> L7f java.lang.Throwable -> Lb8
            org.xmlpull.v1.XmlPullParser r3 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L6b
            java.lang.String r4 = "UTF-8"
            r3.setInput(r2, r4)     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L6b
            int r4 = r3.getDepth()     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L6b
        L38:
            int r5 = r3.next()     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L6b
            r6 = 1
            if (r5 == r6) goto L61
            r6 = 3
            if (r5 != r6) goto L48
            int r7 = r3.getDepth()     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L6b
            if (r7 <= r4) goto L61
        L48:
            if (r5 == r6) goto L38
            r6 = 4
            if (r5 != r6) goto L4e
            goto L38
        L4e:
            java.lang.String r5 = r3.getName()     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L6b
            java.lang.String r6 = "locales"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L6b
            if (r5 == 0) goto L38
            java.lang.String r4 = "application_locales"
            r5 = 0
            java.lang.String r1 = r3.getAttributeValue(r5, r4)     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L6b
        L61:
            if (r2 == 0) goto L71
            goto L6e
        L64:
            r8 = move-exception
            if (r2 == 0) goto L6a
            r2.close()     // Catch: java.io.IOException -> L6a java.lang.Throwable -> Lb8
        L6a:
            throw r8     // Catch: java.lang.Throwable -> Lb8
        L6b:
            if (r2 == 0) goto L71
        L6e:
            r2.close()     // Catch: java.io.IOException -> L71 java.lang.Throwable -> Lb8
        L71:
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> Lb8
            if (r2 != 0) goto L78
            goto L7d
        L78:
            java.lang.String r2 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            r8.deleteFile(r2)     // Catch: java.lang.Throwable -> Lb8
        L7d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb8
            goto L80
        L7f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb8
        L80:
            Bq r1 = defpackage.C0131Bq.m227if(r1)
        L84:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 32
            if (r0 > r2) goto Lb7
            boolean r2 = r1.m229new()
            if (r2 != 0) goto Lb7
            android.content.res.Configuration r2 = new android.content.res.Configuration
            android.content.res.Resources r3 = r8.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
            r2.<init>(r3)
            r3 = 24
            if (r0 < r3) goto La5
            defpackage.Q9.m1833if(r2, r1)
            goto Lb3
        La5:
            boolean r0 = r1.m229new()
            if (r0 != 0) goto Lb3
            r0 = 0
            java.util.Locale r0 = r1.m228for(r0)
            r2.setLocale(r0)
        Lb3:
            android.content.Context r8 = r8.createConfigurationContext(r2)
        Lb7:
            return r8
        Lb8:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb8
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0466Ra.getContextForLanguage(android.content.Context):android.content.Context");
    }

    public static File getDataDir(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Cfor.m2049if(context);
        }
        String str = context.getApplicationInfo().dataDir;
        if (str != null) {
            return new File(str);
        }
        return null;
    }

    public static Display getDisplayOrDefault(Context context) {
        return Build.VERSION.SDK_INT >= 30 ? Ccase.m2041for(context) : ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    public static Drawable getDrawable(Context context, int i) {
        return Cdo.m2045if(context, i);
    }

    public static File[] getExternalCacheDirs(Context context) {
        return context.getExternalCacheDirs();
    }

    public static File[] getExternalFilesDirs(Context context, String str) {
        return context.getExternalFilesDirs(str);
    }

    public static Executor getMainExecutor(Context context) {
        return Build.VERSION.SDK_INT >= 28 ? Ctry.m2055do(context) : new ExecutorC0275Ig(new Handler(context.getMainLooper()));
    }

    public static File getNoBackupFilesDir(Context context) {
        return Cdo.m2044for(context);
    }

    public static File[] getObbDirs(Context context) {
        return context.getObbDirs();
    }

    public static String getString(Context context, int i) {
        return getContextForLanguage(context).getString(i);
    }

    public static <T> T getSystemService(Context context, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 23) {
            return (T) Cif.m2052if(context, cls);
        }
        String systemServiceName = getSystemServiceName(context, cls);
        if (systemServiceName != null) {
            return (T) context.getSystemService(systemServiceName);
        }
        return null;
    }

    public static String getSystemServiceName(Context context, Class<?> cls) {
        return Build.VERSION.SDK_INT >= 23 ? Cif.m2051for(context, cls) : Cgoto.f3188do.get(cls);
    }

    public static boolean isDeviceProtectedStorage(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Cfor.m2048for(context);
        }
        return false;
    }

    public static String obtainAndCheckReceiverPermission(Context context) {
        String str = context.getPackageName() + DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION_SUFFIX;
        if (C3645ro.m7992class(context, str) == 0) {
            return str;
        }
        throw new RuntimeException(defpackage.Cif.m6908case("Permission ", str, " is required by your application to receive broadcasts, please add it to your manifest"));
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return registerReceiver(context, broadcastReceiver, intentFilter, null, null, i);
    }

    public static boolean startActivities(Context context, Intent[] intentArr) {
        return startActivities(context, intentArr, null);
    }

    public static void startActivity(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, bundle);
    }

    public static void startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            Cnew.m2054if(context, intent);
        } else {
            context.startService(intent);
        }
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        int i2 = i & 1;
        if (i2 != 0 && (i & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED");
        }
        if (i2 != 0) {
            i |= 2;
        }
        int i3 = i;
        int i4 = i3 & 2;
        if (i4 == 0 && (i3 & 4) == 0) {
            throw new IllegalArgumentException("One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required");
        }
        if (i4 != 0 && (i3 & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED");
        }
        int i5 = Build.VERSION.SDK_INT;
        return i5 >= 33 ? Celse.m2046do(context, broadcastReceiver, intentFilter, str, handler, i3) : i5 >= 26 ? Cnew.m2053do(context, broadcastReceiver, intentFilter, str, handler, i3) : ((i3 & 4) == 0 || str != null) ? context.registerReceiver(broadcastReceiver, intentFilter, str, handler) : context.registerReceiver(broadcastReceiver, intentFilter, obtainAndCheckReceiverPermission(context), handler);
    }

    public static boolean startActivities(Context context, Intent[] intentArr, Bundle bundle) {
        context.startActivities(intentArr, bundle);
        return true;
    }
}
