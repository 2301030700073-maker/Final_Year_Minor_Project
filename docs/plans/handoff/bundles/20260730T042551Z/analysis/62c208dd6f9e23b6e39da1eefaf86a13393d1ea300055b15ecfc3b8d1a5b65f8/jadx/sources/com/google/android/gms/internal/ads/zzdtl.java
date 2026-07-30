package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzdtl extends zzbwv {
    final /* synthetic */ zzdtn zza;

    public zzdtl(zzdtn zzdtnVar) {
        this.zza = zzdtnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final void zze(int i) {
        zzdtc zzdtcVar;
        long j;
        zzdtn zzdtnVar = this.zza;
        zzdtcVar = zzdtnVar.zzb;
        j = zzdtnVar.zza;
        zzdtcVar.zzm(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzdtc zzdtcVar;
        long j;
        zzdtn zzdtnVar = this.zza;
        zzdtcVar = zzdtnVar.zzb;
        j = zzdtnVar.zza;
        zzdtcVar.zzm(j, zzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final void zzg() {
        zzdtc zzdtcVar;
        long j;
        zzdtn zzdtnVar = this.zza;
        zzdtcVar = zzdtnVar.zzb;
        j = zzdtnVar.zza;
        zzdtcVar.zzp(j);
    }
}
