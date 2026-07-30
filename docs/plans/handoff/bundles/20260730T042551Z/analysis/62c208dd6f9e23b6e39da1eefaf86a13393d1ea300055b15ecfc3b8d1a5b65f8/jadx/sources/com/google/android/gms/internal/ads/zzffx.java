package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.Collections;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzffx {
    public static final zzfgd zza(Callable callable, Object obj, zzfgf zzfgfVar) {
        zzgcs zzgcsVar;
        zzgcsVar = zzfgfVar.zzb;
        return zzb(callable, zzgcsVar, obj, zzfgfVar);
    }

    public static final zzfgd zzb(Callable callable, zzgcs zzgcsVar, Object obj, zzfgf zzfgfVar) {
        InterfaceFutureC3942wq interfaceFutureC3942wq;
        interfaceFutureC3942wq = zzfgf.zza;
        return new zzfgd(zzfgfVar, obj, interfaceFutureC3942wq, Collections.emptyList(), zzgcsVar.zzb(callable));
    }

    public static final zzfgd zzc(InterfaceFutureC3942wq interfaceFutureC3942wq, Object obj, zzfgf zzfgfVar) {
        InterfaceFutureC3942wq interfaceFutureC3942wq2;
        interfaceFutureC3942wq2 = zzfgf.zza;
        return new zzfgd(zzfgfVar, obj, interfaceFutureC3942wq2, Collections.emptyList(), interfaceFutureC3942wq);
    }

    public static final zzfgd zzd(final zzffs zzffsVar, zzgcs zzgcsVar, Object obj, zzfgf zzfgfVar) {
        return zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzffw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzffs.this.zza();
                return null;
            }
        }, zzgcsVar, obj, zzfgfVar);
    }
}
