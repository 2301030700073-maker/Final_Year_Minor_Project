package defpackage;

import android.content.Context;

/* loaded from: classes3.dex */
public final class SC {

    /* renamed from: do, reason: not valid java name */
    public static final Cif f3466do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3654rx f3467do = C3850vF.m8454import(C3906wC.f16307if, new C4010xz(Cdo.f3470do));

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3141jD f3468do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3141jD f3469if;

    /* renamed from: SC$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0459Qp implements InterfaceC2650dk<C3868vb, AbstractC3890vx> {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f3470do = new Cdo();

        public Cdo() {
            super(1);
        }

        @Override // defpackage.InterfaceC2650dk
        /* renamed from: this */
        public final AbstractC3890vx mo364this(C3868vb c3868vb) {
            C0173Do.m401try(c3868vb, "ex");
            Ix.m993if();
            return new C0441Pt(true, 1);
        }
    }

    @InterfaceC0761bd(c = "com.google.firebase.sessions.settings.SessionsSettings", f = "SessionsSettings.kt", l = {138, 139}, m = "updateSettings")
    /* renamed from: SC$for, reason: invalid class name */
    public static final class Cfor extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public SC f3471do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f3472do;

        /* renamed from: for, reason: not valid java name */
        public int f3473for;

        public Cfor(InterfaceC0576Wa<? super Cfor> interfaceC0576Wa) {
            super(interfaceC0576Wa);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f3472do = obj;
            this.f3473for |= Integer.MIN_VALUE;
            return SC.this.m2120if(this);
        }
    }

    /* renamed from: SC$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ InterfaceC0108Ap<Object>[] f3475do;

        static {
            C0722ay c0722ay = new C0722ay(Cif.class);
            C2782fz.f13022do.getClass();
            f3475do = new InterfaceC0108Ap[]{c0722ay};
        }
    }

    public SC(C0706ai c0706ai, InterfaceC3161jb interfaceC3161jb, InterfaceC3161jb interfaceC3161jb2, InterfaceC3227ki interfaceC3227ki) {
        c0706ai.m3147do();
        Context context = c0706ai.f4985do;
        C0173Do.m399new(context, "firebaseApp.applicationContext");
        BC.f214do.getClass();
        C3543q2 m156do = BC.m156do(c0706ai);
        C0109Aq c0109Aq = new C0109Aq(context);
        C3892vz c3892vz = new C3892vz(m156do, interfaceC3161jb);
        f3466do.getClass();
        C3774tz c3774tz = new C3774tz(interfaceC3161jb2, interfaceC3227ki, m156do, c3892vz, f3467do.m8032do(context, Cif.f3475do[0]));
        this.f3468do = c0109Aq;
        this.f3469if = c3774tz;
    }

    /* renamed from: do, reason: not valid java name */
    public final double m2119do() {
        Double mo100for = this.f3468do.mo100for();
        if (mo100for != null) {
            double doubleValue = mo100for.doubleValue();
            if (0.0d <= doubleValue && doubleValue <= 1.0d) {
                return doubleValue;
            }
        }
        Double mo100for2 = this.f3469if.mo100for();
        if (mo100for2 != null) {
            double doubleValue2 = mo100for2.doubleValue();
            if (0.0d <= doubleValue2 && doubleValue2 <= 1.0d) {
                return doubleValue2;
            }
        }
        return 1.0d;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m2120if(defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof defpackage.SC.Cfor
            if (r0 == 0) goto L13
            r0 = r6
            SC$for r0 = (defpackage.SC.Cfor) r0
            int r1 = r0.f3473for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f3473for = r1
            goto L18
        L13:
            SC$for r0 = new SC$for
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f3472do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f3473for
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L32
            if (r2 != r3) goto L2a
            defpackage.C3645ro.m8017synchronized(r6)
            goto L57
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L32:
            SC r2 = r0.f3471do
            defpackage.C3645ro.m8017synchronized(r6)
            goto L49
        L38:
            defpackage.C3645ro.m8017synchronized(r6)
            r0.f3471do = r5
            r0.f3473for = r4
            jD r6 = r5.f3468do
            java.lang.Object r6 = r6.mo101if(r0)
            if (r6 != r1) goto L48
            return r1
        L48:
            r2 = r5
        L49:
            jD r6 = r2.f3469if
            r2 = 0
            r0.f3471do = r2
            r0.f3473for = r3
            java.lang.Object r6 = r6.mo101if(r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            kJ r6 = defpackage.C3206kJ.f13965do
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.SC.m2120if(Wa):java.lang.Object");
    }
}
