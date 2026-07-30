package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzdnf implements zzgcd {
    final /* synthetic */ zzfbo zza;
    final /* synthetic */ zzfbr zzb;
    final /* synthetic */ zzcmk zzc;
    final /* synthetic */ zzdnl zzd;

    public zzdnf(zzdnl zzdnlVar, zzfbo zzfboVar, zzfbr zzfbrVar, zzcmk zzcmkVar) {
        this.zza = zzfboVar;
        this.zzb = zzfbrVar;
        this.zzc = zzcmkVar;
        this.zzd = zzdnlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzebk zzebkVar;
        zzfja zzfjaVar;
        zzebk zzebkVar2;
        zzdrw zzdrwVar;
        zzcex zzcexVar = (zzcex) obj;
        zzcexVar.zzW(this.zza, this.zzb);
        zzcgp zzN = zzcexVar.zzN();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjX)).booleanValue() && zzN != null) {
            zzcmk zzcmkVar = this.zzc;
            zzdnl zzdnlVar = this.zzd;
            zzebkVar = zzdnlVar.zzi;
            zzfjaVar = zzdnlVar.zzj;
            zzN.zzK(zzcmkVar, zzebkVar, zzfjaVar);
            zzcmk zzcmkVar2 = this.zzc;
            zzdnl zzdnlVar2 = this.zzd;
            zzebkVar2 = zzdnlVar2.zzi;
            zzdrwVar = zzdnlVar2.zzd;
            zzN.zzM(zzcmkVar2, zzebkVar2, zzdrwVar);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmQ)).booleanValue() || zzN == null) {
            return;
        }
        zzN.zzN(this.zza);
    }
}
