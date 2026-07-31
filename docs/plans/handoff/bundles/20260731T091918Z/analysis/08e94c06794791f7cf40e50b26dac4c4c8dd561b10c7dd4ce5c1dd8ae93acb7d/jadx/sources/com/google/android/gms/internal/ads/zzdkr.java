package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdkr implements zzifh {
    private final zzdkm zza;

    private zzdkr(zzdkm zzdkmVar) {
        this.zza = zzdkmVar;
    }

    public static zzdkr zzc(zzdkm zzdkmVar) {
        return new zzdkr(zzdkmVar);
    }

    public static zzdqt zzd(zzdkm zzdkmVar) {
        zzdqt zzd = zzdkmVar.zzd();
        zzifp.zzb(zzd);
        return zzd;
    }

    public final zzdqt zza() {
        return zzd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* synthetic */ Object zzb() {
        return zzd(this.zza);
    }
}
