package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class BT implements Executor {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C4041yT f242do;

    public BT(C4041yT c4041yT) {
        this.f242do = c4041yT;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f242do.mo2253do().m1964public(runnable);
    }
}
