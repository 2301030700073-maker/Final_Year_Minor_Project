package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfbj implements zzelc {
    final /* synthetic */ zzfbl zza;

    public zzfbj(zzfbl zzfblVar) {
        this.zza = zzfblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzd = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdoa zzdoaVar;
        zzfcb zzfcbVar;
        zzdoa zzdoaVar2 = (zzdoa) obj;
        synchronized (this.zza) {
            this.zza.zzd = zzdoaVar2;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdF)).booleanValue()) {
                zzfcc zzd = zzdoaVar2.zzd();
                zzfcbVar = this.zza.zzc;
                zzd.zza = zzfcbVar;
            }
            zzdoaVar = this.zza.zzd;
            zzdoaVar.zzk();
        }
    }
}
