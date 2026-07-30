package defpackage;

import defpackage.AbstractC3890vx;
import defpackage.InterfaceC0642Za;
import java.util.Map;
import java.util.concurrent.locks.LockSupport;

/* renamed from: eD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2679eD {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0512Tc<AbstractC3890vx> f12614do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3847vC f12615do;

    /* renamed from: do, reason: not valid java name */
    public static final AbstractC3890vx.Cdo<Boolean> f12609do = new AbstractC3890vx.Cdo<>("firebase_sessions_enabled");

    /* renamed from: if, reason: not valid java name */
    public static final AbstractC3890vx.Cdo<Double> f12611if = new AbstractC3890vx.Cdo<>("firebase_sessions_sampling_rate");

    /* renamed from: for, reason: not valid java name */
    public static final AbstractC3890vx.Cdo<Integer> f12610for = new AbstractC3890vx.Cdo<>("firebase_sessions_restart_timeout");

    /* renamed from: new, reason: not valid java name */
    public static final AbstractC3890vx.Cdo<Integer> f12612new = new AbstractC3890vx.Cdo<>("firebase_sessions_cache_duration");

    /* renamed from: try, reason: not valid java name */
    public static final AbstractC3890vx.Cdo<Long> f12613try = new AbstractC3890vx.Cdo<>("firebase_sessions_cache_updated_time");

    @InterfaceC0761bd(c = "com.google.firebase.sessions.settings.SettingsCache$1", f = "SettingsCache.kt", l = {46}, m = "invokeSuspend")
    /* renamed from: eD$do, reason: invalid class name */
    public static final class Cdo extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

        /* renamed from: do, reason: not valid java name */
        public C2679eD f12616do;

        /* renamed from: new, reason: not valid java name */
        public int f12618new;

        public Cdo(InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(2, interfaceC0576Wa);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            C2679eD c2679eD;
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            int i = this.f12618new;
            if (i == 0) {
                C3645ro.m8017synchronized(obj);
                C2679eD c2679eD2 = C2679eD.this;
                InterfaceC0628Yi<AbstractC3890vx> mo2273do = c2679eD2.f12614do.mo2273do();
                this.f12616do = c2679eD2;
                this.f12618new = 1;
                Object m1628throw = O4.m1628throw(mo2273do, this);
                if (m1628throw == enumC3750tb) {
                    return enumC3750tb;
                }
                c2679eD = c2679eD2;
                obj = m1628throw;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c2679eD = this.f12616do;
                C3645ro.m8017synchronized(obj);
            }
            C2679eD.m6519do(c2679eD, new C0441Pt((Map<AbstractC3890vx.Cdo<?>, Object>) C4120zr.b(((AbstractC3890vx) obj).mo1811do()), true));
            return C3206kJ.f13965do;
        }

        @Override // defpackage.P4
        /* renamed from: do */
        public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
            return C2679eD.this.new Cdo(interfaceC0576Wa);
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            return ((Cdo) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
        }
    }

    @InterfaceC0761bd(c = "com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$2", f = "SettingsCache.kt", l = {}, m = "invokeSuspend")
    /* renamed from: eD$for, reason: invalid class name */
    public static final class Cfor extends AbstractC2800gG implements InterfaceC3641rk<C0441Pt, InterfaceC0576Wa<? super C3206kJ>, Object> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ C2679eD f12619do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f12620do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ AbstractC3890vx.Cdo<T> f12621do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ T f12622if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Cfor(AbstractC3890vx.Cdo cdo, C2679eD c2679eD, Object obj, InterfaceC0576Wa interfaceC0576Wa) {
            super(2, interfaceC0576Wa);
            this.f12622if = obj;
            this.f12621do = cdo;
            this.f12619do = c2679eD;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            C3645ro.m8017synchronized(obj);
            C0441Pt c0441Pt = (C0441Pt) this.f12620do;
            AbstractC3890vx.Cdo<T> cdo = this.f12621do;
            Object obj2 = this.f12622if;
            if (obj2 != null) {
                c0441Pt.getClass();
                C0173Do.m401try(cdo, "key");
                c0441Pt.m1814new(cdo, obj2);
            } else {
                c0441Pt.getClass();
                C0173Do.m401try(cdo, "key");
                c0441Pt.m1812for();
                c0441Pt.f2834do.remove(cdo);
            }
            C2679eD.m6519do(this.f12619do, c0441Pt);
            return C3206kJ.f13965do;
        }

        @Override // defpackage.P4
        /* renamed from: do */
        public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
            Cfor cfor = new Cfor(this.f12621do, this.f12619do, this.f12622if, interfaceC0576Wa);
            cfor.f12620do = obj;
            return cfor;
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(C0441Pt c0441Pt, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
            return ((Cfor) mo359do(c0441Pt, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
        }
    }

    @InterfaceC0761bd(c = "com.google.firebase.sessions.settings.SettingsCache", f = "SettingsCache.kt", l = {119}, m = "updateConfigValue")
    /* renamed from: eD$if, reason: invalid class name */
    public static final class Cif<T> extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f12624do;

        /* renamed from: for, reason: not valid java name */
        public int f12625for;

        public Cif(InterfaceC0576Wa<? super Cif> interfaceC0576Wa) {
            super(interfaceC0576Wa);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f12624do = obj;
            this.f12625for |= Integer.MIN_VALUE;
            AbstractC3890vx.Cdo<Boolean> cdo = C2679eD.f12609do;
            return C2679eD.this.m6520for(null, null, this);
        }
    }

    public C2679eD(InterfaceC0512Tc<AbstractC3890vx> interfaceC0512Tc) {
        C0173Do.m401try(interfaceC0512Tc, "dataStore");
        this.f12614do = interfaceC0512Tc;
        InterfaceC3641rk cdo = new Cdo(null);
        C0405Of c0405Of = C0405Of.f2659do;
        Thread currentThread = Thread.currentThread();
        InterfaceC0642Za.Cdo cdo2 = InterfaceC0642Za.Cdo.f4868do;
        AbstractC3873vg m6717do = C2801gH.m6717do();
        InterfaceC3161jb m7272do = C3220kb.m7272do(c0405Of, m6717do, true);
        C3752td c3752td = C0185Ee.f871do;
        if (m7272do != c3752td && m7272do.mo814new(cdo2) == null) {
            m7272do = m7272do.k(c3752td);
        }
        A5 a5 = new A5(m7272do, currentThread, m6717do);
        a5.x(1, a5, cdo);
        AbstractC3873vg abstractC3873vg = a5.f47do;
        if (abstractC3873vg != null) {
            int i = AbstractC3873vg.f16105for;
            abstractC3873vg.t(false);
        }
        while (!Thread.interrupted()) {
            try {
                long u = abstractC3873vg != null ? abstractC3873vg.u() : Long.MAX_VALUE;
                if (!(a5.c() instanceof InterfaceC4116zn)) {
                    Object m1626synchronized = O4.m1626synchronized(a5.c());
                    U8 u8 = m1626synchronized instanceof U8 ? (U8) m1626synchronized : null;
                    if (u8 != null) {
                        throw u8.f3839do;
                    }
                    return;
                }
                LockSupport.parkNanos(a5, u);
            } finally {
                if (abstractC3873vg != null) {
                    int i2 = AbstractC3873vg.f16105for;
                    abstractC3873vg.s(false);
                }
            }
        }
        InterruptedException interruptedException = new InterruptedException();
        a5.m6583static(interruptedException);
        throw interruptedException;
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m6519do(C2679eD c2679eD, C0441Pt c0441Pt) {
        c2679eD.getClass();
        c2679eD.f12615do = new C3847vC((Boolean) c0441Pt.mo1813if(f12609do), (Double) c0441Pt.mo1813if(f12611if), (Integer) c0441Pt.mo1813if(f12610for), (Integer) c0441Pt.mo1813if(f12612new), (Long) c0441Pt.mo1813if(f12613try));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|24|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0049, code lost:
    
        r6.toString();
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.lang.Object m6520for(defpackage.AbstractC3890vx.Cdo<T> r6, T r7, defpackage.InterfaceC0576Wa<? super defpackage.C3206kJ> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof defpackage.C2679eD.Cif
            if (r0 == 0) goto L13
            r0 = r8
            eD$if r0 = (defpackage.C2679eD.Cif) r0
            int r1 = r0.f12625for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f12625for = r1
            goto L18
        L13:
            eD$if r0 = new eD$if
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f12624do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f12625for
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            defpackage.C3645ro.m8017synchronized(r8)     // Catch: java.io.IOException -> L48
            goto L4c
        L27:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L2f:
            defpackage.C3645ro.m8017synchronized(r8)
            Tc<vx> r8 = r5.f12614do     // Catch: java.io.IOException -> L48
            eD$for r2 = new eD$for     // Catch: java.io.IOException -> L48
            r4 = 0
            r2.<init>(r6, r5, r7, r4)     // Catch: java.io.IOException -> L48
            r0.f12625for = r3     // Catch: java.io.IOException -> L48
            wx r6 = new wx     // Catch: java.io.IOException -> L48
            r6.<init>(r2, r4)     // Catch: java.io.IOException -> L48
            java.lang.Object r6 = r8.mo2274if(r6, r0)     // Catch: java.io.IOException -> L48
            if (r6 != r1) goto L4c
            return r1
        L48:
            r6 = move-exception
            r6.toString()
        L4c:
            kJ r6 = defpackage.C3206kJ.f13965do
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2679eD.m6520for(vx$do, java.lang.Object, Wa):java.lang.Object");
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m6521if() {
        Integer num;
        C3847vC c3847vC = this.f12615do;
        if (c3847vC == null) {
            C0173Do.m400this("sessionConfigs");
            throw null;
        }
        if (c3847vC != null) {
            Long l = c3847vC.f16032do;
            return l == null || (num = c3847vC.f16033if) == null || (System.currentTimeMillis() - l.longValue()) / ((long) 1000) >= ((long) num.intValue());
        }
        C0173Do.m400this("sessionConfigs");
        throw null;
    }
}
