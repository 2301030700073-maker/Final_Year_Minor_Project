package defpackage;

import java.util.concurrent.Executor;

/* renamed from: tV, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3748tV<TResult, TContinuationResult> implements InterfaceC0619Xv<TContinuationResult>, InterfaceC0487Rv, InterfaceC0377Mv, BV {

    /* renamed from: do, reason: not valid java name */
    public final NF f15720do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final XV f15721do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f15722do;

    public C3748tV(Executor executor, NF nf, XV xv) {
        this.f15722do = executor;
        this.f15720do = nf;
        this.f15721do = xv;
    }

    @Override // defpackage.BV
    /* renamed from: do */
    public final void mo189do(FG fg) {
        this.f15722do.execute(new PO(this, fg, 6));
    }

    @Override // defpackage.InterfaceC0377Mv
    /* renamed from: for */
    public final void mo355for() {
        this.f15721do.m2837return();
    }

    @Override // defpackage.InterfaceC0619Xv
    /* renamed from: if */
    public final void mo356if(TContinuationResult tcontinuationresult) {
        this.f15721do.m2836public(tcontinuationresult);
    }

    @Override // defpackage.InterfaceC0487Rv
    public final void onFailure(Exception exc) {
        this.f15721do.m2835native(exc);
    }
}
