package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class EO implements ThreadFactory {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ String f785do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f786do = new AtomicInteger(1);

    public EO(String str) {
        this.f785do = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AdWorker(" + this.f785do + ") #" + this.f786do.getAndIncrement());
    }
}
