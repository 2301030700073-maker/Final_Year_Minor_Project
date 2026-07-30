package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfft implements InterfaceFutureC3942wq {
    private final Object zza;
    private final String zzb;
    private final InterfaceFutureC3942wq zzc;

    public zzfft(Object obj, String str, InterfaceFutureC3942wq interfaceFutureC3942wq) {
        this.zza = obj;
        this.zzb = str;
        this.zzc = interfaceFutureC3942wq;
    }

    @Override // defpackage.InterfaceFutureC3942wq
    public final void addListener(Runnable runnable, Executor executor) {
        this.zzc.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.zzc.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.zzc.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzc.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzc.isDone();
    }

    public final String toString() {
        return this.zzb + "@" + System.identityHashCode(this);
    }

    public final Object zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.zzc.get(j, timeUnit);
    }
}
