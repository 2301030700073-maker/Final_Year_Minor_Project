package defpackage;

/* renamed from: catch, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccatch<T> implements InterfaceC0628Yi<T> {

    @InterfaceC0761bd(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {230}, m = "collect")
    /* renamed from: catch$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Ccatch<T> f8560do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C2736fB f8561do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f8562do;

        /* renamed from: for, reason: not valid java name */
        public int f8563for;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Ccatch<T> ccatch, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(interfaceC0576Wa);
            this.f8560do = ccatch;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f8562do = obj;
            this.f8563for |= Integer.MIN_VALUE;
            return this.f8560do.mo2945do(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // defpackage.InterfaceC0628Yi
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo2945do(defpackage.InterfaceC0650Zi<? super T> r6, defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof defpackage.Ccatch.Cdo
            if (r0 == 0) goto L13
            r0 = r7
            catch$do r0 = (defpackage.Ccatch.Cdo) r0
            int r1 = r0.f8563for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f8563for = r1
            goto L18
        L13:
            catch$do r0 = new catch$do
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f8562do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f8563for
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            fB r6 = r0.f8561do
            defpackage.C3645ro.m8017synchronized(r7)     // Catch: java.lang.Throwable -> L29
            goto L56
        L29:
            r7 = move-exception
            goto L60
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            defpackage.C3645ro.m8017synchronized(r7)
            fB r7 = new fB
            jb r2 = r0.f4745do
            defpackage.C0173Do.m398if(r2)
            r7.<init>(r6, r2)
            r0.f8561do = r7     // Catch: java.lang.Throwable -> L5c
            r0.f8563for = r3     // Catch: java.lang.Throwable -> L5c
            r6 = r5
            iB r6 = (defpackage.C2913iB) r6     // Catch: java.lang.Throwable -> L5c
            rk<Zi<? super T>, Wa<? super kJ>, java.lang.Object> r6 = r6.f13442do     // Catch: java.lang.Throwable -> L5c
            java.lang.Object r6 = r6.invoke(r7, r0)     // Catch: java.lang.Throwable -> L5c
            if (r6 != r1) goto L50
            goto L52
        L50:
            kJ r6 = defpackage.C3206kJ.f13965do     // Catch: java.lang.Throwable -> L5c
        L52:
            if (r6 != r1) goto L55
            return r1
        L55:
            r6 = r7
        L56:
            r6.mo1744const()
            kJ r6 = defpackage.C3206kJ.f13965do
            return r6
        L5c:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
        L60:
            r6.mo1744const()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Ccatch.mo2945do(Zi, Wa):java.lang.Object");
    }
}
