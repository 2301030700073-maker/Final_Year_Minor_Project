package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class P9 implements ThreadFactory {

    /* renamed from: do, reason: not valid java name */
    public final AtomicInteger f2739do = new AtomicInteger(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f2740do;

    public P9(boolean z) {
        this.f2740do = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, (this.f2740do ? "WM.task-" : "androidx.work-") + this.f2739do.incrementAndGet());
    }
}
