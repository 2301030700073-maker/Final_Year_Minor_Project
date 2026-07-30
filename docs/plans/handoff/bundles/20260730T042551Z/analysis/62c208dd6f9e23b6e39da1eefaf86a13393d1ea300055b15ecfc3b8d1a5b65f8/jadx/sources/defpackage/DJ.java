package defpackage;

import android.content.Context;
import defpackage.C3322mH;
import defpackage.C3381nH;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class DJ implements InterfaceC3933wh<CJ> {

    /* renamed from: case, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC3380nG> f586case;

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3597qy<Context> f587do;

    /* renamed from: else, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC2792g8> f588else;

    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC4109zg> f589for;

    /* renamed from: goto, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC2792g8> f590goto;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3597qy<D4> f591if;

    /* renamed from: new, reason: not valid java name */
    public final InterfaceC3597qy<SM> f592new;

    /* renamed from: this, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC2616d8> f593this;

    /* renamed from: try, reason: not valid java name */
    public final InterfaceC3597qy<Executor> f594try;

    public DJ(InterfaceC3597qy interfaceC3597qy, InterfaceC3597qy interfaceC3597qy2, InterfaceC3597qy interfaceC3597qy3, C3559qI c3559qI, InterfaceC3597qy interfaceC3597qy4, InterfaceC3597qy interfaceC3597qy5, InterfaceC3597qy interfaceC3597qy6) {
        C3322mH c3322mH = C3322mH.Cdo.f14326do;
        C3381nH c3381nH = C3381nH.Cdo.f14489do;
        this.f587do = interfaceC3597qy;
        this.f591if = interfaceC3597qy2;
        this.f589for = interfaceC3597qy3;
        this.f592new = c3559qI;
        this.f594try = interfaceC3597qy4;
        this.f586case = interfaceC3597qy5;
        this.f588else = c3322mH;
        this.f590goto = c3381nH;
        this.f593this = interfaceC3597qy6;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        return new CJ(this.f587do.get(), this.f591if.get(), this.f589for.get(), this.f592new.get(), this.f594try.get(), this.f586case.get(), this.f588else.get(), this.f590goto.get(), this.f593this.get());
    }
}
