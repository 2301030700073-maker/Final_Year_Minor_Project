package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdmi implements zzifh {
    private final zzdmb zza;

    private zzdmi(zzdmb zzdmbVar) {
        this.zza = zzdmbVar;
    }

    public static zzdmi zzc(zzdmb zzdmbVar) {
        return new zzdmi(zzdmbVar);
    }

    public static zzdlq zzd(zzdmb zzdmbVar) {
        zzdlq zza = zzdmbVar.zza();
        zzifp.zzb(zza);
        return zza;
    }

    public final zzdlq zza() {
        return zzd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* synthetic */ Object zzb() {
        return zzd(this.zza);
    }
}
