package defpackage;

import defpackage.InterfaceC3161jb;

/* renamed from: eH, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2683eH {

    /* renamed from: do, reason: not valid java name */
    public static final C0174Dp f12658do = new C0174Dp("NO_THREAD_ELEMENTS", 7);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cdo f12659do = Cdo.f12662do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f12661do = Cif.f12664do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f12660do = Cfor.f12663do;

    /* renamed from: eH$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0459Qp implements InterfaceC3641rk<Object, InterfaceC3161jb.Cif, Object> {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f12662do = new Cdo();

        public Cdo() {
            super(2);
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(Object obj, InterfaceC3161jb.Cif cif) {
            InterfaceC3161jb.Cif cif2 = cif;
            if (!(cif2 instanceof InterfaceC2625dH)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int intValue = num != null ? num.intValue() : 1;
            return intValue == 0 ? cif2 : Integer.valueOf(intValue + 1);
        }
    }

    /* renamed from: eH$for, reason: invalid class name */
    public static final class Cfor extends AbstractC0459Qp implements InterfaceC3641rk<C3145jH, InterfaceC3161jb.Cif, C3145jH> {

        /* renamed from: do, reason: not valid java name */
        public static final Cfor f12663do = new Cfor();

        public Cfor() {
            super(2);
        }

        @Override // defpackage.InterfaceC3641rk
        public final C3145jH invoke(C3145jH c3145jH, InterfaceC3161jb.Cif cif) {
            C3145jH c3145jH2 = c3145jH;
            InterfaceC3161jb.Cif cif2 = cif;
            if (cif2 instanceof InterfaceC2625dH) {
                InterfaceC2625dH<Object> interfaceC2625dH = (InterfaceC2625dH) cif2;
                String m6447volatile = interfaceC2625dH.m6447volatile(c3145jH2.f13671do);
                int i = c3145jH2.f13670do;
                c3145jH2.f13673do[i] = m6447volatile;
                c3145jH2.f13670do = i + 1;
                c3145jH2.f13672do[i] = interfaceC2625dH;
            }
            return c3145jH2;
        }
    }

    /* renamed from: eH$if, reason: invalid class name */
    public static final class Cif extends AbstractC0459Qp implements InterfaceC3641rk<InterfaceC2625dH<?>, InterfaceC3161jb.Cif, InterfaceC2625dH<?>> {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f12664do = new Cif();

        public Cif() {
            super(2);
        }

        @Override // defpackage.InterfaceC3641rk
        public final InterfaceC2625dH<?> invoke(InterfaceC2625dH<?> interfaceC2625dH, InterfaceC3161jb.Cif cif) {
            InterfaceC2625dH<?> interfaceC2625dH2 = interfaceC2625dH;
            InterfaceC3161jb.Cif cif2 = cif;
            if (interfaceC2625dH2 != null) {
                return interfaceC2625dH2;
            }
            if (cif2 instanceof InterfaceC2625dH) {
                return (InterfaceC2625dH) cif2;
            }
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m6540do(InterfaceC3161jb interfaceC3161jb, Object obj) {
        if (obj == f12658do) {
            return;
        }
        if (!(obj instanceof C3145jH)) {
            Object mo815strictfp = interfaceC3161jb.mo815strictfp(null, f12661do);
            C0173Do.m396for(mo815strictfp, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            ((InterfaceC2625dH) mo815strictfp).m6446return(obj);
            return;
        }
        C3145jH c3145jH = (C3145jH) obj;
        InterfaceC2625dH<Object>[] interfaceC2625dHArr = c3145jH.f13672do;
        int length = interfaceC2625dHArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            InterfaceC2625dH<Object> interfaceC2625dH = interfaceC2625dHArr[length];
            C0173Do.m398if(interfaceC2625dH);
            interfaceC2625dH.m6446return(c3145jH.f13673do[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static final Object m6541for(InterfaceC3161jb interfaceC3161jb, Object obj) {
        if (obj == null) {
            obj = m6542if(interfaceC3161jb);
        }
        return obj == 0 ? f12658do : obj instanceof Integer ? interfaceC3161jb.mo815strictfp(new C3145jH(interfaceC3161jb, ((Number) obj).intValue()), f12660do) : ((InterfaceC2625dH) obj).m6447volatile(interfaceC3161jb);
    }

    /* renamed from: if, reason: not valid java name */
    public static final Object m6542if(InterfaceC3161jb interfaceC3161jb) {
        Object mo815strictfp = interfaceC3161jb.mo815strictfp(0, f12659do);
        C0173Do.m398if(mo815strictfp);
        return mo815strictfp;
    }
}
