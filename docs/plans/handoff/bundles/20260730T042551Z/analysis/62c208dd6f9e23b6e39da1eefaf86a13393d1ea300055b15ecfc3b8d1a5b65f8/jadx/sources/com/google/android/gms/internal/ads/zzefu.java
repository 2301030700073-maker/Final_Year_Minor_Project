package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzefu extends zzbqw {
    final /* synthetic */ zzefw zza;
    private final zzecz zzb;

    public /* synthetic */ zzefu(zzefw zzefwVar, zzecz zzeczVar, zzefv zzefvVar) {
        this.zza = zzefwVar;
        this.zzb = zzeczVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zze(String str) {
        ((zzees) this.zzb.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        ((zzees) this.zzb.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzg(zzbpt zzbptVar) {
        this.zza.zzc = zzbptVar;
        ((zzees) this.zzb.zzc).zzo();
    }
}
