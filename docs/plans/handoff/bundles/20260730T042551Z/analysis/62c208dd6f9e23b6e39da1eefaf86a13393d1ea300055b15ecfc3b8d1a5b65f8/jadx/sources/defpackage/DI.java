package defpackage;

import defpackage.C3322mH;
import defpackage.C3381nH;

/* loaded from: classes.dex */
public final class DI implements InterfaceC3933wh<BI> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC2792g8> f581do;

    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC3787uB> f582for;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC2792g8> f583if;

    /* renamed from: new, reason: not valid java name */
    public final InterfaceC3597qy<CJ> f584new;

    /* renamed from: try, reason: not valid java name */
    public final InterfaceC3597qy<DM> f585try;

    public DI(C3870vd c3870vd, DJ dj, EM em) {
        C3322mH c3322mH = C3322mH.Cdo.f14326do;
        C3381nH c3381nH = C3381nH.Cdo.f14489do;
        this.f581do = c3322mH;
        this.f583if = c3381nH;
        this.f582for = c3870vd;
        this.f584new = dj;
        this.f585try = em;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        return new BI(this.f581do.get(), this.f583if.get(), this.f582for.get(), this.f584new.get(), this.f585try.get());
    }
}
