package defpackage;

import defpackage.C4024yC;

/* renamed from: aj, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0707aj implements InterfaceC0628Yi<Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InterfaceC0628Yi f4997do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3759tk f4998do;

    @InterfaceC0761bd(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {113, 114}, m = "collect")
    /* renamed from: aj$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public InterfaceC0650Zi f4999do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f5001do;

        /* renamed from: for, reason: not valid java name */
        public int f5002for;

        /* renamed from: if, reason: not valid java name */
        public C0707aj f5003if;

        public Cdo(InterfaceC0576Wa interfaceC0576Wa) {
            super(interfaceC0576Wa);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f5001do = obj;
            this.f5002for |= Integer.MIN_VALUE;
            return C0707aj.this.mo2945do(null, this);
        }
    }

    public C0707aj(InterfaceC0628Yi interfaceC0628Yi, C4024yC.Ctry ctry) {
        this.f4997do = interfaceC0628Yi;
        this.f4998do = ctry;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // defpackage.InterfaceC0628Yi
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo2945do(defpackage.InterfaceC0650Zi<? super java.lang.Object> r6, defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof defpackage.C0707aj.Cdo
            if (r0 == 0) goto L13
            r0 = r7
            aj$do r0 = (defpackage.C0707aj.Cdo) r0
            int r1 = r0.f5002for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5002for = r1
            goto L18
        L13:
            aj$do r0 = new aj$do
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f5001do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f5002for
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L32
            if (r2 != r3) goto L2a
            defpackage.C3645ro.m8017synchronized(r7)
            goto L61
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L32:
            Zi r6 = r0.f4999do
            aj r2 = r0.f5003if
            defpackage.C3645ro.m8017synchronized(r7)
            goto L4d
        L3a:
            defpackage.C3645ro.m8017synchronized(r7)
            r0.f5003if = r5
            r0.f4999do = r6
            r0.f5002for = r4
            Yi r7 = r5.f4997do
            java.io.Serializable r7 = defpackage.O4.m1598case(r0, r7, r6)
            if (r7 != r1) goto L4c
            return r1
        L4c:
            r2 = r5
        L4d:
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            if (r7 == 0) goto L61
            tk r2 = r2.f4998do
            r4 = 0
            r0.f5003if = r4
            r0.f4999do = r4
            r0.f5002for = r3
            java.lang.Object r6 = r2.mo2480break(r6, r7, r0)
            if (r6 != r1) goto L61
            return r1
        L61:
            kJ r6 = defpackage.C3206kJ.f13965do
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0707aj.mo2945do(Zi, Wa):java.lang.Object");
    }
}
