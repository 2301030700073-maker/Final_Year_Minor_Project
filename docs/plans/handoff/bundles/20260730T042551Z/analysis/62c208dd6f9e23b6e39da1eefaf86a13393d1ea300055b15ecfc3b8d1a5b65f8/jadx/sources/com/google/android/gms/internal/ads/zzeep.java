package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzeep implements zzgcd {
    final /* synthetic */ zzeeq zza;

    public zzeep(zzeeq zzeeqVar) {
        this.zza = zzeeqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        zzcpq zzcpqVar;
        zzcvv zzcvvVar;
        zzcpqVar = this.zza.zza;
        com.google.android.gms.ads.internal.client.zze zza = zzcpqVar.zzd().zza(th);
        zzcvvVar = this.zza.zzd;
        zzcvvVar.zzdz(zza);
        zzfdg.zzb(zza.zza, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* synthetic */ void zzb(Object obj) {
        ((zzcom) obj).zzk();
    }
}
