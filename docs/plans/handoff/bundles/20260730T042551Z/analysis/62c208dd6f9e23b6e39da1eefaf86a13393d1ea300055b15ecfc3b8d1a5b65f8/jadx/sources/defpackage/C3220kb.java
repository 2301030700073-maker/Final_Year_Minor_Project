package defpackage;

import defpackage.InterfaceC3161jb;

/* renamed from: kb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3220kb {

    /* renamed from: kb$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0459Qp implements InterfaceC3641rk<InterfaceC3161jb, InterfaceC3161jb.Cif, InterfaceC3161jb> {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f14006do = new Cdo();

        public Cdo() {
            super(2);
        }

        @Override // defpackage.InterfaceC3641rk
        public final InterfaceC3161jb invoke(InterfaceC3161jb interfaceC3161jb, InterfaceC3161jb.Cif cif) {
            InterfaceC3161jb interfaceC3161jb2 = interfaceC3161jb;
            InterfaceC3161jb.Cif cif2 = cif;
            return cif2 instanceof InterfaceC2699eb ? interfaceC3161jb2.k(((InterfaceC2699eb) cif2).m6565case()) : interfaceC3161jb2.k(cif2);
        }
    }

    /* renamed from: kb$if, reason: invalid class name */
    public static final class Cif extends AbstractC0459Qp implements InterfaceC3641rk<InterfaceC3161jb, InterfaceC3161jb.Cif, InterfaceC3161jb> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ C2723ez<InterfaceC3161jb> f14007do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ boolean f14008do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(C2723ez<InterfaceC3161jb> c2723ez, boolean z) {
            super(2);
            this.f14007do = c2723ez;
            this.f14008do = z;
        }

        /* JADX WARN: Type inference failed for: r1v5, types: [T, jb] */
        @Override // defpackage.InterfaceC3641rk
        public final InterfaceC3161jb invoke(InterfaceC3161jb interfaceC3161jb, InterfaceC3161jb.Cif cif) {
            InterfaceC3161jb interfaceC3161jb2 = interfaceC3161jb;
            InterfaceC3161jb.Cif cif2 = cif;
            if (!(cif2 instanceof InterfaceC2699eb)) {
                return interfaceC3161jb2.k(cif2);
            }
            C2723ez<InterfaceC3161jb> c2723ez = this.f14007do;
            if (c2723ez.f12779do.mo814new(cif2.mo6576break()) != null) {
                c2723ez.f12779do = c2723ez.f12779do.mo816this(cif2.mo6576break());
                return interfaceC3161jb2.k(((InterfaceC2699eb) cif2).m6566continue());
            }
            InterfaceC2699eb interfaceC2699eb = (InterfaceC2699eb) cif2;
            if (this.f14008do) {
                interfaceC2699eb = interfaceC2699eb.m6565case();
            }
            return interfaceC3161jb2.k(interfaceC2699eb);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    /* renamed from: do, reason: not valid java name */
    public static final InterfaceC3161jb m7272do(InterfaceC3161jb interfaceC3161jb, InterfaceC3161jb interfaceC3161jb2, boolean z) {
        Boolean bool = Boolean.FALSE;
        C3279lb c3279lb = C3279lb.f14170do;
        boolean booleanValue = ((Boolean) interfaceC3161jb.mo815strictfp(bool, c3279lb)).booleanValue();
        boolean booleanValue2 = ((Boolean) interfaceC3161jb2.mo815strictfp(bool, c3279lb)).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return interfaceC3161jb.k(interfaceC3161jb2);
        }
        C2723ez c2723ez = new C2723ez();
        c2723ez.f12779do = interfaceC3161jb2;
        C0405Of c0405Of = C0405Of.f2659do;
        InterfaceC3161jb interfaceC3161jb3 = (InterfaceC3161jb) interfaceC3161jb.mo815strictfp(c0405Of, new Cif(c2723ez, z));
        if (booleanValue2) {
            c2723ez.f12779do = ((InterfaceC3161jb) c2723ez.f12779do).mo815strictfp(c0405Of, Cdo.f14006do);
        }
        return interfaceC3161jb3.k((InterfaceC3161jb) c2723ez.f12779do);
    }

    /* renamed from: if, reason: not valid java name */
    public static final C2744fJ<?> m7273if(InterfaceC0576Wa<?> interfaceC0576Wa, InterfaceC3161jb interfaceC3161jb, Object obj) {
        C2744fJ<?> c2744fJ = null;
        if (!(interfaceC0576Wa instanceof InterfaceC3809ub)) {
            return null;
        }
        if (!(interfaceC3161jb.mo814new(C2803gJ.f13086do) != null)) {
            return null;
        }
        InterfaceC3809ub interfaceC3809ub = (InterfaceC3809ub) interfaceC0576Wa;
        while (true) {
            if ((interfaceC3809ub instanceof C0097Ae) || (interfaceC3809ub = interfaceC3809ub.mo1126catch()) == null) {
                break;
            }
            if (interfaceC3809ub instanceof C2744fJ) {
                c2744fJ = (C2744fJ) interfaceC3809ub;
                break;
            }
        }
        if (c2744fJ != null) {
            c2744fJ.z(interfaceC3161jb, obj);
        }
        return c2744fJ;
    }
}
