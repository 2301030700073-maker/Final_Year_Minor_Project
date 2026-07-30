package defpackage;

/* loaded from: classes3.dex */
public final class MG<TResult> implements InterfaceC0399Nv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ T6<Object> f2144do;

    public MG(U6 u6) {
        this.f2144do = u6;
    }

    @Override // defpackage.InterfaceC0399Nv
    public final void onComplete(FG<Object> fg) {
        Exception mo591catch = fg.mo591catch();
        T6<Object> t6 = this.f2144do;
        if (mo591catch != null) {
            t6.mo1746while(C3645ro.m8004import(mo591catch));
        } else if (fg.mo596final()) {
            t6.mo2219super(null);
        } else {
            t6.mo1746while(fg.mo592class());
        }
    }
}
