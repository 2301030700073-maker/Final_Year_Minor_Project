package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes.dex */
public final class zzfdi {
    private final Deque zza = new LinkedBlockingDeque();
    private final Callable zzb;
    private final zzgcs zzc;

    public zzfdi(Callable callable, zzgcs zzgcsVar) {
        this.zzb = callable;
        this.zzc = zzgcsVar;
    }

    public final synchronized InterfaceFutureC3942wq zza() {
        zzc(1);
        return (InterfaceFutureC3942wq) this.zza.poll();
    }

    public final synchronized void zzb(InterfaceFutureC3942wq interfaceFutureC3942wq) {
        this.zza.addFirst(interfaceFutureC3942wq);
    }

    public final synchronized void zzc(int i) {
        int size = i - this.zza.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.zza.add(this.zzc.zzb(this.zzb));
        }
    }
}
