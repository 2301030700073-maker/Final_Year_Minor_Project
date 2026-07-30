package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* renamed from: ec, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ExecutorC2700ec implements Executor {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f12690do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f12689do = new Object();

    /* renamed from: do, reason: not valid java name */
    public FG<?> f12688do = LG.m1320try(null);

    public ExecutorC2700ec(ExecutorService executorService) {
        this.f12690do = executorService;
    }

    /* renamed from: do, reason: not valid java name */
    public final FG<Void> m6567do(Runnable runnable) {
        FG mo589break;
        synchronized (this.f12689do) {
            mo589break = this.f12688do.mo589break(this.f12690do, new C0391Nn(runnable, 4));
            this.f12688do = mo589break;
        }
        return mo589break;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f12690do.execute(runnable);
    }

    /* renamed from: if, reason: not valid java name */
    public final FG m6568if(CallableC0270Ib callableC0270Ib) {
        FG mo589break;
        synchronized (this.f12689do) {
            mo589break = this.f12688do.mo589break(this.f12690do, new C0674a9(callableC0270Ib, 1));
            this.f12688do = mo589break;
        }
        return mo589break;
    }
}
