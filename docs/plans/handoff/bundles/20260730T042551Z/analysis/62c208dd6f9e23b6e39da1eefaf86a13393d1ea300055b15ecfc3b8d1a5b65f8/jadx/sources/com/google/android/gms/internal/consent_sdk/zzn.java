package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import defpackage.C3631ra;
import defpackage.C3808ua;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
final class zzn {
    private final zzl zza;
    private final Activity zzb;
    private final C3631ra zzc;
    private final C3808ua zzd;

    public /* synthetic */ zzn(zzl zzlVar, Activity activity, C3631ra c3631ra, C3808ua c3808ua, zzm zzmVar) {
        this.zza = zzlVar;
        this.zzb = activity;
        this.zzc = c3631ra;
        this.zzd = c3808ua;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v38, types: [java.util.List] */
    public static zzcf zza(zzn zznVar) {
        Bundle bundle;
        String string;
        Application application;
        Application application2;
        ArrayList arrayList;
        zzam zzamVar;
        Application application3;
        Application application4;
        Application application5;
        List<Rect> boundingRects;
        List list;
        Application application6;
        PackageInfo packageInfo;
        Application application7;
        Application application8;
        Application application9;
        zzcf zzcfVar = new zzcf();
        zznVar.zzd.getClass();
        if (TextUtils.isEmpty(null)) {
            try {
                application = zznVar.zza.zza;
                PackageManager packageManager = application.getPackageManager();
                application2 = zznVar.zza.zza;
                bundle = packageManager.getApplicationInfo(application2.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                bundle = null;
            }
            string = bundle != null ? bundle.getString("com.google.android.gms.ads.APPLICATION_ID") : null;
            if (TextUtils.isEmpty(string)) {
                throw new zzg(3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
            }
        } else {
            string = null;
        }
        zzcfVar.zza = string;
        if (zznVar.zzc.f15294do) {
            ArrayList arrayList2 = new ArrayList();
            zznVar.zzc.getClass();
            arrayList2.add(zzca.PREVIEWING_DEBUG_MESSAGES);
            arrayList = arrayList2;
        } else {
            arrayList = Collections.emptyList();
        }
        zzcfVar.zzi = arrayList;
        zzamVar = zznVar.zza.zzb;
        zzcfVar.zze = zzamVar.zzc();
        zzcfVar.zzd = Boolean.valueOf(zznVar.zzd.f15899do);
        zzcfVar.zzc = Locale.getDefault().toLanguageTag();
        zzcb zzcbVar = new zzcb();
        int i = Build.VERSION.SDK_INT;
        zzcbVar.zzb = Integer.valueOf(i);
        zzcbVar.zza = Build.MODEL;
        zzcbVar.zzc = 2;
        zzcfVar.zzb = zzcbVar;
        application3 = zznVar.zza.zza;
        Configuration configuration = application3.getResources().getConfiguration();
        application4 = zznVar.zza.zza;
        application4.getResources().getConfiguration();
        zzcd zzcdVar = new zzcd();
        zzcdVar.zza = Integer.valueOf(configuration.screenWidthDp);
        zzcdVar.zzb = Integer.valueOf(configuration.screenHeightDp);
        application5 = zznVar.zza.zza;
        zzcdVar.zzc = Double.valueOf(application5.getResources().getDisplayMetrics().density);
        if (i < 28) {
            list = Collections.emptyList();
        } else {
            Activity activity = zznVar.zzb;
            Window window = activity == null ? null : activity.getWindow();
            View decorView = window == null ? null : window.getDecorView();
            WindowInsets rootWindowInsets = decorView == null ? null : decorView.getRootWindowInsets();
            DisplayCutout displayCutout = rootWindowInsets == null ? null : rootWindowInsets.getDisplayCutout();
            if (displayCutout == null) {
                list = Collections.emptyList();
            } else {
                displayCutout.getSafeInsetBottom();
                ArrayList arrayList3 = new ArrayList();
                boundingRects = displayCutout.getBoundingRects();
                for (Rect rect : boundingRects) {
                    if (rect != null) {
                        zzcc zzccVar = new zzcc();
                        zzccVar.zzb = Integer.valueOf(rect.left);
                        zzccVar.zzc = Integer.valueOf(rect.right);
                        zzccVar.zza = Integer.valueOf(rect.top);
                        zzccVar.zzd = Integer.valueOf(rect.bottom);
                        arrayList3.add(zzccVar);
                    }
                }
                list = arrayList3;
            }
        }
        zzcdVar.zzd = list;
        zzcfVar.zzf = zzcdVar;
        zzl zzlVar = zznVar.zza;
        application6 = zzlVar.zza;
        try {
            application9 = zzlVar.zza;
            packageInfo = application9.getPackageManager().getPackageInfo(application6.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused2) {
            packageInfo = null;
        }
        zzbz zzbzVar = new zzbz();
        zzbzVar.zza = application6.getPackageName();
        application7 = zznVar.zza.zza;
        PackageManager packageManager2 = application7.getPackageManager();
        application8 = zznVar.zza.zza;
        CharSequence applicationLabel = packageManager2.getApplicationLabel(application8.getApplicationInfo());
        zzbzVar.zzb = applicationLabel != null ? applicationLabel.toString() : null;
        if (packageInfo != null) {
            zzbzVar.zzc = Long.toString(Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode);
        }
        zzcfVar.zzg = zzbzVar;
        zzce zzceVar = new zzce();
        zzceVar.zza = "3.1.0";
        zzcfVar.zzh = zzceVar;
        return zzcfVar;
    }
}
