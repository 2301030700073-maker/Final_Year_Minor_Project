package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
final class zzbyh implements ThreadFactory {
    private final AtomicInteger zza = new AtomicInteger(1);

    public zzbyh(zzbyi zzbyiVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, V1.m2494case("AdWorker(SCION_TASK_EXECUTOR) #", this.zza.getAndIncrement()));
    }
}
