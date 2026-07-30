package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: Mg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ThreadFactoryC0362Mg implements ThreadFactory {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ String f2222do = "awaitEvenIfOnMainThread task continuation executor";

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AtomicLong f2223do;

    /* renamed from: Mg$do, reason: invalid class name */
    public class Cdo extends H4 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f2224do;

        public Cdo(Runnable runnable) {
            this.f2224do = runnable;
        }

        @Override // defpackage.H4
        /* renamed from: do */
        public final void mo809do() {
            this.f2224do.run();
        }
    }

    public ThreadFactoryC0362Mg(AtomicLong atomicLong) {
        this.f2223do = atomicLong;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(new Cdo(runnable));
        newThread.setName(this.f2222do + this.f2223do.getAndIncrement());
        return newThread;
    }
}
