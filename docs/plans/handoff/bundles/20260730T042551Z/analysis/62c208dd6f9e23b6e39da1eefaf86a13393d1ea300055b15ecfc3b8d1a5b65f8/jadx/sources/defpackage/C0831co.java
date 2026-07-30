package defpackage;

/* renamed from: co, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0831co {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f8648do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8649do;

    /* renamed from: if, reason: not valid java name */
    public final String f8650if;

    /* renamed from: co$do, reason: invalid class name */
    public static final class Cdo {

        @InterfaceC0761bd(c = "com.google.firebase.sessions.InstallationId$Companion", f = "InstallationId.kt", l = {32, 40}, m = "create")
        /* renamed from: co$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0051do extends AbstractC0620Ya {

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public Object f8652do;

            /* renamed from: for, reason: not valid java name */
            public int f8653for;

            /* renamed from: if, reason: not valid java name */
            public /* synthetic */ Object f8654if;

            public C0051do(InterfaceC0576Wa<? super C0051do> interfaceC0576Wa) {
                super(interfaceC0576Wa);
            }

            @Override // defpackage.P4
            /* renamed from: class */
            public final Object mo358class(Object obj) {
                this.f8654if = obj;
                this.f8653for |= Integer.MIN_VALUE;
                return Cdo.this.m4950do(null, this);
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(11:0|1|(2:3|(8:5|6|7|(1:(1:(7:11|12|13|14|15|16|17)(2:21|22))(2:23|24))(3:34|35|(1:37))|25|26|27|(1:29)(5:30|14|15|16|17)))|39|6|7|(0)(0)|25|26|27|(0)(0)) */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0084, code lost:
        
            r8 = r9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0063, code lost:
        
            r9 = com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
         */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0077 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m4950do(defpackage.InterfaceC3227ki r8, defpackage.InterfaceC0576Wa<? super defpackage.C0831co> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof defpackage.C0831co.Cdo.C0051do
                if (r0 == 0) goto L13
                r0 = r9
                co$do$do r0 = (defpackage.C0831co.Cdo.C0051do) r0
                int r1 = r0.f8653for
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f8653for = r1
                goto L18
            L13:
                co$do$do r0 = new co$do$do
                r0.<init>(r9)
            L18:
                java.lang.Object r9 = r0.f8654if
                tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
                int r2 = r0.f8653for
                java.lang.String r3 = ""
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L40
                if (r2 == r5) goto L38
                if (r2 != r4) goto L30
                java.lang.Object r8 = r0.f8652do
                java.lang.String r8 = (java.lang.String) r8
                defpackage.C3645ro.m8017synchronized(r9)     // Catch: java.lang.Exception -> L85
                goto L7b
            L30:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L38:
                java.lang.Object r8 = r0.f8652do
                ki r8 = (defpackage.InterfaceC3227ki) r8
                defpackage.C3645ro.m8017synchronized(r9)     // Catch: java.lang.Exception -> L63
                goto L57
            L40:
                defpackage.C3645ro.m8017synchronized(r9)
                XV r9 = r8.mo7155do()     // Catch: java.lang.Exception -> L63
                java.lang.String r2 = "firebaseInstallations.getToken(false)"
                defpackage.C0173Do.m399new(r9, r2)     // Catch: java.lang.Exception -> L63
                r0.f8652do = r8     // Catch: java.lang.Exception -> L63
                r0.f8653for = r5     // Catch: java.lang.Exception -> L63
                java.lang.Object r9 = defpackage.NG.m1509do(r9, r0)     // Catch: java.lang.Exception -> L63
                if (r9 != r1) goto L57
                return r1
            L57:
                fo r9 = (defpackage.AbstractC2771fo) r9     // Catch: java.lang.Exception -> L63
                java.lang.String r9 = r9.mo6509do()     // Catch: java.lang.Exception -> L63
                java.lang.String r2 = "{\n          firebaseInst…).await().token\n        }"
                defpackage.C0173Do.m399new(r9, r2)     // Catch: java.lang.Exception -> L63
                goto L64
            L63:
                r9 = r3
            L64:
                XV r8 = r8.mo7159if()     // Catch: java.lang.Exception -> L84
                java.lang.String r2 = "firebaseInstallations.id"
                defpackage.C0173Do.m399new(r8, r2)     // Catch: java.lang.Exception -> L84
                r0.f8652do = r9     // Catch: java.lang.Exception -> L84
                r0.f8653for = r4     // Catch: java.lang.Exception -> L84
                java.lang.Object r8 = defpackage.NG.m1509do(r8, r0)     // Catch: java.lang.Exception -> L84
                if (r8 != r1) goto L78
                return r1
            L78:
                r6 = r9
                r9 = r8
                r8 = r6
            L7b:
                java.lang.String r0 = "{\n          firebaseInst…ions.id.await()\n        }"
                defpackage.C0173Do.m399new(r9, r0)     // Catch: java.lang.Exception -> L85
                java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Exception -> L85
                r3 = r9
                goto L85
            L84:
                r8 = r9
            L85:
                co r9 = new co
                r9.<init>(r3, r8)
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0831co.Cdo.m4950do(ki, Wa):java.lang.Object");
        }
    }

    public C0831co(String str, String str2) {
        this.f8649do = str;
        this.f8650if = str2;
    }
}
