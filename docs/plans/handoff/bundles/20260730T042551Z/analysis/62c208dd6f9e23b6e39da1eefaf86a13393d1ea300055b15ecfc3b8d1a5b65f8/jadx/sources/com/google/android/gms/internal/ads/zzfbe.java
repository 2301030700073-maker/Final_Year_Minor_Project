package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfbe implements zzelc {
    final /* synthetic */ zzfbf zza;

    public zzfbe(zzfbf zzfbfVar) {
        this.zza = zzfbfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdoa zzdoaVar;
        zzfcb zzfcbVar;
        zzdoa zzdoaVar2 = (zzdoa) obj;
        synchronized (this.zza) {
            this.zza.zzi = zzdoaVar2;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdF)).booleanValue()) {
                zzfcc zzd = zzdoaVar2.zzd();
                zzfcbVar = this.zza.zzd;
                zzd.zza = zzfcbVar;
            }
            zzdoaVar = this.zza.zzi;
            zzdoaVar.zzk();
        }
    }
}
