package defpackage;

import java.util.concurrent.Executor;

/* renamed from: vd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3870vd implements InterfaceC3933wh<C3811ud> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3597qy<Executor> f16098do;

    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3597qy<SM> f16099for;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3597qy<D4> f16100if;

    /* renamed from: new, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC4109zg> f16101new;

    /* renamed from: try, reason: not valid java name */
    public final InterfaceC3597qy<InterfaceC3380nG> f16102try;

    public C3870vd(InterfaceC3597qy interfaceC3597qy, InterfaceC3597qy interfaceC3597qy2, C3559qI c3559qI, InterfaceC3597qy interfaceC3597qy3, InterfaceC3597qy interfaceC3597qy4) {
        this.f16098do = interfaceC3597qy;
        this.f16100if = interfaceC3597qy2;
        this.f16099for = c3559qI;
        this.f16101new = interfaceC3597qy3;
        this.f16102try = interfaceC3597qy4;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        return new C3811ud(this.f16098do.get(), this.f16100if.get(), this.f16099for.get(), this.f16101new.get(), this.f16102try.get());
    }
}
