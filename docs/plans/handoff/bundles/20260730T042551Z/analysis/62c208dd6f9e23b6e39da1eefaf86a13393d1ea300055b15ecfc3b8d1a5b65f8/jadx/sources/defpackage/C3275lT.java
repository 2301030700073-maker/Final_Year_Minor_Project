package defpackage;

import java.util.concurrent.Executor;

/* renamed from: lT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3275lT implements BV {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0399Nv f14160do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f14161do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f14162do;

    public C3275lT(Executor executor, InterfaceC0399Nv interfaceC0399Nv) {
        this.f14162do = executor;
        this.f14160do = interfaceC0399Nv;
    }

    @Override // defpackage.BV
    /* renamed from: do */
    public final void mo189do(FG fg) {
        synchronized (this.f14161do) {
            if (this.f14160do == null) {
                return;
            }
            this.f14162do.execute(new RunnableC0754bT(this, fg, 4));
        }
    }
}
