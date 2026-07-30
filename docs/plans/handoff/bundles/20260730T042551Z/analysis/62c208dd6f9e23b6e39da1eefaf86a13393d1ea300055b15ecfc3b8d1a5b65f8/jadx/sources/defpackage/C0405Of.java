package defpackage;

import defpackage.InterfaceC3161jb;
import java.io.Serializable;

/* renamed from: Of, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0405Of implements InterfaceC3161jb, Serializable {

    /* renamed from: do, reason: not valid java name */
    public static final C0405Of f2659do = new C0405Of();

    private final Object readResolve() {
        return f2659do;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // defpackage.InterfaceC3161jb
    public final InterfaceC3161jb k(InterfaceC3161jb interfaceC3161jb) {
        C0173Do.m401try(interfaceC3161jb, "context");
        return interfaceC3161jb;
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: new */
    public final <E extends InterfaceC3161jb.Cif> E mo814new(InterfaceC3161jb.Cfor<E> cfor) {
        C0173Do.m401try(cfor, "key");
        return null;
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: strictfp */
    public final <R> R mo815strictfp(R r, InterfaceC3641rk<? super R, ? super InterfaceC3161jb.Cif, ? extends R> interfaceC3641rk) {
        C0173Do.m401try(interfaceC3641rk, "operation");
        return r;
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: this */
    public final InterfaceC3161jb mo816this(InterfaceC3161jb.Cfor<?> cfor) {
        C0173Do.m401try(cfor, "key");
        return this;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
