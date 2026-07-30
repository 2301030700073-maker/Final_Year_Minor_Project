package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class JR<TResult, TContinuationResult> implements InterfaceC0619Xv<TContinuationResult>, InterfaceC0487Rv, InterfaceC0377Mv, BV {

    /* renamed from: do, reason: not valid java name */
    public final XV f1633do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0598Xa f1634do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f1635do;

    public JR(Executor executor, InterfaceC0598Xa interfaceC0598Xa, XV xv) {
        this.f1635do = executor;
        this.f1634do = interfaceC0598Xa;
        this.f1633do = xv;
    }

    @Override // defpackage.BV
    /* renamed from: do */
    public final void mo189do(FG fg) {
        this.f1635do.execute(new ZS(3, this, fg));
    }

    @Override // defpackage.InterfaceC0377Mv
    /* renamed from: for */
    public final void mo355for() {
        this.f1633do.m2837return();
    }

    @Override // defpackage.InterfaceC0619Xv
    /* renamed from: if */
    public final void mo356if(TContinuationResult tcontinuationresult) {
        this.f1633do.m2836public(tcontinuationresult);
    }

    @Override // defpackage.InterfaceC0487Rv
    public final void onFailure(Exception exc) {
        this.f1633do.m2835native(exc);
    }
}
