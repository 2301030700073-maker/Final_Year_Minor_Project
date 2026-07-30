package defpackage;

import defpackage.C3201kE;

@InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore$actor$3", f = "SingleProcessDataStore.kt", l = {239, 242}, m = "invokeSuspend")
/* renamed from: nE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3378nE extends AbstractC2800gG implements InterfaceC3641rk<C3201kE.Cdo<Object>, InterfaceC0576Wa<? super C3206kJ>, Object> {

    /* renamed from: do, reason: not valid java name */
    public /* synthetic */ Object f14473do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3201kE<Object> f14474do;

    /* renamed from: new, reason: not valid java name */
    public int f14475new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3378nE(C3201kE<Object> c3201kE, InterfaceC0576Wa<? super C3378nE> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f14474do = c3201kE;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0063 A[RETURN] */
    @Override // defpackage.P4
    /* renamed from: class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo358class(java.lang.Object r6) {
        /*
            r5 = this;
            tb r0 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r1 = r5.f14475new
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L19
            if (r1 == r3) goto L15
            if (r1 != r2) goto Ld
            goto L15
        Ld:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L15:
            defpackage.C3645ro.m8017synchronized(r6)
            goto L7f
        L19:
            defpackage.C3645ro.m8017synchronized(r6)
            java.lang.Object r6 = r5.f14473do
            kE$do r6 = (defpackage.C3201kE.Cdo) r6
            boolean r1 = r6 instanceof defpackage.C3201kE.Cdo.C0087do
            kE<java.lang.Object> r4 = r5.f14474do
            if (r1 == 0) goto L70
            kE$do$do r6 = (defpackage.C3201kE.Cdo.C0087do) r6
            r5.f14475new = r3
            dF r1 = r4.f13889do
            java.lang.Object r1 = r1.m6445new()
            cF r1 = (defpackage.AbstractC0799cF) r1
            boolean r2 = r1 instanceof defpackage.C0249Hc
            if (r2 == 0) goto L37
            goto L5f
        L37:
            boolean r2 = r1 instanceof defpackage.Ry
            if (r2 == 0) goto L49
            cF<T> r6 = r6.f13901do
            if (r1 != r6) goto L5f
            java.lang.Object r6 = r4.m7225else(r5)
            if (r6 != r0) goto L46
            goto L61
        L46:
            kJ r6 = defpackage.C3206kJ.f13965do
            goto L61
        L49:
            dJ r6 = defpackage.C2627dJ.f12470do
            boolean r6 = defpackage.C0173Do.m394do(r1, r6)
            if (r6 == 0) goto L5b
            java.lang.Object r6 = r4.m7225else(r5)
            if (r6 != r0) goto L58
            goto L61
        L58:
            kJ r6 = defpackage.C3206kJ.f13965do
            goto L61
        L5b:
            boolean r6 = r1 instanceof defpackage.C0561Vh
            if (r6 != 0) goto L64
        L5f:
            kJ r6 = defpackage.C3206kJ.f13965do
        L61:
            if (r6 != r0) goto L7f
            return r0
        L64:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Can't read in final state."
            java.lang.String r0 = r0.toString()
            r6.<init>(r0)
            throw r6
        L70:
            boolean r1 = r6 instanceof defpackage.C3201kE.Cdo.Cif
            if (r1 == 0) goto L7f
            kE$do$if r6 = (defpackage.C3201kE.Cdo.Cif) r6
            r5.f14475new = r2
            java.lang.Object r6 = defpackage.C3201kE.m7221for(r4, r6, r5)
            if (r6 != r0) goto L7f
            return r0
        L7f:
            kJ r6 = defpackage.C3206kJ.f13965do
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3378nE.mo358class(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        C3378nE c3378nE = new C3378nE(this.f14474do, interfaceC0576Wa);
        c3378nE.f14473do = obj;
        return c3378nE;
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(C3201kE.Cdo<Object> cdo, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return ((C3378nE) mo359do(cdo, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
