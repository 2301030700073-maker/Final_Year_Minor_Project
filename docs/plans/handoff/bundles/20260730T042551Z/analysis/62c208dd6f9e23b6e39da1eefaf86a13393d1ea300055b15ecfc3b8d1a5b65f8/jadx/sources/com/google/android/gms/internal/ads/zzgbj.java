package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
final class zzgbj extends zzgbi {
    final AtomicReferenceFieldUpdater zza;
    final AtomicIntegerFieldUpdater zzb;

    public zzgbj(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.zza = atomicReferenceFieldUpdater;
        this.zzb = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.gms.internal.ads.zzgbi
    public final int zza(zzgbm zzgbmVar) {
        return this.zzb.decrementAndGet(zzgbmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbi
    public final void zzb(zzgbm zzgbmVar, Set set, Set set2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        boolean z;
        do {
            atomicReferenceFieldUpdater = this.zza;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(zzgbmVar, null, set2)) {
                    z = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(zzgbmVar) != null) {
                    z = false;
                    break;
                }
            }
            if (z) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(zzgbmVar) == null);
    }
}
