package defpackage;

/* renamed from: pE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3496pE implements InterfaceC0650Zi<AbstractC0799cF<Object>> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InterfaceC0650Zi f14895do;

    @InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2", f = "SingleProcessDataStore.kt", l = {137}, m = "emit")
    /* renamed from: pE$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public /* synthetic */ Object f14896do;

        /* renamed from: for, reason: not valid java name */
        public int f14898for;

        public Cdo(InterfaceC0576Wa interfaceC0576Wa) {
            super(interfaceC0576Wa);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f14896do = obj;
            this.f14898for |= Integer.MIN_VALUE;
            return C3496pE.this.mo1312for(null, this);
        }
    }

    public C3496pE(InterfaceC0650Zi interfaceC0650Zi) {
        this.f14895do = interfaceC0650Zi;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // defpackage.InterfaceC0650Zi
    /* renamed from: for */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo1312for(defpackage.AbstractC0799cF<java.lang.Object> r5, defpackage.InterfaceC0576Wa r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof defpackage.C3496pE.Cdo
            if (r0 == 0) goto L13
            r0 = r6
            pE$do r0 = (defpackage.C3496pE.Cdo) r0
            int r1 = r0.f14898for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f14898for = r1
            goto L18
        L13:
            pE$do r0 = new pE$do
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f14896do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f14898for
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            defpackage.C3645ro.m8017synchronized(r6)
            goto L4f
        L27:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L2f:
            defpackage.C3645ro.m8017synchronized(r6)
            cF r5 = (defpackage.AbstractC0799cF) r5
            boolean r6 = r5 instanceof defpackage.Ry
            if (r6 != 0) goto L6d
            boolean r6 = r5 instanceof defpackage.C0561Vh
            if (r6 != 0) goto L68
            boolean r6 = r5 instanceof defpackage.C0249Hc
            if (r6 == 0) goto L52
            Hc r5 = (defpackage.C0249Hc) r5
            T r5 = r5.f1363do
            r0.f14898for = r3
            Zi r6 = r4.f14895do
            java.lang.Object r5 = r6.mo1312for(r5, r0)
            if (r5 != r1) goto L4f
            return r1
        L4f:
            kJ r5 = defpackage.C3206kJ.f13965do
            return r5
        L52:
            boolean r5 = r5 instanceof defpackage.C2627dJ
            if (r5 == 0) goto L62
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L62:
            Yd r5 = new Yd
            r5.<init>()
            throw r5
        L68:
            Vh r5 = (defpackage.C0561Vh) r5
            java.lang.Throwable r5 = r5.f4176do
            throw r5
        L6d:
            Ry r5 = (defpackage.Ry) r5
            java.lang.Throwable r5 = r5.f3247do
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3496pE.mo1312for(java.lang.Object, Wa):java.lang.Object");
    }
}
