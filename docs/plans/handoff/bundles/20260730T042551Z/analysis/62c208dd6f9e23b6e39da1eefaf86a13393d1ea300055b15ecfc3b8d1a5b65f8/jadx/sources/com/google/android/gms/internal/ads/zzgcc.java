package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public abstract class zzgcc extends zzgca implements InterfaceFutureC3942wq {
    @Override // defpackage.InterfaceFutureC3942wq
    public final void addListener(Runnable runnable, Executor executor) {
        zzc().addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzgca
    public /* bridge */ /* synthetic */ Future zzb() {
        throw null;
    }

    public abstract InterfaceFutureC3942wq zzc();
}
