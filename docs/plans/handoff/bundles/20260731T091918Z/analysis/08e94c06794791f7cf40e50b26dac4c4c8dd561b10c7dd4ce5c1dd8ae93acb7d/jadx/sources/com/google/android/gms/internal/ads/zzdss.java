package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdss {
    private final zzdvi zza;

    zzdss(zzdvi zzdviVar) {
        this.zza = zzdviVar;
    }

    public final boolean zza(zzfvg zzfvgVar) {
        if (zzfvgVar.zzj()) {
            zzdvh zza = this.zza.zza();
            zza.zzc("action", "aq_ad_closed");
            zza.zzc("gqi", zzfvgVar.zza());
            zza.zzc("aq_ad_duration", String.valueOf(zzfvgVar.zzb()));
            zza.zzc("aq_ad_bounce_cnt", String.valueOf(zzfvgVar.zzc()));
            zza.zzc("aq_time_away", String.valueOf(zzfvgVar.zzg()));
            return Boolean.valueOf(zza.zze().equals(com.google.android.gms.ads.internal.util.client.zzt.SUCCESS)).booleanValue();
        }
        zzdvh zza2 = this.zza.zza();
        zza2.zzc("action", "aq_ad_kill");
        zza2.zzc("gqi", zzfvgVar.zza());
        zza2.zzc("aq_ad_duration", String.valueOf(zzfvgVar.zzb()));
        zza2.zzc("aq_ad_bounce_cnt", String.valueOf(zzfvgVar.zzc()));
        zza2.zzc("aq_time_away", String.valueOf(zzfvgVar.zzg()));
        zza2.zzc("aq_is_os_kill", String.valueOf(zzfvgVar.zze()));
        return Boolean.valueOf(zza2.zze().equals(com.google.android.gms.ads.internal.util.client.zzt.SUCCESS)).booleanValue();
    }
}
