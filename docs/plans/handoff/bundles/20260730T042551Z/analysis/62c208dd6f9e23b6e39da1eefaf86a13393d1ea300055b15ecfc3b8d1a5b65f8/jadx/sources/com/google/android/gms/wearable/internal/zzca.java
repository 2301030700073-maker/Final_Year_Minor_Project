package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
public final class zzca extends zzet {
    private final Object zza = new Object();
    private zzcb zzb;
    private zzbe zzc;

    @Override // com.google.android.gms.wearable.internal.zzeu
    public final void zzb(int i, int i2) {
        zzcb zzcbVar;
        zzbe zzbeVar;
        synchronized (this.zza) {
            zzcbVar = this.zzb;
            zzbeVar = new zzbe(i, i2);
            this.zzc = zzbeVar;
        }
        if (zzcbVar != null) {
            zzcbVar.zza(zzbeVar);
        }
    }

    public final void zzc(zzcb zzcbVar) {
        zzbe zzbeVar;
        synchronized (this.zza) {
            this.zzb = (zzcb) Preconditions.checkNotNull(zzcbVar);
            zzbeVar = this.zzc;
        }
        if (zzbeVar != null) {
            zzcbVar.zza(zzbeVar);
        }
    }
}
