package defpackage;

import java.util.concurrent.ThreadFactory;

/* renamed from: w9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ThreadFactoryC3903w9 implements ThreadFactory {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ String f16279do;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f16279do);
        thread.setPriority(10);
        return thread;
    }
}
