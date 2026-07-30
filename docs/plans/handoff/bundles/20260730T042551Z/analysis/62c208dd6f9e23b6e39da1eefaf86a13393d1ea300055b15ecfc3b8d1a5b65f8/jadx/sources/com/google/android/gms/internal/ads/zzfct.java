package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfct implements zzgcd {
    final /* synthetic */ zzcex zza;
    final /* synthetic */ zzcmk zzb;
    final /* synthetic */ zzfja zzc;
    final /* synthetic */ zzebk zzd;

    public zzfct(zzcex zzcexVar, zzcmk zzcmkVar, zzfja zzfjaVar, zzebk zzebkVar) {
        this.zza = zzcexVar;
        this.zzb = zzcmkVar;
        this.zzc = zzfjaVar;
        this.zzd = zzebkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        String str = (String) obj;
        zzfbo zzD = this.zza.zzD();
        if (zzD != null && !zzD.zzai) {
            com.google.android.gms.ads.internal.util.client.zzv zzvVar = zzD.zzax;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjT)).booleanValue() && this.zzb != null && zzcmk.zzj(str)) {
                this.zzb.zzi(str, this.zzc, com.google.android.gms.ads.internal.client.zzbc.zze(), zzvVar);
                return;
            } else {
                this.zzc.zzd(str, zzvVar, null);
                return;
            }
        }
        zzfbr zzR = this.zza.zzR();
        if (zzR == null) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingClickGmsgHandler");
            return;
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
        boolean zzA = com.google.android.gms.ads.internal.zzv.zzp().zzA(this.zza.getContext());
        boolean z = false;
        boolean z2 = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgd)).booleanValue() && zzD != null && zzD.zzS;
        if (zzD != null && zzD.zzad != null) {
            z = true;
        }
        this.zzd.zzd(new zzebm(currentTimeMillis, zzR.zzb, str, (zzA || z2 || z) ? 2 : 1));
    }
}
