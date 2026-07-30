package defpackage;

/* renamed from: lE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3260lE extends AbstractC0459Qp implements InterfaceC2650dk<Throwable, C3206kJ> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3201kE<Object> f14124do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3260lE(C3201kE<Object> c3201kE) {
        super(1);
        this.f14124do = c3201kE;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final C3206kJ mo364this(Throwable th) {
        Throwable th2 = th;
        if (th2 != null) {
            this.f14124do.f13889do.mo2003case(new C0561Vh(th2));
        }
        Object obj = C3201kE.f13885do;
        C3201kE<Object> c3201kE = this.f14124do;
        synchronized (obj) {
            C3201kE.f13886do.remove(c3201kE.m7227new().getAbsolutePath());
        }
        return C3206kJ.f13965do;
    }
}
