package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzffv {
    final /* synthetic */ zzfgf zza;
    private final Object zzb;
    private final List zzc;

    public /* synthetic */ zzffv(zzfgf zzfgfVar, Object obj, List list, zzfge zzfgeVar) {
        this.zza = zzfgfVar;
        this.zzb = obj;
        this.zzc = list;
    }

    public final zzfgd zza(Callable callable) {
        zzgcs zzgcsVar;
        zzgcf zzb = zzgch.zzb(this.zzc);
        InterfaceFutureC3942wq zza = zzb.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzffu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, zzbzw.zzg);
        zzgcsVar = this.zza.zzb;
        InterfaceFutureC3942wq zza2 = zzb.zza(callable, zzgcsVar);
        return new zzfgd(this.zza, this.zzb, zza, this.zzc, zza2);
    }
}
