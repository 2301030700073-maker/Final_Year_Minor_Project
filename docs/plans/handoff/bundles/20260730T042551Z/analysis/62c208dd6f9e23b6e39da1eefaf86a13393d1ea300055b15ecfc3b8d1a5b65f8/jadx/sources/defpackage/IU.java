package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class IU implements BV {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0619Xv f1527do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f1528do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f1529do;

    public IU(Executor executor, InterfaceC0619Xv interfaceC0619Xv) {
        this.f1529do = executor;
        this.f1527do = interfaceC0619Xv;
    }

    @Override // defpackage.BV
    /* renamed from: do */
    public final void mo189do(FG fg) {
        if (fg.mo604throw()) {
            synchronized (this.f1528do) {
                if (this.f1527do == null) {
                    return;
                }
                this.f1529do.execute(new RunnableC2695eT(5, this, fg));
            }
        }
    }
}
