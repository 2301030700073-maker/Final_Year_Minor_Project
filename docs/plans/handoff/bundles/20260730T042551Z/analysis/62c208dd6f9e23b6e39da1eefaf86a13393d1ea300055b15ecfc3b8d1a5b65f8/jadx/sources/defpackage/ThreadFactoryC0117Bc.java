package defpackage;

import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: Bc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ThreadFactoryC0117Bc implements ThreadFactory {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadFactory f247do = Executors.defaultThreadFactory();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f248do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final StrictMode.ThreadPolicy f249do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f250do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicLong f251do = new AtomicLong();

    public ThreadFactoryC0117Bc(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        this.f250do = str;
        this.f248do = i;
        this.f249do = threadPolicy;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = f247do.newThread(new RunnableC3998xn(1, this, runnable));
        newThread.setName(String.format(Locale.ROOT, "%s Thread #%d", this.f250do, Long.valueOf(this.f251do.getAndIncrement())));
        return newThread;
    }
}
