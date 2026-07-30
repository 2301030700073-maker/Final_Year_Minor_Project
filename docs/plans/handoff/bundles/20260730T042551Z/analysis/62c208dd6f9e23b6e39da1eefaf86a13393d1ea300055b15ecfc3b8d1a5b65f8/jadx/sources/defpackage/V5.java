package defpackage;

import com.google.android.gms.internal.ads.zzfol;
import defpackage.C3201kE;
import defpackage.C3371n7;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public class V5<E> {
    private volatile Object _closeCause;
    private volatile long bufferEnd;
    private volatile Object bufferEndSegment;
    private volatile Object closeHandler;
    private volatile long completedExpandBuffersAndPauseFlag;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f4034do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2650dk<E, C3206kJ> f4035do;
    private volatile Object receiveSegment;
    private volatile long receivers;
    private volatile Object sendSegment;
    private volatile long sendersAndCloseStatus;

    /* renamed from: do, reason: not valid java name */
    public static final AtomicLongFieldUpdater f4025do = AtomicLongFieldUpdater.newUpdater(V5.class, "sendersAndCloseStatus");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicLongFieldUpdater f4029if = AtomicLongFieldUpdater.newUpdater(V5.class, "receivers");

    /* renamed from: for, reason: not valid java name */
    public static final AtomicLongFieldUpdater f4027for = AtomicLongFieldUpdater.newUpdater(V5.class, "bufferEnd");

    /* renamed from: new, reason: not valid java name */
    public static final AtomicLongFieldUpdater f4031new = AtomicLongFieldUpdater.newUpdater(V5.class, "completedExpandBuffersAndPauseFlag");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f4026do = AtomicReferenceFieldUpdater.newUpdater(V5.class, Object.class, "sendSegment");

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f4030if = AtomicReferenceFieldUpdater.newUpdater(V5.class, Object.class, "receiveSegment");

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f4028for = AtomicReferenceFieldUpdater.newUpdater(V5.class, Object.class, "bufferEndSegment");

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f4032new = AtomicReferenceFieldUpdater.newUpdater(V5.class, Object.class, "_closeCause");

    /* renamed from: try, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f4033try = AtomicReferenceFieldUpdater.newUpdater(V5.class, Object.class, "closeHandler");

    /* renamed from: V5$do, reason: invalid class name */
    public final class Cdo implements GL {
        @Override // defpackage.GL
        /* renamed from: for */
        public final void mo728for(WB<?> wb, int i) {
        }
    }

    /* renamed from: V5$for, reason: invalid class name */
    public static final class Cfor extends AbstractC0459Qp implements InterfaceC3759tk<InterfaceC0677aC<?>, Object, Object, InterfaceC2650dk<? super Throwable, ? extends C3206kJ>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ V5<E> f4036do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(V5<E> v5) {
            super(3);
            this.f4036do = v5;
        }

        @Override // defpackage.InterfaceC3759tk
        /* renamed from: break */
        public final Object mo2480break(InterfaceC0650Zi interfaceC0650Zi, Object obj, Object obj2) {
            return new W5(obj2, this.f4036do, (InterfaceC0677aC) interfaceC0650Zi);
        }
    }

    /* renamed from: V5$if, reason: invalid class name */
    public static final class Cif implements GL {
        @Override // defpackage.GL
        /* renamed from: for */
        public final void mo728for(WB<?> wb, int i) {
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V5(int i, InterfaceC2650dk<? super E, C3206kJ> interfaceC2650dk) {
        this.f4034do = i;
        this.f4035do = interfaceC2650dk;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Creturn.m7981if("Invalid channel capacity: ", i, ", should be >=0").toString());
        }
        C3430o7<Object> c3430o7 = Y5.f4649do;
        this.bufferEnd = i != 0 ? i != Integer.MAX_VALUE ? i : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag = m2516break();
        C3430o7<Object> c3430o72 = new C3430o7<>(0L, null, this, 3);
        this.sendSegment = c3430o72;
        this.receiveSegment = c3430o72;
        if (m2528import()) {
            c3430o72 = Y5.f4649do;
            C0173Do.m396for(c3430o72, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment = c3430o72;
        if (interfaceC2650dk != 0) {
            new Cfor(this);
        }
        this._closeCause = Y5.f4657super;
    }

    /* renamed from: do, reason: not valid java name */
    public static final C3430o7 m2514do(V5 v5, long j, C3430o7 c3430o7) {
        Object m1624super;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j2;
        long j3;
        int i;
        boolean z;
        v5.getClass();
        C3430o7<Object> c3430o72 = Y5.f4649do;
        X5 x5 = X5.f4464do;
        do {
            m1624super = O4.m1624super(c3430o7, j, x5);
            if (C3850vF.m8450final(m1624super)) {
                break;
            }
            WB m8447const = C3850vF.m8447const(m1624super);
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4026do;
                WB wb = (WB) atomicReferenceFieldUpdater.get(v5);
                z = true;
                if (wb.f4345do >= m8447const.f4345do) {
                    break;
                }
                boolean z2 = false;
                if (!m8447const.m2713this()) {
                    z = false;
                    break;
                }
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(v5, wb, m8447const)) {
                        z2 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(v5) != wb) {
                        break;
                    }
                }
                if (z2) {
                    if (wb.m2714try()) {
                        wb.m8789new();
                    }
                } else if (m8447const.m2714try()) {
                    m8447const.m8789new();
                }
            }
        } while (!z);
        if (C3850vF.m8450final(m1624super)) {
            v5.m2517case();
            if (((WB) c3430o7).f4345do * Y5.f4647do < v5.m2519class()) {
                c3430o7.m8787do();
            }
        } else {
            C3430o7 c3430o73 = (C3430o7) C3850vF.m8447const(m1624super);
            long j4 = ((WB) c3430o73).f4345do;
            if (j4 <= j) {
                return c3430o73;
            }
            long j5 = j4 * Y5.f4647do;
            do {
                atomicLongFieldUpdater = f4025do;
                j2 = atomicLongFieldUpdater.get(v5);
                j3 = 1152921504606846975L & j2;
                if (j3 >= j5) {
                    break;
                }
                i = (int) (j2 >> 60);
                C3430o7<Object> c3430o74 = Y5.f4649do;
            } while (!atomicLongFieldUpdater.compareAndSet(v5, j2, (i << 60) + j3));
            if (((WB) c3430o73).f4345do * Y5.f4647do < v5.m2519class()) {
                c3430o73.m8787do();
            }
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public static final int m2515if(V5 v5, C3430o7 c3430o7, int i, C3201kE.Cdo cdo, long j, C0174Dp c0174Dp, boolean z) {
        v5.getClass();
        c3430o7.m7692const(i, cdo);
        if (z) {
            return v5.m2525finally(c3430o7, i, cdo, j, c0174Dp, z);
        }
        Object m7690catch = c3430o7.m7690catch(i);
        if (m7690catch == null) {
            if (v5.m2526for(j)) {
                if (c3430o7.m7689break(i, null, Y5.f4648do)) {
                    return 1;
                }
            } else {
                if (c0174Dp == null) {
                    return 3;
                }
                if (c3430o7.m7689break(i, null, c0174Dp)) {
                    return 2;
                }
            }
        } else if (m7690catch instanceof GL) {
            c3430o7.m7692const(i, null);
            if (v5.m2536switch(m7690catch, cdo)) {
                c3430o7.m7693final(i, Y5.f4643case);
                return 0;
            }
            C0174Dp c0174Dp2 = Y5.f4653goto;
            if (c3430o7.f14691do.getAndSet((i * 2) + 1, c0174Dp2) != c0174Dp2) {
                c3430o7.m7691class(i, true);
            }
            return 5;
        }
        return v5.m2525finally(c3430o7, i, cdo, j, c0174Dp, z);
    }

    /* renamed from: break, reason: not valid java name */
    public final long m2516break() {
        return f4027for.get(this);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m2517case() {
        m2538throw(f4025do.get(this), false);
    }

    /* renamed from: catch, reason: not valid java name */
    public final Throwable m2518catch() {
        return (Throwable) f4032new.get(this);
    }

    /* renamed from: class, reason: not valid java name */
    public final long m2519class() {
        return f4029if.get(this);
    }

    /* renamed from: const, reason: not valid java name */
    public final Throwable m2520const() {
        Throwable m2518catch = m2518catch();
        return m2518catch == null ? new C2910i8("Channel was closed") : m2518catch;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d5, code lost:
    
        return defpackage.C3206kJ.f13965do;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m2521default(defpackage.C3201kE.Cdo r23) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.V5.m2521default(kE$do):java.lang.Object");
    }

    /* renamed from: else, reason: not valid java name */
    public final void m2522else(long j) {
        ZE m1167goto;
        C3430o7<E> c3430o7 = (C3430o7) f4030if.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f4029if;
            long j2 = atomicLongFieldUpdater.get(this);
            if (j < Math.max(this.f4034do + j2, m2516break())) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j2, j2 + 1)) {
                long j3 = Y5.f4647do;
                long j4 = j2 / j3;
                int i = (int) (j2 % j3);
                if (((WB) c3430o7).f4345do != j4) {
                    C3430o7<E> m2537this = m2537this(j4, c3430o7);
                    if (m2537this == null) {
                        continue;
                    } else {
                        c3430o7 = m2537this;
                    }
                }
                Object m2523extends = m2523extends(c3430o7, i, j2, null);
                if (m2523extends != Y5.f4645class) {
                    c3430o7.m8787do();
                    InterfaceC2650dk<E, C3206kJ> interfaceC2650dk = this.f4035do;
                    if (interfaceC2650dk != null && (m1167goto = C0315Kc.m1167goto(interfaceC2650dk, m2523extends, null)) != null) {
                        throw m1167goto;
                    }
                } else if (j2 < m2524final()) {
                    c3430o7.m8787do();
                }
            }
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final Object m2523extends(C3430o7<E> c3430o7, int i, long j, Object obj) {
        Object m7690catch = c3430o7.m7690catch(i);
        AtomicReferenceArray atomicReferenceArray = c3430o7.f14691do;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f4025do;
        if (m7690catch == null) {
            if (j >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return Y5.f4644catch;
                }
                if (c3430o7.m7689break(i, m7690catch, obj)) {
                    m2527goto();
                    return Y5.f4642break;
                }
            }
        } else if (m7690catch == Y5.f4648do && c3430o7.m7689break(i, m7690catch, Y5.f4643case)) {
            m2527goto();
            Object obj2 = atomicReferenceArray.get(i * 2);
            c3430o7.m7692const(i, null);
            return obj2;
        }
        while (true) {
            Object m7690catch2 = c3430o7.m7690catch(i);
            if (m7690catch2 == null || m7690catch2 == Y5.f4655if) {
                if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (c3430o7.m7689break(i, m7690catch2, Y5.f4659try)) {
                        m2527goto();
                        return Y5.f4645class;
                    }
                } else {
                    if (obj == null) {
                        return Y5.f4644catch;
                    }
                    if (c3430o7.m7689break(i, m7690catch2, obj)) {
                        m2527goto();
                        return Y5.f4642break;
                    }
                }
            } else if (m7690catch2 != Y5.f4648do) {
                C0174Dp c0174Dp = Y5.f4650else;
                if (m7690catch2 == c0174Dp) {
                    return Y5.f4645class;
                }
                if (m7690catch2 == Y5.f4659try) {
                    return Y5.f4645class;
                }
                if (m7690catch2 == Y5.f4658this) {
                    m2527goto();
                    return Y5.f4645class;
                }
                if (m7690catch2 != Y5.f4656new && c3430o7.m7689break(i, m7690catch2, Y5.f4652for)) {
                    boolean z = m7690catch2 instanceof HL;
                    if (z) {
                        m7690catch2 = ((HL) m7690catch2).f1343do;
                    }
                    if (m2539throws(m7690catch2, c3430o7, i)) {
                        c3430o7.m7693final(i, Y5.f4643case);
                        m2527goto();
                        Object obj3 = atomicReferenceArray.get(i * 2);
                        c3430o7.m7692const(i, null);
                        return obj3;
                    }
                    c3430o7.m7693final(i, c0174Dp);
                    c3430o7.m7691class(i, false);
                    if (z) {
                        m2527goto();
                    }
                    return Y5.f4645class;
                }
            } else if (c3430o7.m7689break(i, m7690catch2, Y5.f4643case)) {
                m2527goto();
                Object obj4 = atomicReferenceArray.get(i * 2);
                c3430o7.m7692const(i, null);
                return obj4;
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final long m2524final() {
        return f4025do.get(this) & 1152921504606846975L;
    }

    /* renamed from: finally, reason: not valid java name */
    public final int m2525finally(C3430o7 c3430o7, int i, C3201kE.Cdo cdo, long j, C0174Dp c0174Dp, boolean z) {
        while (true) {
            Object m7690catch = c3430o7.m7690catch(i);
            if (m7690catch == null) {
                if (!m2526for(j) || z) {
                    if (z) {
                        if (c3430o7.m7689break(i, null, Y5.f4650else)) {
                            c3430o7.m7691class(i, false);
                            return 4;
                        }
                    } else {
                        if (c0174Dp == null) {
                            return 3;
                        }
                        if (c3430o7.m7689break(i, null, c0174Dp)) {
                            return 2;
                        }
                    }
                } else if (c3430o7.m7689break(i, null, Y5.f4648do)) {
                    return 1;
                }
            } else {
                if (m7690catch != Y5.f4655if) {
                    C0174Dp c0174Dp2 = Y5.f4653goto;
                    if (m7690catch == c0174Dp2) {
                        c3430o7.m7692const(i, null);
                        return 5;
                    }
                    if (m7690catch == Y5.f4659try) {
                        c3430o7.m7692const(i, null);
                        return 5;
                    }
                    if (m7690catch == Y5.f4658this) {
                        c3430o7.m7692const(i, null);
                        m2517case();
                        return 4;
                    }
                    c3430o7.m7692const(i, null);
                    if (m7690catch instanceof HL) {
                        m7690catch = ((HL) m7690catch).f1343do;
                    }
                    if (m2536switch(m7690catch, cdo)) {
                        c3430o7.m7693final(i, Y5.f4643case);
                        return 0;
                    }
                    if (c3430o7.f14691do.getAndSet((i * 2) + 1, c0174Dp2) != c0174Dp2) {
                        c3430o7.m7691class(i, true);
                    }
                    return 5;
                }
                if (c3430o7.m7689break(i, m7690catch, Y5.f4648do)) {
                    return 1;
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m2526for(long j) {
        return j < m2516break() || j < m2519class() + ((long) this.f4034do);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0012 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dc A[SYNTHETIC] */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2527goto() {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.V5.m2527goto():void");
    }

    /* renamed from: import, reason: not valid java name */
    public final boolean m2528import() {
        long m2516break = m2516break();
        return m2516break == 0 || m2516break == Long.MAX_VALUE;
    }

    /* renamed from: native, reason: not valid java name */
    public final void m2529native(long j, C3430o7<E> c3430o7) {
        boolean z;
        C3430o7<E> c3430o72;
        C3430o7<E> c3430o73;
        while (((WB) c3430o7).f4345do < j && (c3430o73 = (C3430o7) c3430o7.m8788if()) != null) {
            c3430o7 = c3430o73;
        }
        while (true) {
            if (!c3430o7.mo2711for() || (c3430o72 = (C3430o7) c3430o7.m8788if()) == null) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4028for;
                    WB wb = (WB) atomicReferenceFieldUpdater.get(this);
                    z = true;
                    if (wb.f4345do >= ((WB) c3430o7).f4345do) {
                        break;
                    }
                    boolean z2 = false;
                    if (!c3430o7.m2713this()) {
                        z = false;
                        break;
                    }
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, wb, c3430o7)) {
                            z2 = true;
                            break;
                        } else if (atomicReferenceFieldUpdater.get(this) != wb) {
                            break;
                        }
                    }
                    if (z2) {
                        if (wb.m2714try()) {
                            wb.m8789new();
                        }
                    } else if (c3430o7.m2714try()) {
                        c3430o7.m8789new();
                    }
                }
                if (z) {
                    return;
                }
            } else {
                c3430o7 = c3430o72;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m2530new(Throwable th) {
        boolean z;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        long j2;
        int i;
        Object obj;
        boolean z2;
        C0174Dp c0174Dp = Y5.f4657super;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4032new;
            if (atomicReferenceFieldUpdater.compareAndSet(this, c0174Dp, th)) {
                z = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != c0174Dp) {
                z = false;
                break;
            }
        }
        do {
            atomicLongFieldUpdater = f4025do;
            j = atomicLongFieldUpdater.get(this);
            int i2 = (int) (j >> 60);
            if (i2 == 0) {
                j2 = j & 1152921504606846975L;
                C3430o7<Object> c3430o7 = Y5.f4649do;
                i = 2;
            } else {
                if (i2 != 1) {
                    break;
                }
                j2 = j & 1152921504606846975L;
                C3430o7<Object> c3430o72 = Y5.f4649do;
                i = 3;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, (i << 60) + j2));
        m2517case();
        if (z) {
            do {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4033try;
                obj = atomicReferenceFieldUpdater2.get(this);
                C0174Dp c0174Dp2 = obj == null ? Y5.f4646const : Y5.f4651final;
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, c0174Dp2)) {
                        z2 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater2.get(this) != obj) {
                        z2 = false;
                        break;
                    }
                }
            } while (!z2);
            if (obj != null) {
                JI.m1035do(1, obj);
                ((InterfaceC2650dk) obj).mo364this(m2518catch());
            }
        }
        return z;
    }

    /* renamed from: package, reason: not valid java name */
    public final void m2531package(long j) {
        long j2;
        long j3;
        if (m2528import()) {
            return;
        }
        while (m2516break() <= j) {
        }
        int i = Y5.f4654if;
        int i2 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f4031new;
            if (i2 >= i) {
                do {
                    j2 = atomicLongFieldUpdater.get(this);
                } while (!atomicLongFieldUpdater.compareAndSet(this, j2, 4611686018427387904L + (j2 & 4611686018427387903L)));
                while (true) {
                    long m2516break = m2516break();
                    long j4 = atomicLongFieldUpdater.get(this);
                    long j5 = j4 & 4611686018427387903L;
                    boolean z = (j4 & 4611686018427387904L) != 0;
                    if (m2516break == j5 && m2516break == m2516break()) {
                        break;
                    } else if (!z) {
                        atomicLongFieldUpdater.compareAndSet(this, j4, j5 + 4611686018427387904L);
                    }
                }
                do {
                    j3 = atomicLongFieldUpdater.get(this);
                } while (!atomicLongFieldUpdater.compareAndSet(this, j3, 0 + (j3 & 4611686018427387903L)));
                return;
            }
            long m2516break2 = m2516break();
            if (m2516break2 == (atomicLongFieldUpdater.get(this) & 4611686018427387903L) && m2516break2 == m2516break()) {
                return;
            } else {
                i2++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [U6] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* renamed from: public, reason: not valid java name */
    public final Object m2532public(C0798cE c0798cE) {
        C3430o7<E> c3430o7;
        ?? r10;
        Object m2523extends;
        U6 u6;
        C0641Yv c0641Yv;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4030if;
        C3430o7<E> c3430o72 = (C3430o7) atomicReferenceFieldUpdater.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f4025do;
            if (m2538throw(atomicLongFieldUpdater.get(this), true)) {
                Throwable m2518catch = m2518catch();
                if (m2518catch == null) {
                    m2518catch = new C2851h8();
                }
                int i = RE.f3159do;
                throw m2518catch;
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = f4029if;
            long andIncrement = atomicLongFieldUpdater2.getAndIncrement(this);
            long j = Y5.f4647do;
            long j2 = andIncrement / j;
            int i2 = (int) (andIncrement % j);
            if (((WB) c3430o72).f4345do != j2) {
                C3430o7<E> m2537this = m2537this(j2, c3430o72);
                if (m2537this == null) {
                    continue;
                } else {
                    c3430o7 = m2537this;
                }
            } else {
                c3430o7 = c3430o72;
            }
            Object m2523extends2 = m2523extends(c3430o7, i2, andIncrement, null);
            C0174Dp c0174Dp = Y5.f4642break;
            if (m2523extends2 == c0174Dp) {
                throw new IllegalStateException("unexpected".toString());
            }
            C0174Dp c0174Dp2 = Y5.f4645class;
            if (m2523extends2 != c0174Dp2) {
                if (m2523extends2 != Y5.f4644catch) {
                    c3430o7.m8787do();
                    return m2523extends2;
                }
                U6 m7999finally = C3645ro.m7999finally(C3645ro.m8008package(c0798cE));
                C0174Dp c0174Dp3 = c0174Dp;
                try {
                    m2523extends = m2523extends(c3430o7, i2, andIncrement, m7999finally);
                } catch (Throwable th) {
                    th = th;
                    r10 = m7999finally;
                }
                try {
                    if (m2523extends == c0174Dp3) {
                        u6 = m7999finally;
                        u6.mo728for(c3430o7, i2);
                    } else {
                        u6 = m7999finally;
                        InterfaceC2650dk<E, C3206kJ> interfaceC2650dk = this.f4035do;
                        InterfaceC3161jb interfaceC3161jb = u6.f3832do;
                        if (m2523extends == c0174Dp2) {
                            if (andIncrement < m2524final()) {
                                c3430o7.m8787do();
                            }
                            C3430o7<E> c3430o73 = (C3430o7) atomicReferenceFieldUpdater.get(this);
                            while (true) {
                                if (m2538throw(atomicLongFieldUpdater.get(this), true)) {
                                    Throwable m2518catch2 = m2518catch();
                                    if (m2518catch2 == null) {
                                        m2518catch2 = new C2851h8();
                                    }
                                    u6.mo1746while(C3645ro.m8004import(m2518catch2));
                                } else {
                                    long andIncrement2 = atomicLongFieldUpdater2.getAndIncrement(this);
                                    long j3 = Y5.f4647do;
                                    long j4 = andIncrement2 / j3;
                                    int i3 = (int) (andIncrement2 % j3);
                                    if (((WB) c3430o73).f4345do != j4) {
                                        C3430o7<E> m2537this2 = m2537this(j4, c3430o73);
                                        if (m2537this2 != null) {
                                            c3430o73 = m2537this2;
                                        }
                                    }
                                    InterfaceC3161jb interfaceC3161jb2 = interfaceC3161jb;
                                    m2523extends = m2523extends(c3430o73, i3, andIncrement2, u6);
                                    if (m2523extends == Y5.f4642break) {
                                        u6.mo728for(c3430o73, i3);
                                        break;
                                    }
                                    if (m2523extends == Y5.f4645class) {
                                        if (andIncrement2 < m2524final()) {
                                            c3430o73.m8787do();
                                        }
                                        interfaceC3161jb = interfaceC3161jb2;
                                    } else {
                                        if (m2523extends == Y5.f4644catch) {
                                            throw new IllegalStateException("unexpected".toString());
                                        }
                                        c3430o73.m8787do();
                                        if (interfaceC2650dk != null) {
                                            c0641Yv = new C0641Yv(interfaceC2650dk, m2523extends, interfaceC3161jb2);
                                        }
                                    }
                                }
                            }
                        } else {
                            c3430o7.m8787do();
                            if (interfaceC2650dk != null) {
                                c0641Yv = new C0641Yv(interfaceC2650dk, m2523extends, interfaceC3161jb);
                                u6.mo2220throw(m2523extends, c0641Yv);
                            }
                            c0641Yv = null;
                            u6.mo2220throw(m2523extends, c0641Yv);
                        }
                    }
                    return u6.m2358return();
                } catch (Throwable th2) {
                    th = th2;
                    r10 = c0174Dp3;
                    r10.m2355package();
                    throw th;
                }
            }
            if (andIncrement < m2524final()) {
                c3430o7.m8787do();
            }
            c3430o72 = c3430o7;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final void m2533return(GL gl, boolean z) {
        Throwable m2520const;
        if (gl instanceof Cif) {
            ((Cif) gl).getClass();
            throw null;
        }
        if (gl instanceof T6) {
            InterfaceC0576Wa interfaceC0576Wa = (InterfaceC0576Wa) gl;
            if (z) {
                m2520const = m2518catch();
                if (m2520const == null) {
                    m2520const = new C2851h8();
                }
            } else {
                m2520const = m2520const();
            }
            interfaceC0576Wa.mo1746while(C3645ro.m8004import(m2520const));
            return;
        }
        if (gl instanceof Zy) {
            ((Zy) gl).getClass();
            m2518catch();
            throw null;
        }
        if (gl instanceof Cdo) {
            ((Cdo) gl).getClass();
            C0173Do.m398if(null);
            throw null;
        }
        if (gl instanceof InterfaceC0677aC) {
            ((InterfaceC0677aC) gl).mo2979do(this, Y5.f4658this);
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + gl).toString());
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final Object m2534static() {
        C3430o7<E> c3430o7;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f4029if;
        long j = atomicLongFieldUpdater.get(this);
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f4025do;
        long j2 = atomicLongFieldUpdater2.get(this);
        if (m2538throw(j2, true)) {
            return new C3371n7.Cdo(m2518catch());
        }
        long j3 = j2 & 1152921504606846975L;
        Object obj = C3371n7.f14464do;
        if (j >= j3) {
            return obj;
        }
        zzfol zzfolVar = Y5.f4653goto;
        C3430o7<E> c3430o72 = (C3430o7) f4030if.get(this);
        while (!m2538throw(atomicLongFieldUpdater2.get(this), true)) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = Y5.f4647do;
            long j5 = andIncrement / j4;
            int i = (int) (andIncrement % j4);
            if (((WB) c3430o72).f4345do != j5) {
                C3430o7<E> m2537this = m2537this(j5, c3430o72);
                if (m2537this == null) {
                    continue;
                } else {
                    c3430o7 = m2537this;
                }
            } else {
                c3430o7 = c3430o72;
            }
            Object m2523extends = m2523extends(c3430o7, i, andIncrement, zzfolVar);
            if (m2523extends == Y5.f4642break) {
                GL gl = zzfolVar instanceof GL ? (GL) zzfolVar : null;
                if (gl != null) {
                    gl.mo728for(c3430o7, i);
                }
                m2531package(andIncrement);
                c3430o7.m2712goto();
            } else if (m2523extends == Y5.f4645class) {
                if (andIncrement < m2524final()) {
                    c3430o7.m8787do();
                }
                c3430o72 = c3430o7;
            } else {
                if (m2523extends == Y5.f4644catch) {
                    throw new IllegalStateException("unexpected".toString());
                }
                c3430o7.m8787do();
                obj = m2523extends;
            }
            return obj;
        }
        return new C3371n7.Cdo(m2518catch());
    }

    /* renamed from: super, reason: not valid java name */
    public final void m2535super(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f4031new;
        if ((atomicLongFieldUpdater.addAndGet(this, j) & 4611686018427387904L) != 0) {
            do {
            } while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final boolean m2536switch(Object obj, C3201kE.Cdo cdo) {
        if (obj instanceof InterfaceC0677aC) {
            return ((InterfaceC0677aC) obj).mo2979do(this, cdo);
        }
        boolean z = obj instanceof Zy;
        InterfaceC2650dk<E, C3206kJ> interfaceC2650dk = this.f4035do;
        if (z) {
            C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            C3371n7 c3371n7 = new C3371n7(cdo);
            if (interfaceC2650dk != null) {
                throw null;
            }
            Y5.m2887do(null, c3371n7, null);
            throw null;
        }
        if (obj instanceof Cdo) {
            C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            C0173Do.m398if(null);
            throw null;
        }
        if (obj instanceof T6) {
            C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            T6 t6 = (T6) obj;
            return Y5.m2887do(t6, cdo, interfaceC2650dk != null ? new C0641Yv(interfaceC2650dk, cdo, t6.mo2221if()) : null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    /* renamed from: this, reason: not valid java name */
    public final C3430o7<E> m2537this(long j, C3430o7<E> c3430o7) {
        Object m1624super;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j2;
        boolean z;
        boolean z2;
        boolean z3;
        C3430o7<Object> c3430o72 = Y5.f4649do;
        X5 x5 = X5.f4464do;
        do {
            m1624super = O4.m1624super(c3430o7, j, x5);
            if (C3850vF.m8450final(m1624super)) {
                break;
            }
            WB m8447const = C3850vF.m8447const(m1624super);
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4030if;
                WB wb = (WB) atomicReferenceFieldUpdater.get(this);
                if (wb.f4345do >= m8447const.f4345do) {
                    break;
                }
                if (!m8447const.m2713this()) {
                    z2 = false;
                    break;
                }
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, wb, m8447const)) {
                        z3 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != wb) {
                        z3 = false;
                        break;
                    }
                }
                if (z3) {
                    if (wb.m2714try()) {
                        wb.m8789new();
                    }
                } else if (m8447const.m2714try()) {
                    m8447const.m8789new();
                }
            }
            z2 = true;
        } while (!z2);
        if (C3850vF.m8450final(m1624super)) {
            m2517case();
            if (((WB) c3430o7).f4345do * Y5.f4647do < m2524final()) {
                c3430o7.m8787do();
            }
        } else {
            C3430o7<E> c3430o73 = (C3430o7) C3850vF.m8447const(m1624super);
            boolean m2528import = m2528import();
            long j3 = ((WB) c3430o73).f4345do;
            if (!m2528import && j <= m2516break() / Y5.f4647do) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4028for;
                    WB wb2 = (WB) atomicReferenceFieldUpdater2.get(this);
                    if (wb2.f4345do >= j3 || !c3430o73.m2713this()) {
                        break;
                    }
                    while (true) {
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, wb2, c3430o73)) {
                            z = true;
                            break;
                        }
                        if (atomicReferenceFieldUpdater2.get(this) != wb2) {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        if (wb2.m2714try()) {
                            wb2.m8789new();
                        }
                    } else if (c3430o73.m2714try()) {
                        c3430o73.m8789new();
                    }
                }
            }
            if (j3 <= j) {
                return c3430o73;
            }
            long j4 = j3 * Y5.f4647do;
            do {
                atomicLongFieldUpdater = f4029if;
                j2 = atomicLongFieldUpdater.get(this);
                if (j2 >= j4) {
                    break;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(this, j2, j4));
            if (((WB) c3430o73).f4345do * Y5.f4647do < m2524final()) {
                c3430o73.m8787do();
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x00bf, code lost:
    
        r13 = (defpackage.C3430o7) ((defpackage.AbstractC4080z9) defpackage.AbstractC4080z9.f16872if.get(r13));
     */
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2538throw(long r13, boolean r15) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.V5.m2538throw(long, boolean):boolean");
    }

    /* renamed from: throws, reason: not valid java name */
    public final boolean m2539throws(Object obj, C3430o7<E> c3430o7, int i) {
        char c;
        if (obj instanceof T6) {
            C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return Y5.m2887do((T6) obj, C3206kJ.f13965do, null);
        }
        if (!(obj instanceof InterfaceC0677aC)) {
            if (obj instanceof Cif) {
                ((Cif) obj).getClass();
                Y5.m2887do(null, Boolean.TRUE, null);
                throw null;
            }
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
        C0173Do.m396for(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        C3206kJ c3206kJ = C3206kJ.f13965do;
        int m2980else = ((ZB) obj).m2980else(this);
        if (m2980else == 0) {
            c = 1;
        } else if (m2980else != 1) {
            c = 3;
            if (m2980else != 2) {
                if (m2980else != 3) {
                    throw new IllegalStateException(("Unexpected internal result: " + m2980else).toString());
                }
                c = 4;
            }
        } else {
            c = 2;
        }
        if (c == 2) {
            c3430o7.m7692const(i, null);
        }
        return c == 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x01ca, code lost:
    
        r3 = (defpackage.C3430o7) r3.m8788if();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.V5.toString():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0098, code lost:
    
        r1 = (defpackage.C3430o7) ((defpackage.AbstractC4080z9) defpackage.AbstractC4080z9.f16872if.get(r1));
     */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3430o7<E> m2540try(long r14) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.V5.m2540try(long):o7");
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m2541while() {
        return false;
    }
}
