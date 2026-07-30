package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class EM implements InterfaceC3933wh<DM> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3597qy<Executor> f780do;

    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3597qy<SM> f781for;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC4109zg> f782if;

    /* renamed from: new, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC3380nG> f783new;

    public EM(InterfaceC3597qy interfaceC3597qy, InterfaceC3597qy interfaceC3597qy2, C3559qI c3559qI, InterfaceC3597qy interfaceC3597qy3) {
        this.f780do = interfaceC3597qy;
        this.f782if = interfaceC3597qy2;
        this.f781for = c3559qI;
        this.f783new = interfaceC3597qy3;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        return new DM(this.f780do.get(), this.f782if.get(), this.f781for.get(), this.f783new.get());
    }
}
