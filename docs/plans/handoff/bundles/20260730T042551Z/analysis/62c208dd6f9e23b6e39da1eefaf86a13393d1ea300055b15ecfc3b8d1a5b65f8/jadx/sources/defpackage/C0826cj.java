package defpackage;

/* renamed from: cj, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0826cj<T> implements InterfaceC0650Zi {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InterfaceC0650Zi<T> f8595do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2723ez<Throwable> f8596do;

    @InterfaceC0761bd(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", l = {158}, m = "emit")
    /* renamed from: cj$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public C0826cj f8597do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f8598do;

        /* renamed from: for, reason: not valid java name */
        public int f8599for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ C0826cj<T> f8600if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Cdo(C0826cj<? super T> c0826cj, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f8600if = c0826cj;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f8598do = obj;
            this.f8599for |= Integer.MIN_VALUE;
            return this.f8600if.mo1312for(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0826cj(InterfaceC0650Zi<? super T> interfaceC0650Zi, C2723ez<Throwable> c2723ez) {
        this.f8595do = interfaceC0650Zi;
        this.f8596do = c2723ez;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // defpackage.InterfaceC0650Zi
    /* renamed from: for */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo1312for(T r5, defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof defpackage.C0826cj.Cdo
            if (r0 == 0) goto L13
            r0 = r6
            cj$do r0 = (defpackage.C0826cj.Cdo) r0
            int r1 = r0.f8599for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f8599for = r1
            goto L18
        L13:
            cj$do r0 = new cj$do
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f8598do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f8599for
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            cj r5 = r0.f8597do
            defpackage.C3645ro.m8017synchronized(r6)     // Catch: java.lang.Throwable -> L29
            goto L43
        L29:
            r6 = move-exception
            goto L49
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            defpackage.C3645ro.m8017synchronized(r6)
            Zi<T> r6 = r4.f8595do     // Catch: java.lang.Throwable -> L46
            r0.f8597do = r4     // Catch: java.lang.Throwable -> L46
            r0.f8599for = r3     // Catch: java.lang.Throwable -> L46
            java.lang.Object r5 = r6.mo1312for(r5, r0)     // Catch: java.lang.Throwable -> L46
            if (r5 != r1) goto L43
            return r1
        L43:
            kJ r5 = defpackage.C3206kJ.f13965do
            return r5
        L46:
            r5 = move-exception
            r6 = r5
            r5 = r4
        L49:
            ez<java.lang.Throwable> r5 = r5.f8596do
            r5.f12779do = r6
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0826cj.mo1312for(java.lang.Object, Wa):java.lang.Object");
    }
}
