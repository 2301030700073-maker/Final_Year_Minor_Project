package defpackage;

/* loaded from: classes3.dex */
public final class DC implements CC {

    /* renamed from: do, reason: not valid java name */
    public static final double f523do = Math.random();

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ int f524if = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SC f525do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0706ai f526do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3161jb f527do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f528do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3520pg f529do;

    @InterfaceC0761bd(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1", f = "SessionFirelogPublisher.kt", l = {63, 64, 70}, m = "invokeSuspend")
    /* renamed from: DC$do, reason: invalid class name */
    public static final class Cdo extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

        /* renamed from: do, reason: not valid java name */
        public BC f530do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public DC f531do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public SC f532do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0706ai f533do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0831co f534do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C4083zC f535do;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C4083zC f537if;

        /* renamed from: new, reason: not valid java name */
        public int f538new;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(C4083zC c4083zC, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(2, interfaceC0576Wa);
            this.f537if = c4083zC;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x007f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x00cb  */
        @Override // defpackage.P4
        /* renamed from: class, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo358class(java.lang.Object r20) {
            /*
                Method dump skipped, instructions count: 281
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.DC.Cdo.mo358class(java.lang.Object):java.lang.Object");
        }

        @Override // defpackage.P4
        /* renamed from: do, reason: not valid java name */
        public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
            return DC.this.new Cdo(this.f537if, interfaceC0576Wa);
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            return ((Cdo) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
        }
    }

    public DC(C0706ai c0706ai, InterfaceC3227ki interfaceC3227ki, SC sc, C3461og c3461og, InterfaceC3161jb interfaceC3161jb) {
        this.f526do = c0706ai;
        this.f528do = interfaceC3227ki;
        this.f525do = sc;
        this.f529do = c3461og;
        this.f527do = interfaceC3161jb;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m357if(defpackage.DC r4, defpackage.InterfaceC0576Wa r5) {
        /*
            r4.getClass()
            boolean r0 = r5 instanceof defpackage.EC
            if (r0 == 0) goto L16
            r0 = r5
            EC r0 = (defpackage.EC) r0
            int r1 = r0.f759for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f759for = r1
            goto L1b
        L16:
            EC r0 = new EC
            r0.<init>(r4, r5)
        L1b:
            java.lang.Object r5 = r0.f758do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f759for
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2c
            DC r4 = r0.f757do
            defpackage.C3645ro.m8017synchronized(r5)
            goto L44
        L2c:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L34:
            defpackage.C3645ro.m8017synchronized(r5)
            r0.f757do = r4
            r0.f759for = r3
            SC r5 = r4.f525do
            java.lang.Object r5 = r5.m2120if(r0)
            if (r5 != r1) goto L44
            goto L7b
        L44:
            SC r5 = r4.f525do
            jD r0 = r5.f3468do
            java.lang.Boolean r0 = r0.mo102new()
            if (r0 == 0) goto L53
            boolean r5 = r0.booleanValue()
            goto L61
        L53:
            jD r5 = r5.f3469if
            java.lang.Boolean r5 = r5.mo102new()
            if (r5 == 0) goto L60
            boolean r5 = r5.booleanValue()
            goto L61
        L60:
            r5 = 1
        L61:
            if (r5 != 0) goto L66
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            goto L7b
        L66:
            SC r4 = r4.f525do
            double r4 = r4.m2119do()
            double r0 = defpackage.DC.f523do
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 > 0) goto L73
            goto L74
        L73:
            r3 = 0
        L74:
            if (r3 != 0) goto L79
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            goto L7b
        L79:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
        L7b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.DC.m357if(DC, Wa):java.lang.Object");
    }

    @Override // defpackage.CC
    /* renamed from: do */
    public final void mo253do(C4083zC c4083zC) {
        C0315Kc.m1177static(C3691sb.m8132do(this.f527do), new Cdo(c4083zC, null));
    }
}
