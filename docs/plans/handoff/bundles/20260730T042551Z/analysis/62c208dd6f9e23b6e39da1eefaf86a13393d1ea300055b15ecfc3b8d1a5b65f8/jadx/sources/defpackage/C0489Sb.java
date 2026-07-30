package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: Sb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0489Sb implements InterfaceC0467Rb {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f3526do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0118Bd<InterfaceC0467Rb> f3527do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference<InterfaceC0467Rb> f3528do = new AtomicReference<>(null);

    /* renamed from: Sb$do, reason: invalid class name */
    public static final class Cdo implements InterfaceC0778bu {
    }

    public C0489Sb(InterfaceC0118Bd<InterfaceC0467Rb> interfaceC0118Bd) {
        this.f3527do = interfaceC0118Bd;
        ((C2954iw) interfaceC0118Bd).m6983do(new TK(this));
    }

    @Override // defpackage.InterfaceC0467Rb
    /* renamed from: do */
    public final InterfaceC0778bu mo2056do(String str) {
        InterfaceC0467Rb interfaceC0467Rb = this.f3528do.get();
        return interfaceC0467Rb == null ? f3526do : interfaceC0467Rb.mo2056do(str);
    }

    @Override // defpackage.InterfaceC0467Rb
    /* renamed from: for */
    public final void mo2057for(String str, String str2, long j, AbstractC3261lF abstractC3261lF) {
        ((C2954iw) this.f3527do).m6983do(new C0272Id(str, str2, j, abstractC3261lF));
    }

    @Override // defpackage.InterfaceC0467Rb
    /* renamed from: if */
    public final boolean mo2058if(String str) {
        InterfaceC0467Rb interfaceC0467Rb = this.f3528do.get();
        return interfaceC0467Rb != null && interfaceC0467Rb.mo2058if(str);
    }

    @Override // defpackage.InterfaceC0467Rb
    /* renamed from: new */
    public final boolean mo2059new() {
        InterfaceC0467Rb interfaceC0467Rb = this.f3528do.get();
        return interfaceC0467Rb != null && interfaceC0467Rb.mo2059new();
    }
}
