package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* renamed from: kB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ExecutorC3198kB implements Executor {

    /* renamed from: do, reason: not valid java name */
    public final Executor f13879do;

    /* renamed from: kB$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Runnable f13880do;

        public Cdo(Runnable runnable) {
            this.f13880do = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f13880do.run();
            } catch (Exception unused) {
                C0636Yq.m2961if("Executor");
            }
        }
    }

    public ExecutorC3198kB(ExecutorService executorService) {
        this.f13879do = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f13879do.execute(new Cdo(runnable));
    }
}
