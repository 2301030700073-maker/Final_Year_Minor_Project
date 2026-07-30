package defpackage;

@InterfaceC0761bd(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {122, 122}, m = "invokeSuspend")
/* renamed from: cE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0798cE extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C2622dE<Object> f8516do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC3641rk f8517do;

    /* renamed from: new, reason: not valid java name */
    public int f8518new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0798cE(C2622dE<Object> c2622dE, InterfaceC0576Wa<? super C0798cE> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f8516do = c2622dE;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x006a -> B:6:0x006d). Please report as a decompilation issue!!! */
    @Override // defpackage.P4
    /* renamed from: class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo358class(java.lang.Object r7) {
        /*
            r6 = this;
            tb r0 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r1 = r6.f8518new
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L21
            if (r1 == r3) goto L19
            if (r1 != r2) goto L11
            defpackage.C3645ro.m8017synchronized(r7)
            r7 = r6
            goto L6d
        L11:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L19:
            rk r1 = r6.f8517do
            defpackage.C3645ro.m8017synchronized(r7)
            r4 = r7
            r7 = r6
            goto L61
        L21:
            defpackage.C3645ro.m8017synchronized(r7)
            dE<java.lang.Object> r7 = r6.f8516do
            java.util.concurrent.atomic.AtomicInteger r7 = r7.f12456do
            int r7 = r7.get()
            if (r7 <= 0) goto L30
            r7 = 1
            goto L31
        L30:
            r7 = 0
        L31:
            if (r7 == 0) goto L7a
            r7 = r6
        L34:
            dE<java.lang.Object> r1 = r7.f8516do
            rb r4 = r1.f12457do
            jb r4 = r4.mo2424try()
            Yo$if r5 = defpackage.InterfaceC0634Yo.Cif.f4763do
            jb$if r4 = r4.mo814new(r5)
            Yo r4 = (defpackage.InterfaceC0634Yo) r4
            if (r4 == 0) goto L52
            boolean r5 = r4.mo2955for()
            if (r5 == 0) goto L4d
            goto L52
        L4d:
            java.util.concurrent.CancellationException r7 = r4.mo2956goto()
            throw r7
        L52:
            V5 r4 = r1.f12455do
            rk<T, Wa<? super kJ>, java.lang.Object> r1 = r1.f12458do
            r7.f8517do = r1
            r7.f8518new = r3
            java.lang.Object r4 = r4.m2532public(r7)
            if (r4 != r0) goto L61
            return r0
        L61:
            r5 = 0
            r7.f8517do = r5
            r7.f8518new = r2
            java.lang.Object r1 = r1.invoke(r4, r7)
            if (r1 != r0) goto L6d
            return r0
        L6d:
            dE<java.lang.Object> r1 = r7.f8516do
            java.util.concurrent.atomic.AtomicInteger r1 = r1.f12456do
            int r1 = r1.decrementAndGet()
            if (r1 != 0) goto L34
            kJ r7 = defpackage.C3206kJ.f13965do
            return r7
        L7a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "Check failed."
            java.lang.String r0 = r0.toString()
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0798cE.mo358class(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        return new C0798cE(this.f8516do, interfaceC0576Wa);
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return ((C0798cE) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
