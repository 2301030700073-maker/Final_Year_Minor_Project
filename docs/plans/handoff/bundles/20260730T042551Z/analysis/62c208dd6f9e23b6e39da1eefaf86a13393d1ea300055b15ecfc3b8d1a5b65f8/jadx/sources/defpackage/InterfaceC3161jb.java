package defpackage;

import defpackage.InterfaceC0642Za;

/* renamed from: jb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public interface InterfaceC3161jb {

    /* renamed from: jb$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: jb$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0086do extends AbstractC0459Qp implements InterfaceC3641rk<InterfaceC3161jb, Cif, InterfaceC3161jb> {

            /* renamed from: do, reason: not valid java name */
            public static final C0086do f13732do = new C0086do();

            public C0086do() {
                super(2);
            }

            @Override // defpackage.InterfaceC3641rk
            public final InterfaceC3161jb invoke(InterfaceC3161jb interfaceC3161jb, Cif cif) {
                H8 h8;
                InterfaceC3161jb interfaceC3161jb2 = interfaceC3161jb;
                Cif cif2 = cif;
                C0173Do.m401try(interfaceC3161jb2, "acc");
                C0173Do.m401try(cif2, "element");
                InterfaceC3161jb mo816this = interfaceC3161jb2.mo816this(cif2.mo6576break());
                C0405Of c0405Of = C0405Of.f2659do;
                if (mo816this == c0405Of) {
                    return cif2;
                }
                int i = InterfaceC0642Za.f4867do;
                InterfaceC0642Za.Cdo cdo = InterfaceC0642Za.Cdo.f4868do;
                InterfaceC0642Za interfaceC0642Za = (InterfaceC0642Za) mo816this.mo814new(cdo);
                if (interfaceC0642Za == null) {
                    h8 = new H8(cif2, mo816this);
                } else {
                    InterfaceC3161jb mo816this2 = mo816this.mo816this(cdo);
                    if (mo816this2 == c0405Of) {
                        return new H8(interfaceC0642Za, cif2);
                    }
                    h8 = new H8(interfaceC0642Za, new H8(cif2, mo816this2));
                }
                return h8;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static InterfaceC3161jb m7138do(InterfaceC3161jb interfaceC3161jb, InterfaceC3161jb interfaceC3161jb2) {
            C0173Do.m401try(interfaceC3161jb2, "context");
            return interfaceC3161jb2 == C0405Of.f2659do ? interfaceC3161jb : (InterfaceC3161jb) interfaceC3161jb2.mo815strictfp(interfaceC3161jb, C0086do.f13732do);
        }
    }

    /* renamed from: jb$for, reason: invalid class name */
    public interface Cfor<E extends Cif> {
    }

    /* renamed from: jb$if, reason: invalid class name */
    public interface Cif extends InterfaceC3161jb {

        /* renamed from: jb$if$do, reason: invalid class name */
        public static final class Cdo {
            /* renamed from: do, reason: not valid java name */
            public static <R> R m7139do(Cif cif, R r, InterfaceC3641rk<? super R, ? super Cif, ? extends R> interfaceC3641rk) {
                C0173Do.m401try(interfaceC3641rk, "operation");
                return interfaceC3641rk.invoke(r, cif);
            }

            /* renamed from: for, reason: not valid java name */
            public static InterfaceC3161jb m7140for(Cif cif, Cfor<?> cfor) {
                C0173Do.m401try(cfor, "key");
                return C0173Do.m394do(cif.mo6576break(), cfor) ? C0405Of.f2659do : cif;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: if, reason: not valid java name */
            public static <E extends Cif> E m7141if(Cif cif, Cfor<E> cfor) {
                C0173Do.m401try(cfor, "key");
                if (C0173Do.m394do(cif.mo6576break(), cfor)) {
                    return cif;
                }
                return null;
            }

            /* renamed from: new, reason: not valid java name */
            public static InterfaceC3161jb m7142new(Cif cif, InterfaceC3161jb interfaceC3161jb) {
                C0173Do.m401try(interfaceC3161jb, "context");
                return Cdo.m7138do(cif, interfaceC3161jb);
            }
        }

        /* renamed from: break */
        Cfor<?> mo6576break();

        @Override // defpackage.InterfaceC3161jb
        /* renamed from: new */
        <E extends Cif> E mo814new(Cfor<E> cfor);
    }

    InterfaceC3161jb k(InterfaceC3161jb interfaceC3161jb);

    /* renamed from: new */
    <E extends Cif> E mo814new(Cfor<E> cfor);

    /* renamed from: strictfp */
    <R> R mo815strictfp(R r, InterfaceC3641rk<? super R, ? super Cif, ? extends R> interfaceC3641rk);

    /* renamed from: this */
    InterfaceC3161jb mo816this(Cfor<?> cfor);
}
