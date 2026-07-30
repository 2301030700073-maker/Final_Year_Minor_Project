package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;

/* loaded from: classes.dex */
final class zzfeo implements zzgcd {
    final /* synthetic */ zzfer zza;
    final /* synthetic */ zzfes zzb;

    public zzfeo(zzfes zzfesVar, zzfer zzferVar) {
        this.zza = zzferVar;
        this.zzb = zzfesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        synchronized (this.zzb) {
            this.zzb.zze = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ArrayDeque arrayDeque;
        int i;
        synchronized (this.zzb) {
            this.zzb.zze = null;
            arrayDeque = this.zzb.zzd;
            arrayDeque.addFirst(this.zza);
            zzfes zzfesVar = this.zzb;
            i = zzfesVar.zzf;
            if (i == 1) {
                zzfesVar.zzh();
            }
        }
    }
}
