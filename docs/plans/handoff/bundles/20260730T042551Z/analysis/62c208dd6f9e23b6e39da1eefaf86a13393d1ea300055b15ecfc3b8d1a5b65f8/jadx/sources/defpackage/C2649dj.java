package defpackage;

/* renamed from: dj, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2649dj<T> implements InterfaceC0650Zi {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InterfaceC0650Zi<T> f12526do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2606cz f12527do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3641rk<T, InterfaceC0576Wa<? super Boolean>, Object> f12528do;

    @InterfaceC0761bd(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", l = {37, 38, 40}, m = "emit")
    /* renamed from: dj$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public C2649dj f12529do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f12530do;

        /* renamed from: for, reason: not valid java name */
        public int f12531for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ C2649dj<T> f12532if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f12533if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Cdo(C2649dj<? super T> c2649dj, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f12532if = c2649dj;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f12533if = obj;
            this.f12531for |= Integer.MIN_VALUE;
            return this.f12532if.mo1312for(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C2649dj(C2606cz c2606cz, InterfaceC0650Zi<? super T> interfaceC0650Zi, InterfaceC3641rk<? super T, ? super InterfaceC0576Wa<? super Boolean>, ? extends Object> interfaceC3641rk) {
        this.f12527do = c2606cz;
        this.f12526do = interfaceC0650Zi;
        this.f12528do = interfaceC3641rk;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // defpackage.InterfaceC0650Zi
    /* renamed from: for */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo1312for(T r7, defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof defpackage.C2649dj.Cdo
            if (r0 == 0) goto L13
            r0 = r8
            dj$do r0 = (defpackage.C2649dj.Cdo) r0
            int r1 = r0.f12531for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f12531for = r1
            goto L18
        L13:
            dj$do r0 = new dj$do
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f12533if
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f12531for
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L41
            if (r2 == r5) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            defpackage.C3645ro.m8017synchronized(r8)
            goto L84
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.f12530do
            dj r2 = r0.f12529do
            defpackage.C3645ro.m8017synchronized(r8)
            goto L68
        L3d:
            defpackage.C3645ro.m8017synchronized(r8)
            goto L55
        L41:
            defpackage.C3645ro.m8017synchronized(r8)
            cz r8 = r6.f12527do
            boolean r8 = r8.f12411do
            if (r8 == 0) goto L58
            r0.f12531for = r5
            Zi<T> r8 = r6.f12526do
            java.lang.Object r7 = r8.mo1312for(r7, r0)
            if (r7 != r1) goto L55
            return r1
        L55:
            kJ r7 = defpackage.C3206kJ.f13965do
            return r7
        L58:
            r0.f12529do = r6
            r0.f12530do = r7
            r0.f12531for = r4
            rk<T, Wa<? super java.lang.Boolean>, java.lang.Object> r8 = r6.f12528do
            java.lang.Object r8 = r8.invoke(r7, r0)
            if (r8 != r1) goto L67
            return r1
        L67:
            r2 = r6
        L68:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L87
            cz r8 = r2.f12527do
            r8.f12411do = r5
            r8 = 0
            r0.f12529do = r8
            r0.f12530do = r8
            r0.f12531for = r3
            Zi<T> r8 = r2.f12526do
            java.lang.Object r7 = r8.mo1312for(r7, r0)
            if (r7 != r1) goto L84
            return r1
        L84:
            kJ r7 = defpackage.C3206kJ.f13965do
            return r7
        L87:
            kJ r7 = defpackage.C3206kJ.f13965do
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2649dj.mo1312for(java.lang.Object, Wa):java.lang.Object");
    }
}
