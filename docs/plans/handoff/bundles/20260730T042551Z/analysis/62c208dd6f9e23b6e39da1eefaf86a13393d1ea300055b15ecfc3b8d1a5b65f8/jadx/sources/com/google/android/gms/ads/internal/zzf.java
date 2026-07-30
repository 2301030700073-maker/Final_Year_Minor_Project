package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbnw;
import com.google.android.gms.internal.ads.zzboa;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzbog;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzbzz;
import com.google.android.gms.internal.ads.zzdrv;
import com.google.android.gms.internal.ads.zzdrw;
import com.google.android.gms.internal.ads.zzfgv;
import com.google.android.gms.internal.ads.zzfgw;
import com.google.android.gms.internal.ads.zzfhk;
import com.google.android.gms.internal.ads.zzgbo;
import com.google.android.gms.internal.ads.zzgch;
import com.google.android.gms.internal.ads.zzgcs;
import defpackage.InterfaceFutureC3942wq;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: do, reason: not valid java name */
    public long f9859do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Context f9860do;

    /* renamed from: if, reason: not valid java name */
    public static final void m5580if(zzdrw zzdrwVar, String str, long j) {
        if (zzdrwVar != null) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzmy)).booleanValue()) {
                zzdrv zza = zzdrwVar.zza();
                zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, "lat_init");
                zza.zzb(str, Long.toString(j));
                zza.zzg();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5581do(Context context, VersionInfoParcel versionInfoParcel, boolean z, zzbzg zzbzgVar, String str, String str2, Runnable runnable, final zzfhk zzfhkVar, final zzdrw zzdrwVar, final Long l) {
        PackageInfo packageInfo;
        if (zzv.zzC().elapsedRealtime() - this.f9859do < OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS) {
            zzo.zzj("Not retrying to fetch app settings");
            return;
        }
        this.f9859do = zzv.zzC().elapsedRealtime();
        if (zzbzgVar != null && !TextUtils.isEmpty(zzbzgVar.zzc())) {
            if (zzv.zzC().currentTimeMillis() - zzbzgVar.zza() <= ((Long) zzbe.zzc().zza(zzbcl.zzej)).longValue() && zzbzgVar.zzi()) {
                return;
            }
        }
        if (context == null) {
            zzo.zzj("Context not provided to fetch application settings");
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            zzo.zzj("App settings could not be fetched. Required parameters missing");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.f9860do = applicationContext;
        final zzfgw zza = zzfgv.zza(context, 4);
        zza.zzi();
        zzbog zza2 = zzv.zzg().zza(this.f9860do, versionInfoParcel, zzfhkVar);
        zzboa zzboaVar = zzbod.zza;
        zzbnw zza3 = zza2.zza("google.afma.config.fetchAppSettings", zzboaVar, zzboaVar);
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("app_id", str);
            } else if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("ad_unit_id", str2);
            }
            jSONObject.put("is_init", z);
            jSONObject.put("pn", context.getPackageName());
            zzbcc zzbccVar = zzbcl.zza;
            jSONObject.put("experiment_ids", TextUtils.join(",", zzbe.zza().zza()));
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            try {
                ApplicationInfo applicationInfo = this.f9860do.getApplicationInfo();
                if (applicationInfo != null && (packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0)) != null) {
                    jSONObject.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, packageInfo.versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                com.google.android.gms.ads.internal.util.zze.zza("Error fetching PackageInfo.");
            }
            InterfaceFutureC3942wq zzb = zza3.zzb(jSONObject);
            zzgbo zzgboVar = new zzgbo(this) { // from class: com.google.android.gms.ads.internal.zzd
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final InterfaceFutureC3942wq zza(Object obj) {
                    Long l2 = l;
                    zzdrw zzdrwVar2 = zzdrwVar;
                    zzfhk zzfhkVar2 = zzfhkVar;
                    zzfgw zzfgwVar = zza;
                    JSONObject jSONObject2 = (JSONObject) obj;
                    boolean optBoolean = jSONObject2.optBoolean("isSuccessful", false);
                    if (optBoolean) {
                        zzv.zzp().zzi().zzs(jSONObject2.getString("appSettingsJson"));
                        if (l2 != null) {
                            zzf.m5580if(zzdrwVar2, "cld_s", zzv.zzC().elapsedRealtime() - l2.longValue());
                        }
                    }
                    zzfgwVar.zzg(optBoolean);
                    zzfhkVar2.zzb(zzfgwVar.zzm());
                    return zzgch.zzh(null);
                }
            };
            zzgcs zzgcsVar = zzbzw.zzg;
            InterfaceFutureC3942wq zzn = zzgch.zzn(zzb, zzgboVar, zzgcsVar);
            if (runnable != null) {
                zzb.addListener(runnable, zzgcsVar);
            }
            if (l != null) {
                zzb.addListener(new Runnable(this) { // from class: com.google.android.gms.ads.internal.zze
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzf.m5580if(zzdrwVar, "cld_r", zzv.zzC().elapsedRealtime() - l.longValue());
                    }
                }, zzgcsVar);
            }
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzhC)).booleanValue()) {
                zzbzz.zzb(zzn, "ConfigLoader.maybeFetchNewAppSettings");
            } else {
                zzbzz.zza(zzn, "ConfigLoader.maybeFetchNewAppSettings");
            }
        } catch (Exception e) {
            zzo.zzh("Error requesting application settings", e);
            zza.zzh(e);
            zza.zzg(false);
            zzfhkVar.zzb(zza.zzm());
        }
    }

    public final void zza(Context context, VersionInfoParcel versionInfoParcel, String str, Runnable runnable, zzfhk zzfhkVar, zzdrw zzdrwVar, Long l) {
        m5581do(context, versionInfoParcel, true, null, str, null, runnable, zzfhkVar, zzdrwVar, l);
    }

    public final void zzc(Context context, VersionInfoParcel versionInfoParcel, String str, zzbzg zzbzgVar, zzfhk zzfhkVar) {
        m5581do(context, versionInfoParcel, false, zzbzgVar, zzbzgVar != null ? zzbzgVar.zzb() : null, str, null, zzfhkVar, null, null);
    }
}
