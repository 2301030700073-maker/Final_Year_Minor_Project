package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class VT implements BV {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0487Rv f4128do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f4129do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f4130do;

    public VT(Executor executor, InterfaceC0487Rv interfaceC0487Rv) {
        this.f4130do = executor;
        this.f4128do = interfaceC0487Rv;
    }

    @Override // defpackage.BV
    /* renamed from: do */
    public final void mo189do(FG fg) {
        if (fg.mo604throw() || fg.mo596final()) {
            return;
        }
        synchronized (this.f4129do) {
            if (this.f4128do == null) {
                return;
            }
            this.f4130do.execute(new VS(3, this, fg));
        }
    }
}
