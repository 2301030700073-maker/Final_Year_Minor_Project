package defpackage;

import defpackage.C3371n7;

/* renamed from: bE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0739bE extends AbstractC0459Qp implements InterfaceC2650dk<Throwable, C3206kJ> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C2622dE<Object> f8342do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC2650dk<Throwable, C3206kJ> f8343do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3641rk<Object, Throwable, C3206kJ> f8344do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0739bE(C3260lE c3260lE, C2622dE c2622dE, C3319mE c3319mE) {
        super(1);
        this.f8343do = c3260lE;
        this.f8342do = c2622dE;
        this.f8344do = c3319mE;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final C3206kJ mo364this(Throwable th) {
        C3206kJ c3206kJ;
        Throwable th2 = th;
        this.f8343do.mo364this(th2);
        C2622dE<Object> c2622dE = this.f8342do;
        c2622dE.f12455do.m2530new(th2);
        do {
            Object m2534static = c2622dE.f12455do.m2534static();
            c3206kJ = null;
            if (m2534static instanceof C3371n7.Cif) {
                m2534static = null;
            }
            if (m2534static != null) {
                this.f8344do.invoke(m2534static, th2);
                c3206kJ = C3206kJ.f13965do;
            }
        } while (c3206kJ != null);
        return C3206kJ.f13965do;
    }
}
