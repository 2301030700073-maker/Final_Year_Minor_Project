package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzgcf {
    private final boolean zza;
    private final zzfxn zzb;

    public /* synthetic */ zzgcf(boolean z, zzfxn zzfxnVar, zzgcg zzgcgVar) {
        this.zza = z;
        this.zzb = zzfxnVar;
    }

    public final InterfaceFutureC3942wq zza(Callable callable, Executor executor) {
        return new zzgbu(this.zzb, this.zza, executor, callable);
    }
}
