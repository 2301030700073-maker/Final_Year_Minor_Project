package com.google.android.gms.ads.internal.util;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbdm;
import com.google.android.gms.internal.ads.zzbeu;
import com.google.android.gms.internal.ads.zzbvu;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzceo;
import com.google.android.gms.internal.ads.zzcga;
import com.google.android.gms.internal.ads.zzcgq;
import com.google.android.gms.internal.ads.zzdoz;
import com.google.android.gms.internal.ads.zzdrv;
import com.google.android.gms.internal.ads.zzdrw;
import com.google.android.gms.internal.ads.zzfbo;
import com.google.android.gms.internal.ads.zzfbr;
import com.google.android.gms.internal.ads.zzfqw;
import com.google.android.gms.internal.ads.zzfty;
import com.google.android.gms.internal.ads.zzfvc;
import com.google.android.gms.internal.ads.zzfve;
import com.google.android.gms.internal.ads.zzgch;
import com.google.android.gms.internal.ads.zzhfk;
import defpackage.C0466Ra;
import defpackage.C0756bV;
import defpackage.C3572qV;
import defpackage.C3928wc;
import defpackage.C3984xV;
import defpackage.Creturn;
import defpackage.InterfaceFutureC3942wq;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzs {
    public static final zzfqw zza = new zzf(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9845do;

    /* renamed from: if, reason: not valid java name */
    public volatile String f9852if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference f9848do = new AtomicReference(null);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final AtomicReference f9853if = new AtomicReference(null);

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference f9850for = new AtomicReference(new Bundle());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f9847do = new AtomicBoolean();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9849do = true;

    /* renamed from: do, reason: not valid java name */
    public final Object f9844do = new Object();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9854if = false;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f9851for = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f9846do = Executors.newSingleThreadExecutor();

    /* renamed from: do, reason: not valid java name */
    public static String m5576do(Bundle bundle) {
        if (bundle == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return !TextUtils.isEmpty(string) ? (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: for, reason: not valid java name */
    public static final String m5577for(final Context context, String str) {
        String str2;
        String str3;
        if (str == null) {
            return m5579new();
        }
        try {
            zzcg zza2 = zzcg.zza();
            if (TextUtils.isEmpty(zza2.f9799do)) {
                if (ClientLibraryUtils.isPackageSide()) {
                    str3 = (String) zzcd.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzce
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            Context context2 = context;
                            SharedPreferences sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                            String string = sharedPreferences.getString("user_agent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            if (!TextUtils.isEmpty(string)) {
                                zze.zza("User agent is already initialized on Google Play Services.");
                                return string;
                            }
                            zze.zza("User agent is not initialized on Google Play Services. Initializing.");
                            String defaultUserAgent = WebSettings.getDefaultUserAgent(context2);
                            SharedPreferencesUtils.publishWorldReadableSharedPreferences(context2, sharedPreferences.edit().putString("user_agent", defaultUserAgent), "admob_user_agent");
                            return defaultUserAgent;
                        }
                    });
                } else {
                    final Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
                    str3 = (String) zzcd.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzcf
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            SharedPreferences sharedPreferences;
                            Context context2 = remoteContext;
                            Context context3 = context;
                            boolean z = false;
                            if (context2 != null) {
                                zze.zza("Attempting to read user agent from Google Play Services.");
                                sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                            } else {
                                zze.zza("Attempting to read user agent from local cache.");
                                sharedPreferences = context3.getSharedPreferences("admob_user_agent", 0);
                                z = true;
                            }
                            String string = sharedPreferences.getString("user_agent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            if (TextUtils.isEmpty(string)) {
                                zze.zza("Reading user agent from WebSettings");
                                string = WebSettings.getDefaultUserAgent(context3);
                                if (z) {
                                    sharedPreferences.edit().putString("user_agent", string).apply();
                                    zze.zza("Persisting user agent.");
                                }
                            }
                            return string;
                        }
                    });
                }
                zza2.f9799do = str3;
            }
            str2 = zza2.f9799do;
        } catch (Exception unused) {
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = WebSettings.getDefaultUserAgent(context);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = m5579new();
        }
        String m7982new = Creturn.m7982new(str2, " (Mobile; ", str);
        try {
            if (Wrappers.packageManager(context).isCallerInstantApp()) {
                m7982new = m7982new + ";aia";
            }
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdUtil.getUserAgent");
        }
        return m7982new.concat(")");
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m5578if(String str, AtomicReference atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern pattern = (Pattern) atomicReference.get();
            if (pattern == null || !str2.equals(pattern.pattern())) {
                pattern = Pattern.compile(str2);
                atomicReference.set(pattern);
            }
            return pattern.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static final String m5579new() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    public static final zzbr zzA(Context context) {
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzo.zzg("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            return queryLocalInterface instanceof zzbr ? (zzbr) queryLocalInterface : new zzbp(iBinder);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static final boolean zzB(Context context, String str) {
        Context zza2 = zzbvu.zza(context);
        return Wrappers.packageManager(zza2).checkPermission(str, zza2.getPackageName()) == 0;
    }

    public static final boolean zzC(Context context) {
        try {
            return DeviceProperties.isBstar(context);
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public static final boolean zzD(String str) {
        if (!com.google.android.gms.ads.internal.util.client.zzl.zzk()) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeY)).booleanValue()) {
            return false;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfa);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeZ);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean zzE(Context context) {
        if (context == null) {
            return false;
        }
        Object systemService = context.getSystemService("keyguard");
        KeyguardManager keyguardManager = (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
        return keyguardManager != null && keyguardManager.isKeyguardLocked();
    }

    public static final boolean zzF(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            zzo.zzh("Error loading class.", th);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static final boolean zzG() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    public static final boolean zzH(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && (powerManager = (PowerManager) context.getSystemService("power")) != null) {
                        return !powerManager.isScreenOn();
                    }
                    return true;
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static final boolean zzI(Context context) {
        Bundle bundle;
        try {
            try {
                bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (RemoteException unused) {
                return false;
            }
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zze.zzb("Error getting metadata", e);
            bundle = null;
        }
        String string = bundle.getString("com.google.android.gms.ads.INTEGRATION_MANAGER");
        if (TextUtils.isEmpty(m5576do(bundle))) {
            return !TextUtils.isEmpty(string);
        }
        return false;
    }

    public static final boolean zzJ(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static final void zzK(View view, int i, MotionEvent motionEvent) {
        String str;
        int i2;
        int i3;
        int i4;
        String str2;
        zzfbo zzD;
        zzfbr zzR;
        View view2 = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view.getContext().getPackageName();
            if (view2 instanceof zzdoz) {
                view2 = ((zzdoz) view2).getChildAt(0);
            }
            if ((view2 instanceof com.google.android.gms.ads.formats.zzj) || (view2 instanceof NativeAdView)) {
                str = "NATIVE";
                i2 = 1;
            } else {
                str = "UNKNOWN";
                i2 = 0;
            }
            if (view2.getLocalVisibleRect(rect)) {
                i4 = rect.width();
                i3 = rect.height();
            } else {
                i3 = 0;
                i4 = 0;
            }
            com.google.android.gms.ads.internal.zzv.zzq();
            long zzx = zzx(view2);
            view2.getLocationOnScreen(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            boolean z = view2 instanceof zzcga;
            String str3 = IntegrityManager.INTEGRITY_TYPE_NONE;
            if (!z || (zzR = ((zzcga) view2).zzR()) == null) {
                str2 = IntegrityManager.INTEGRITY_TYPE_NONE;
            } else {
                str2 = zzR.zzb;
                view2.setContentDescription(str2 + CertificateUtil.DELIMITER + view2.hashCode());
            }
            if ((view2 instanceof zzceo) && (zzD = ((zzceo) view2).zzD()) != null) {
                str = zzfbo.zza(zzD.zzb);
                i2 = zzD.zze;
                str3 = zzD.zzE;
            }
            zzo.zzi(String.format(Locale.US, "<Ad hashCode=%d, package=%s, adNetCls=%s, gwsQueryId=%s, format=%s, impType=%d, class=%s, x=%d, y=%d, width=%d, height=%d, vWidth=%d, vHeight=%d, alpha=%d, state=%s>", Integer.valueOf(view2.hashCode()), packageName, str3, str2, str, Integer.valueOf(i2), view2.getClass().getName(), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(view2.getWidth()), Integer.valueOf(view2.getHeight()), Integer.valueOf(i4), Integer.valueOf(i3), Long.valueOf(zzx), Integer.toString(i, 2)));
        } catch (Exception e) {
            zzo.zzh("Failure getting view location.", e);
        }
    }

    public static final AlertDialog.Builder zzL(Context context) {
        com.google.android.gms.ads.internal.zzv.zzr();
        return new AlertDialog.Builder(context, R.style.Theme.Material.Dialog.Alert);
    }

    public static final void zzM(Context context, String str, String str2) {
        new zzbw(context, str, str2, null, null).zzb();
    }

    public static final void zzN(Context context, Throwable th) {
        if (context == null) {
            return;
        }
        try {
            if (((Boolean) zzbeu.zzb.zze()).booleanValue()) {
                CrashUtils.addDynamiteErrorToDropBox(context, th);
            }
        } catch (IllegalStateException unused) {
        }
    }

    public static final int zzO(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            zzo.zzj("Could not parse value:".concat(e.toString()));
            return 0;
        }
    }

    public static final Map zzP(Uri uri) {
        String encodedQuery;
        if (uri == null) {
            return null;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzp)).booleanValue()) {
            HashMap hashMap = new HashMap();
            for (String str : uri.getQueryParameterNames()) {
                if (!TextUtils.isEmpty(str)) {
                    hashMap.put(str, uri.getQueryParameter(str));
                }
            }
            return hashMap;
        }
        HashMap hashMap2 = new HashMap();
        if (!uri.isOpaque() && (encodedQuery = uri.getEncodedQuery()) != null) {
            int i = 0;
            while (true) {
                int indexOf = encodedQuery.indexOf(38, i);
                int length = encodedQuery.length();
                if (indexOf != -1) {
                    length = indexOf;
                }
                int indexOf2 = encodedQuery.indexOf(61, i);
                if (indexOf2 > length || indexOf2 == -1) {
                    indexOf2 = length;
                }
                hashMap2.put(Uri.decode(encodedQuery.substring(i, indexOf2)), indexOf2 == length ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : Uri.decode(encodedQuery.substring(indexOf2 + 1, length)));
                if (indexOf == -1) {
                    break;
                }
                i = indexOf + 1;
            }
        }
        return hashMap2;
    }

    public static final int[] zzQ(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? new int[]{0, 0} : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    public static final int[] zzR(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] iArr = (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? new int[]{0, 0} : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(activity, iArr[0]), com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(activity, iArr[1])};
    }

    public static final boolean zzS(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z = com.google.android.gms.ads.internal.zzv.zzq().f9849do || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || zzo(view);
        long zzx = zzx(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z)) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbu)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkv)).booleanValue()) {
                    return true;
                }
                if (zzx >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkx)).intValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final void zzT(Context context, Intent intent) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkS)).booleanValue()) {
            try {
                context.startActivity(intent);
                return;
            } catch (Throwable unused) {
                intent.addFlags(268435456);
                context.startActivity(intent);
                return;
            }
        }
        try {
            try {
                context.startActivity(intent);
            } catch (Throwable unused2) {
                intent.addFlags(268435456);
                context.startActivity(intent);
            }
        } catch (SecurityException e) {
            zzo.zzk(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdUtil.startActivityWithUnknownContext");
        }
    }

    public static final void zzU(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzp(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            zzo.zze("Opening " + uri.toString() + " in a new browser.");
        } catch (ActivityNotFoundException e) {
            zzo.zzh("No browser is found.", e);
        }
    }

    public static final int[] zzV(Activity activity) {
        int[] zzQ = zzQ(activity);
        return new int[]{com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(activity, zzQ[0]), com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(activity, zzQ[1])};
    }

    public static final boolean zzW(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        KeyguardManager keyguardManager = null;
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return zzS(view, powerManager, keyguardManager);
    }

    public static final void zzX(Context context, Intent intent, zzdrw zzdrwVar, String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmU)).booleanValue() || !(context instanceof zzcgq)) {
            zzT(context, intent);
            return;
        }
        try {
            Uri data = intent.getData();
            if (data != null && data.toString() != null) {
                if (data.toString().matches((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmW))) {
                    ((zzcgq) context).zzc(intent, 236);
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmV)).booleanValue() || zzdrwVar == null) {
                        return;
                    }
                    zzdrv zza2 = zzdrwVar.zza();
                    zza2.zzb(NativeProtocol.WEB_DIALOG_ACTION, "hila");
                    zza2.zzb("gqi", zzfve.zzc(str));
                    zza2.zzf();
                    return;
                }
            }
            zzT(context, intent);
        } catch (ActivityNotFoundException e) {
            e = e;
            zzo.zzh("Error occurred while starting activity for result", e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdUtil.startActivityForResult");
            zzT(context, intent);
        } catch (SecurityException e2) {
            e = e2;
            zzo.zzh("Error occurred while starting activity for result", e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdUtil.startActivityForResult");
            zzT(context, intent);
        } catch (Exception e3) {
            zzo.zzh("Error occurred while starting activity for result", e3);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e3, "AdUtil.startActivityForResult");
            zzT(context, intent);
        }
    }

    public static int zza(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i <= 0) {
            return 60000;
        }
        zzo.zzj("HTTP timeout too low: " + i + " milliseconds. Reverting to default timeout: 60000 milliseconds.");
        return 60000;
    }

    public static List zzd() {
        zzbcc zzbccVar = zzbcl.zza;
        List zzb = com.google.android.gms.ads.internal.client.zzbe.zza().zzb();
        ArrayList arrayList = new ArrayList();
        Iterator it = zzb.iterator();
        while (it.hasNext()) {
            Iterator it2 = zzfvc.zzb(zzfty.zzc(',')).zzd((String) it.next()).iterator();
            while (it2.hasNext()) {
                try {
                    arrayList.add(Long.valueOf((String) it2.next()));
                } catch (NumberFormatException unused) {
                    zze.zza("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    public static void zzh(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzbzw.zza.execute(runnable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean zzo(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 != 0) goto L9
        L7:
            r2 = r0
            goto L13
        L9:
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L7
            android.app.Activity r2 = (android.app.Activity) r2
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzs.zzo(android.view.View):boolean");
    }

    public static final void zzp(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        extras.putBinder("android.support.customtabs.extra.SESSION", null);
        extras.putString("com.android.browser.application_id", context.getPackageName());
        intent.putExtras(extras);
    }

    public static final String zzq(Context context) {
        Bundle bundle;
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        try {
            bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zze.zzb("Error getting metadata", e);
            bundle = null;
        }
        return m5576do(bundle);
    }

    public static final String zzs() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : Creturn.m7982new(str, " ", str2);
    }

    public static final Integer zzt(Context context) {
        Object systemService = context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
        if (systemService instanceof DisplayManager) {
            return Integer.valueOf(((DisplayManager) systemService).getDisplays().length);
        }
        return null;
    }

    public static final DisplayMetrics zzu(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static final Map zzw(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                HashSet hashSet = new HashSet();
                JSONArray optJSONArray = jSONObject.optJSONArray(next);
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        String optString = optJSONArray.optString(i);
                        if (optString != null) {
                            hashSet.add(optString);
                        }
                    }
                    hashMap.put(next, hashSet);
                }
            }
            return hashMap;
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdUtil.getMapOfFileNamesToKeysFromJsonString");
            return hashMap;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    public static final long zzx(View view) {
        float f = Float.MAX_VALUE;
        do {
            if (!(view instanceof View)) {
                break;
            }
            View view2 = (View) view;
            f = Math.min(f, view2.getAlpha());
            view = view2.getParent();
        } while (f > 0.0f);
        return Math.round((f >= 0.0f ? f : 0.0f) * 100.0f);
    }

    public static final WebResourceResponse zzy(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzv.zzq().zzc(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = (String) new zzbo(context).zzb(0, str2, hashMap, null).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzo.zzk("Could not fetch MRAID JS.", e);
        }
        return null;
    }

    public static final String zzz() {
        Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
        return zze != null ? zze.getString(com.google.android.gms.ads.impl.R.string.s7) : "Test Ad";
    }

    public final InterfaceFutureC3942wq zzb(final Uri uri) {
        return zzgch.zzj(new Callable() { // from class: com.google.android.gms.ads.internal.util.zzn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfqw zzfqwVar = zzs.zza;
                com.google.android.gms.ads.internal.zzv.zzq();
                return zzs.zzP(uri);
            }
        }, this.f9846do);
    }

    public final String zzc(Context context, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzle)).booleanValue()) {
            if (this.f9852if != null) {
                return this.f9852if;
            }
            this.f9852if = m5577for(context, str);
            return this.f9852if;
        }
        synchronized (this.f9844do) {
            String str2 = this.f9845do;
            if (str2 != null) {
                return str2;
            }
            String m5577for = m5577for(context, str);
            this.f9845do = m5577for;
            return m5577for;
        }
    }

    public final void zzf(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int zza2 = zza(i);
        zzo.zzi("HTTP timeout: " + zza2 + " milliseconds.");
        httpURLConnection.setConnectTimeout(zza2);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(zza2);
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty("User-Agent"))) {
            httpURLConnection.setRequestProperty("User-Agent", zzc(context, str));
        }
        httpURLConnection.setUseCaches(false);
    }

    public final void zzi(final Context context, final String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzv.zzq();
        bundle.putString("device", zzs());
        zzbcc zzbccVar = zzbcl.zza;
        bundle.putString("eids", TextUtils.join(",", com.google.android.gms.ads.internal.client.zzbe.zza().zza()));
        if (bundle.isEmpty()) {
            zzo.zze("Empty or null bundle.");
        } else {
            final String str3 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkt);
            boolean andSet = this.f9847do.getAndSet(true);
            AtomicReference atomicReference = this.f9850for;
            if (!andSet) {
                atomicReference.set(zzad.zza(context, str3, new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.ads.internal.util.zzm
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str4) {
                        zzs.this.f9850for.set(zzad.zzb(context, str3));
                    }
                }));
            }
            bundle.putAll((Bundle) atomicReference.get());
        }
        com.google.android.gms.ads.internal.client.zzbc.zzb();
        com.google.android.gms.ads.internal.util.client.zzf.zzw(context, str, "gmob-apps", bundle, true, new com.google.android.gms.ads.internal.util.client.zze() { // from class: com.google.android.gms.ads.internal.util.zzl
            @Override // com.google.android.gms.ads.internal.util.client.zze
            public final com.google.android.gms.ads.internal.util.client.zzt zza(String str4) {
                zzfqw zzfqwVar = zzs.zza;
                com.google.android.gms.ads.internal.zzv.zzq();
                zzs.zzM(context, str, str4);
                return com.google.android.gms.ads.internal.util.client.zzt.SUCCESS;
            }
        });
    }

    public final boolean zzj(String str) {
        return m5578if(str, this.f9848do, (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzao));
    }

    public final boolean zzk(String str) {
        return m5578if(str, this.f9853if, (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzap));
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean zzl(Context context) {
        if (this.f9851for) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        zzbcl.zza(context);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkR)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new C3572qV(), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new C3572qV(), intentFilter, 4);
        }
        this.f9851for = true;
        return true;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean zzm(Context context) {
        if (this.f9854if) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        zzbcl.zza(context);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkR)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new C3984xV(this), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new C3984xV(this), intentFilter, 4);
        }
        this.f9854if = true;
        return true;
    }

    public final int zzn(Context context, Uri uri) {
        if (context == null) {
            zze.zza("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (!(context instanceof Activity)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return 2;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeG)).booleanValue()) {
            C3928wc m8577do = new C3928wc.Cnew(com.google.android.gms.ads.internal.zzv.zzf().zza()).m8577do();
            String zza2 = zzhfk.zza(context);
            Intent intent2 = m8577do.f16367do;
            intent2.setPackage(zza2);
            intent2.setData(uri);
            C0466Ra.startActivity(context, intent2, m8577do.f16368do);
            return 5;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeE)).booleanValue()) {
            zzbdm zzbdmVar = new zzbdm();
            zzbdmVar.zze(new C0756bV(zzbdmVar, context, uri));
            zzbdmVar.zzb((Activity) context);
            return 5;
        }
        Intent intent3 = new Intent("android.intent.action.VIEW");
        intent3.setData(uri);
        intent3.addFlags(268435456);
        context.startActivity(intent3);
        return 9;
    }
}
