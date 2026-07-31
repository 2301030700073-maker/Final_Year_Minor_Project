package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.appsflyer.AppsFlyerProperties;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.wrappers.Wrappers;
import io.sentry.protocol.OperatingSystem;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbwf implements zzbwh {
    public static zzbwh zza;
    static zzbwh zzb;
    static zzbwh zzc;
    static Boolean zzd;
    private static final Object zze = new Object();
    private final Object zzf;
    private final Context zzg;
    private final WeakHashMap zzh;
    private final ExecutorService zzi;
    private final VersionInfoParcel zzj;
    private final PackageInfo zzk;
    private final String zzl;
    private final String zzm;
    private final AtomicBoolean zzn;
    private boolean zzo;
    private Set zzp;

    /* JADX WARN: Removed duplicated region for block: B:14:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected zzbwf(android.content.Context r3, com.google.android.gms.ads.internal.util.client.VersionInfoParcel r4) {
        /*
            r2 = this;
            r2.<init>()
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r2.zzf = r0
            java.util.WeakHashMap r0 = new java.util.WeakHashMap
            r0.<init>()
            r2.zzh = r0
            com.google.android.gms.internal.ads.zzfuy.zza()
            java.util.concurrent.ExecutorService r0 = java.util.concurrent.Executors.newCachedThreadPool()
            java.util.concurrent.ExecutorService r0 = java.util.concurrent.Executors.unconfigurableExecutorService(r0)
            r2.zzi = r0
            java.util.concurrent.atomic.AtomicBoolean r0 = new java.util.concurrent.atomic.AtomicBoolean
            r0.<init>()
            r2.zzn = r0
            android.content.Context r0 = r3.getApplicationContext()
            if (r0 == 0) goto L2f
            android.content.Context r3 = r3.getApplicationContext()
        L2f:
            r2.zzg = r3
            r2.zzj = r4
            com.google.android.gms.internal.ads.zzbel r4 = com.google.android.gms.internal.ads.zzbeu.zziE
            com.google.android.gms.internal.ads.zzbes r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r0.zzd(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            r0 = 0
            if (r4 == 0) goto L61
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            if (r3 == 0) goto L61
            android.content.pm.ApplicationInfo r4 = r3.getApplicationInfo()
            if (r4 != 0) goto L51
            goto L61
        L51:
            com.google.android.gms.common.wrappers.PackageManagerWrapper r4 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L61
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L61
            java.lang.String r3 = r3.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L61
            r1 = 0
            android.content.pm.PackageInfo r3 = r4.getPackageInfo(r3, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L61
            goto L62
        L61:
            r3 = r0
        L62:
            r2.zzk = r3
            com.google.android.gms.internal.ads.zzbel r3 = com.google.android.gms.internal.ads.zzbeu.zzis
            com.google.android.gms.internal.ads.zzbes r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r4.zzd(r3)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            java.lang.String r1 = "unknown"
            if (r4 == 0) goto L83
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            java.util.Locale r4 = java.util.Locale.getDefault()
            java.lang.String r4 = r4.getCountry()
            goto L84
        L83:
            r4 = r1
        L84:
            r2.zzl = r4
            com.google.android.gms.internal.ads.zzbes r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r4.zzd(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto Lb3
            android.content.Context r3 = r2.zzg
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            if (r3 != 0) goto L9d
            goto Lb4
        L9d:
            com.google.android.gms.common.wrappers.PackageManagerWrapper r3 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb4
            java.lang.String r4 = "com.android.vending"
            r1 = 128(0x80, float:1.8E-43)
            android.content.pm.PackageInfo r3 = r3.getPackageInfo(r4, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb4
            if (r3 != 0) goto Lac
            goto Lb4
        Lac:
            int r3 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb4
            java.lang.String r0 = java.lang.Integer.toString(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb4
            goto Lb4
        Lb3:
            r0 = r1
        Lb4:
            r2.zzm = r0
            com.google.android.gms.internal.ads.zzbel r3 = com.google.android.gms.internal.ads.zzbeu.zzio
            com.google.android.gms.internal.ads.zzbes r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r4.zzd(r3)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            if (r3 <= 0) goto Lcf
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            r2.zzp = r3
        Lcf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbwf.<init>(android.content.Context, com.google.android.gms.ads.internal.util.client.VersionInfoParcel):void");
    }

    public static zzbwh zza(Context context) {
        synchronized (zze) {
            if (zza == null) {
                if (zzj(context)) {
                    zza = new zzbwf(context, VersionInfoParcel.forPackage());
                } else {
                    zza = new zzbwg();
                }
            }
        }
        return zza;
    }

    public static zzbwh zzb(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (zze) {
            if (zzc == null) {
                boolean z = false;
                if (((Boolean) zzbgm.zzc.zze()).booleanValue()) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzim)).booleanValue() || ((Boolean) zzbgm.zza.zze()).booleanValue()) {
                        z = true;
                    }
                }
                if (zzj(context)) {
                    zzbwf zzbwfVar = new zzbwf(context, versionInfoParcel);
                    zzbwfVar.zzl();
                    zzbwfVar.zzk();
                    zzc = zzbwfVar;
                } else if (!z || context == null) {
                    zzc = new zzbwg();
                } else {
                    zzbwf zzbwfVar2 = new zzbwf(context, versionInfoParcel, true);
                    zzbwfVar2.zzl();
                    zzbwfVar2.zzk();
                    zzc = zzbwfVar2;
                }
            }
        }
        return zzc;
    }

    public static zzbwh zzc(Context context) {
        synchronized (zze) {
            if (zzb == null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzin)).booleanValue()) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzim)).booleanValue()) {
                        zzb = new zzbwf(context, VersionInfoParcel.forPackage());
                    }
                }
                zzb = new zzbwg();
            }
        }
        return zzb;
    }

    public static zzbwh zzd(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (zze) {
            if (zzb == null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzin)).booleanValue()) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzim)).booleanValue()) {
                        zzb = new zzbwf(context, versionInfoParcel);
                    }
                }
                zzb = new zzbwg();
            }
        }
        return zzb;
    }

    public static String zze(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String zzf(Throwable th) {
        return zzgmu.zza(com.google.android.gms.ads.internal.util.client.zzf.zzg(zze(th)));
    }

    private static boolean zzj(Context context) {
        if (context == null) {
            return false;
        }
        synchronized (zze) {
            if (zzd == null) {
                zzd = Boolean.valueOf(com.google.android.gms.ads.internal.client.zzbb.zze().nextInt(100) < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zznK)).intValue());
            }
        }
        if (zzd.booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzim)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    private final void zzk() {
        Thread.setDefaultUncaughtExceptionHandler(new zzbwc(this, Thread.getDefaultUncaughtExceptionHandler()));
    }

    private final void zzl() {
        Thread thread = Looper.getMainLooper().getThread();
        if (thread == null) {
            return;
        }
        synchronized (this.zzf) {
            this.zzh.put(thread, true);
        }
        thread.setUncaughtExceptionHandler(new zzbwd(this, thread.getUncaughtExceptionHandler()));
    }

    protected final void zzg(Thread thread, Throwable th) {
        if (th != null) {
            boolean z = false;
            boolean z2 = false;
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    z |= com.google.android.gms.ads.internal.util.client.zzf.zzo(stackTraceElement.getClassName());
                    z2 |= getClass().getName().equals(stackTraceElement.getClassName());
                }
            }
            int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzio)).intValue();
            if (intValue > 0) {
                if (this.zzp.size() >= intValue) {
                    return;
                }
                String zzf = zzf(th);
                if (this.zzp.contains(zzf)) {
                    return;
                } else {
                    this.zzp.add(zzf);
                }
            }
            if (!z || z2) {
                return;
            }
            if (!this.zzo) {
                zzh(th, "");
            }
            if (this.zzn.getAndSet(true) || !((Boolean) zzbgm.zzc.zze()).booleanValue()) {
                return;
            }
            zzbef.zzb(this.zzg);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzh(Throwable th, String str) {
        if (this.zzo) {
            return;
        }
        zzi(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzbwh
    public final void zzi(Throwable th, String str, float f) {
        Throwable th2;
        String str2;
        PackageInfo packageInfo;
        ActivityManager.MemoryInfo zze2;
        if (this.zzo) {
            return;
        }
        Handler handler = com.google.android.gms.ads.internal.util.client.zzf.zza;
        boolean z = false;
        if (((Boolean) zzbhd.zze.zze()).booleanValue()) {
            th2 = th;
        } else {
            LinkedList linkedList = new LinkedList();
            for (Throwable th3 = th; th3 != null; th3 = th3.getCause()) {
                linkedList.push(th3);
            }
            th2 = null;
            while (!linkedList.isEmpty()) {
                Throwable th4 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th4.getStackTrace();
                boolean z2 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcH)).booleanValue() && stackTrace != null && stackTrace.length == 0 && com.google.android.gms.ads.internal.util.client.zzf.zzo(th4.getClass().getName());
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th4.getClass().getName(), "<filtered>", "<filtered>", 1));
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (com.google.android.gms.ads.internal.util.client.zzf.zzo(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        z2 = true;
                    } else {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                            arrayList.add(stackTraceElement);
                        } else {
                            arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                        }
                    }
                }
                if (z2) {
                    th2 = th2 == null ? new Throwable(th4.getMessage()) : new Throwable(th4.getMessage(), th2);
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
            }
        }
        if (th2 != null) {
            String name = th.getClass().getName();
            String zze3 = zze(th);
            String zzf = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjI)).booleanValue() ? zzf(th) : "";
            double d = f;
            double random = Math.random();
            int i = f > 0.0f ? (int) (1.0f / f) : 1;
            if (random < d) {
                ArrayList<String> arrayList2 = new ArrayList();
                try {
                    z = Wrappers.packageManager(this.zzg).isCallerInstantApp();
                } catch (Throwable th5) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Error fetching instant app info", th5);
                }
                try {
                    str2 = this.zzg.getPackageName();
                } catch (Throwable unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Cannot obtain package name, proceeding.");
                    str2 = "unknown";
                }
                Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter(OperatingSystem.TYPE, Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
                String str3 = Build.MANUFACTURER;
                String str4 = Build.MODEL;
                if (!str4.startsWith(str3)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
                    sb.append(str3);
                    sb.append(" ");
                    sb.append(str4);
                    str4 = sb.toString();
                }
                Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("device", str4);
                VersionInfoParcel versionInfoParcel = this.zzj;
                Uri.Builder appendQueryParameter3 = appendQueryParameter2.appendQueryParameter("js", versionInfoParcel.afmaVersion).appendQueryParameter(AppsFlyerProperties.APP_ID, str2).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", zze3).appendQueryParameter("eids", TextUtils.join(",", com.google.android.gms.ads.internal.client.zzbd.zzb().zze())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "811902923").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzbhd.zzc.zze()));
                Context context = this.zzg;
                Uri.Builder appendQueryParameter4 = appendQueryParameter3.appendQueryParameter("gmscv", String.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(context)));
                boolean z3 = versionInfoParcel.isLiteSdk;
                String str5 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                Uri.Builder appendQueryParameter5 = appendQueryParameter4.appendQueryParameter("lite", true != z3 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1");
                if (!TextUtils.isEmpty(zzf)) {
                    appendQueryParameter5.appendQueryParameter("hash", zzf);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzit)).booleanValue() && (zze2 = com.google.android.gms.ads.internal.util.client.zzf.zze(context)) != null) {
                    appendQueryParameter5.appendQueryParameter("available_memory", Long.toString(zze2.availMem));
                    appendQueryParameter5.appendQueryParameter("total_memory", Long.toString(zze2.totalMem));
                    if (true == zze2.lowMemory) {
                        str5 = "1";
                    }
                    appendQueryParameter5.appendQueryParameter("is_low_memory", str5);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzis)).booleanValue()) {
                    String str6 = this.zzl;
                    if (!TextUtils.isEmpty(str6)) {
                        appendQueryParameter5.appendQueryParameter("countrycode", str6);
                    }
                    String str7 = this.zzm;
                    if (!TextUtils.isEmpty(str7)) {
                        appendQueryParameter5.appendQueryParameter("psv", str7);
                    }
                    if (Build.VERSION.SDK_INT >= 26) {
                        packageInfo = WebView.getCurrentWebViewPackage();
                    } else {
                        if (context != null) {
                            try {
                                packageInfo = Wrappers.packageManager(context).getPackageInfo("com.android.webview", 128);
                            } catch (PackageManager.NameNotFoundException unused2) {
                            }
                        }
                        packageInfo = null;
                    }
                    if (packageInfo != null) {
                        appendQueryParameter5.appendQueryParameter("wvvc", Integer.toString(packageInfo.versionCode));
                        appendQueryParameter5.appendQueryParameter("wvvn", packageInfo.versionName);
                        appendQueryParameter5.appendQueryParameter("wvpn", packageInfo.packageName);
                    }
                }
                PackageInfo packageInfo2 = this.zzk;
                if (packageInfo2 != null) {
                    appendQueryParameter5.appendQueryParameter("appvc", String.valueOf(packageInfo2.versionCode));
                    appendQueryParameter5.appendQueryParameter("appvn", packageInfo2.versionName);
                }
                arrayList2.add(appendQueryParameter5.toString());
                for (final String str8 : arrayList2) {
                    final com.google.android.gms.ads.internal.util.client.zzu zzuVar = new com.google.android.gms.ads.internal.util.client.zzu(this.zzg, null);
                    this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbwe
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            com.google.android.gms.ads.internal.util.client.zzu.this.zzc(str8, null);
                        }
                    });
                }
            }
        }
    }

    protected zzbwf(Context context, VersionInfoParcel versionInfoParcel, boolean z) {
        this(context, versionInfoParcel);
        this.zzo = true;
    }
}
