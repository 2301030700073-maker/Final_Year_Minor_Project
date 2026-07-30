package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
final class zzfez implements ThreadFactory {
    private final AtomicInteger zza = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, V1.m2494case("AdWorker(NG) #", this.zza.getAndIncrement()));
    }
}
