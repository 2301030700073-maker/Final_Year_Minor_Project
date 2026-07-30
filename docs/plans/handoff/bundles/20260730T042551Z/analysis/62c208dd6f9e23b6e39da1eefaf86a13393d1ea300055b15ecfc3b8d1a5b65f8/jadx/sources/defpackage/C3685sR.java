package defpackage;

import java.util.concurrent.Executor;

/* renamed from: sR, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3685sR implements BV {

    /* renamed from: do, reason: not valid java name */
    public final XV f15491do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0598Xa f15492do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f15493do;

    public C3685sR(Executor executor, InterfaceC0598Xa interfaceC0598Xa, XV xv) {
        this.f15493do = executor;
        this.f15492do = interfaceC0598Xa;
        this.f15491do = xv;
    }

    @Override // defpackage.BV
    /* renamed from: do */
    public final void mo189do(FG fg) {
        this.f15493do.execute(new RunnableC3807uV(this, fg, 7));
    }
}
