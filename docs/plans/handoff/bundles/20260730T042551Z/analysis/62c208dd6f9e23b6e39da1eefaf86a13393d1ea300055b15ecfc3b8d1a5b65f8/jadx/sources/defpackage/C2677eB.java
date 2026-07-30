package defpackage;

import defpackage.C0165Dg;
import defpackage.C3322mH;
import defpackage.C3381nH;

/* renamed from: eB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2677eB implements InterfaceC3933wh<C2619dB> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC2792g8> f12597do;

    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3597qy<AbstractC0099Ag> f12598for;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC2792g8> f12599if;

    /* renamed from: new, reason: not valid java name */
    public final InterfaceC3597qy<JB> f12600new;

    /* renamed from: try, reason: not valid java name */
    public final InterfaceC3597qy<String> f12601try;

    public C2677eB(InterfaceC3597qy interfaceC3597qy, InterfaceC3597qy interfaceC3597qy2) {
        C3322mH c3322mH = C3322mH.Cdo.f14326do;
        C3381nH c3381nH = C3381nH.Cdo.f14489do;
        C0165Dg c0165Dg = C0165Dg.Cdo.f638do;
        this.f12597do = c3322mH;
        this.f12599if = c3381nH;
        this.f12598for = c0165Dg;
        this.f12600new = interfaceC3597qy;
        this.f12601try = interfaceC3597qy2;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        InterfaceC2792g8 interfaceC2792g8 = this.f12597do.get();
        InterfaceC2792g8 interfaceC2792g82 = this.f12599if.get();
        AbstractC0099Ag abstractC0099Ag = this.f12598for.get();
        return new C2619dB(interfaceC2792g8, interfaceC2792g82, abstractC0099Ag, this.f12600new.get(), this.f12601try);
    }
}
