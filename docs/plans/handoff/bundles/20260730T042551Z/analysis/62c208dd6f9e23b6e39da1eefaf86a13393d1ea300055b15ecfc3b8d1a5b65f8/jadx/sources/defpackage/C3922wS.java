package defpackage;

import java.util.concurrent.Executor;

/* renamed from: wS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3922wS implements BV {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0377Mv f16346do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f16347do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f16348do;

    public C3922wS(Executor executor, InterfaceC0377Mv interfaceC0377Mv) {
        this.f16348do = executor;
        this.f16346do = interfaceC0377Mv;
    }

    @Override // defpackage.BV
    /* renamed from: do */
    public final void mo189do(FG fg) {
        if (fg.mo596final()) {
            synchronized (this.f16347do) {
                if (this.f16346do == null) {
                    return;
                }
                this.f16348do.execute(new VR(this));
            }
        }
    }
}
