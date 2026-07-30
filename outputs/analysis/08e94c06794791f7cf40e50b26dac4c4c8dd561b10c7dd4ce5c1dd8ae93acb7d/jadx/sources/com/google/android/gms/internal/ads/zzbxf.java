package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.perf.FirebasePerformance;
import io.sentry.SentryLockReason;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbxf extends zzbxd {
    private final Object zza = new Object();
    private final Context zzb;
    private SharedPreferences zzc;
    private final zzbqf zzd;
    private final VersionInfoParcel zze;

    public zzbxf(Context context, zzbqf zzbqfVar, VersionInfoParcel versionInfoParcel) {
        this.zzb = context.getApplicationContext();
        this.zze = versionInfoParcel;
        this.zzd = zzbqfVar;
    }

    public static JSONObject zzb(Context context, VersionInfoParcel versionInfoParcel) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (((Boolean) zzbgu.zzd.zze()).booleanValue()) {
                jSONObject.put(SentryLockReason.JsonKeys.PACKAGE_NAME, context.getPackageName());
            }
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            jSONObject.put("mf", zzbgu.zze.zze());
            jSONObject.put("cl", "811902923");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", FirebasePerformance.HttpMethod.HEAD);
            jSONObject.put("admob_module_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzbxd
    public final ListenableFuture zza() {
        synchronized (this.zza) {
            if (this.zzc == null) {
                this.zzc = this.zzb.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        SharedPreferences sharedPreferences = this.zzc;
        if (com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - (sharedPreferences != null ? sharedPreferences.getLong("js_last_update", 0L) : 0L) < ((Long) zzbgu.zzf.zze()).longValue()) {
            return zzgui.zza(null);
        }
        return zzgui.zzk(this.zzd.zzb(zzb(this.zzb, this.zze)), new zzglu() { // from class: com.google.android.gms.internal.ads.zzbxe
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                zzbxf.this.zzc((JSONObject) obj);
                return null;
            }
        }, zzcbv.zzg);
    }

    final /* synthetic */ Void zzc(JSONObject jSONObject) {
        zzbel zzbelVar = zzbeu.zza;
        com.google.android.gms.ads.internal.client.zzbd.zza();
        Context context = this.zzb;
        SharedPreferences zzb = zzben.zzb(context);
        if (zzb == null) {
            return null;
        }
        SharedPreferences.Editor edit = zzb.edit();
        Objects.requireNonNull(com.google.android.gms.ads.internal.client.zzbd.zzb());
        int i = zzbgk.zza;
        com.google.android.gms.ads.internal.client.zzbd.zzb().zzd(edit, 1, jSONObject);
        com.google.android.gms.ads.internal.client.zzbd.zza();
        edit.commit();
        if (((Boolean) zzbgu.zzc.zze()).booleanValue() && !TextUtils.equals(context.getPackageName(), "com.google.android.gms")) {
            com.google.android.gms.ads.internal.client.zzbd.zza();
            SharedPreferences zza = zzben.zza(context);
            if (zza != null) {
                SharedPreferences.Editor edit2 = zza.edit();
                com.google.android.gms.ads.internal.client.zzbd.zzb();
                JSONObject jSONObject2 = new JSONObject();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next.startsWith("adapter:")) {
                        try {
                            jSONObject2.put(next, jSONObject.get(next));
                        } catch (JSONException unused) {
                        }
                    }
                }
                edit2.putString("flag_configuration", jSONObject2.toString());
                edit2.commit();
            }
        }
        SharedPreferences sharedPreferences = this.zzc;
        if (sharedPreferences == null) {
            return null;
        }
        sharedPreferences.edit().putLong("js_last_update", com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()).apply();
        return null;
    }
}
