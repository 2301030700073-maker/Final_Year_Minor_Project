package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: xP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC3978xP implements ThreadFactory {

    /* renamed from: do, reason: not valid java name */
    public final ThreadFactory f16550do = Executors.defaultThreadFactory();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f16551do = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f16551do;
        Thread newThread = this.f16550do.newThread(runnable);
        newThread.setName("PlayBillingLibrary-" + atomicInteger.getAndIncrement());
        return newThread;
    }
}
