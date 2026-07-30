package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
final class zzco extends zzcq {
    private zzco() {
        super(null);
    }

    public /* synthetic */ zzco(zzcn zzcnVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.wearable.zzcq
    public final void zza(Object obj, long j) {
        ((zzcc) zzeo.zzf(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.wearable.zzcq
    public final void zzb(Object obj, Object obj2, long j) {
        zzcc zzccVar = (zzcc) zzeo.zzf(obj, j);
        zzcc zzccVar2 = (zzcc) zzeo.zzf(obj2, j);
        int size = zzccVar.size();
        int size2 = zzccVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzccVar.zzc()) {
                zzccVar = zzccVar.zzd(size2 + size);
            }
            zzccVar.addAll(zzccVar2);
        }
        if (size > 0) {
            zzccVar2 = zzccVar;
        }
        zzeo.zzs(obj, j, zzccVar2);
    }
}
