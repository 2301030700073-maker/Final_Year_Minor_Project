package defpackage;

import java.util.concurrent.Executor;

/* renamed from: nd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ExecutorC3399nd extends AbstractC0319Kg implements Executor {

    /* renamed from: do, reason: not valid java name */
    public static final AbstractC3338mb f14539do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ExecutorC3399nd f14540do = new ExecutorC3399nd();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [iq] */
    static {
        C3265lJ c3265lJ = C3265lJ.f14146do;
        int i = C4087zG.f16882do;
        if (64 >= i) {
            i = 64;
        }
        int m8021transient = C3645ro.m8021transient("kotlinx.coroutines.io.parallelism", i, 0, 0, 12);
        c3265lJ.getClass();
        C3645ro.m7990break(m8021transient);
        if (m8021transient < OG.f2616if) {
            C3645ro.m7990break(m8021transient);
            c3265lJ = new C2949iq(c3265lJ, m8021transient);
        }
        f14539do = c3265lJ;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        mo1340if(C0405Of.f2659do, runnable);
    }

    @Override // defpackage.AbstractC3338mb
    /* renamed from: if */
    public final void mo1340if(InterfaceC3161jb interfaceC3161jb, Runnable runnable) {
        f14539do.mo1340if(interfaceC3161jb, runnable);
    }

    @Override // defpackage.AbstractC3338mb
    public final String toString() {
        return "Dispatchers.IO";
    }
}
