package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import defpackage.InterfaceFutureC3942wq;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbvg extends zzbve {
    private final Object zza = new Object();
    private final Context zzb;
    private SharedPreferences zzc;
    private final zzbnw zzd;
    private final VersionInfoParcel zze;

    public zzbvg(Context context, zzbnw zzbnwVar, VersionInfoParcel versionInfoParcel) {
        this.zzb = context.getApplicationContext();
        this.zze = versionInfoParcel;
        this.zzd = zzbnwVar;
    }

    public static JSONObject zzc(Context context, VersionInfoParcel versionInfoParcel) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (((Boolean) zzbel.zzb.zze()).booleanValue()) {
                jSONObject.put("package_name", context.getPackageName());
            }
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            jSONObject.put("mf", zzbel.zzc.zze());
            jSONObject.put("cl", "697668803");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.m5608new(context, ModuleDescriptor.MODULE_ID, false));
            jSONObject.put("container_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzbve
    public final InterfaceFutureC3942wq zza() {
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = this.zzb.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        SharedPreferences sharedPreferences = this.zzc;
        if (com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - (sharedPreferences != null ? sharedPreferences.getLong("js_last_update", 0L) : 0L) < ((Long) zzbel.zzd.zze()).longValue()) {
            return zzgch.zzh(null);
        }
        return zzgch.zzm(this.zzd.zzb(zzc(this.zzb, this.zze)), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzbvf
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                zzbvg.this.zzb((JSONObject) obj);
                return null;
            }
        }, zzbzw.zzg);
    }

    public final /* synthetic */ Void zzb(JSONObject jSONObject) {
        zzbcc zzbccVar = zzbcl.zza;
        com.google.android.gms.ads.internal.client.zzbe.zzb();
        SharedPreferences zza = zzbce.zza(this.zzb);
        if (zza == null) {
            return null;
        }
        SharedPreferences.Editor edit = zza.edit();
        com.google.android.gms.ads.internal.client.zzbe.zza();
        int i = zzbeb.zza;
        com.google.android.gms.ads.internal.client.zzbe.zza().zze(edit, 1, jSONObject);
        com.google.android.gms.ads.internal.client.zzbe.zzb();
        edit.commit();
        SharedPreferences sharedPreferences = this.zzc;
        if (sharedPreferences == null) {
            return null;
        }
        sharedPreferences.edit().putLong("js_last_update", com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()).apply();
        return null;
    }
}
