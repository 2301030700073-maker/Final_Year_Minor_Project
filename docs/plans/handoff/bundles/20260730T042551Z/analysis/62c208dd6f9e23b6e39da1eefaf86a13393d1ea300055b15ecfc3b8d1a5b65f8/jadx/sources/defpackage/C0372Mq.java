package defpackage;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: Mq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0372Mq<E> {
    private volatile Object _next;
    private volatile long _state;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f2266do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReferenceArray f2267do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f2268do;

    /* renamed from: if, reason: not valid java name */
    public final int f2269if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f2265do = AtomicReferenceFieldUpdater.newUpdater(C0372Mq.class, Object.class, "_next");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicLongFieldUpdater f2264do = AtomicLongFieldUpdater.newUpdater(C0372Mq.class, "_state");

    /* renamed from: do, reason: not valid java name */
    public static final C0174Dp f2263do = new C0174Dp("REMOVE_FROZEN", 7);

    /* renamed from: Mq$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f2270do;

        public Cdo(int i) {
            this.f2270do = i;
        }
    }

    public C0372Mq(int i, boolean z) {
        this.f2266do = i;
        this.f2268do = z;
        int i2 = i - 1;
        this.f2269if = i2;
        this.f2267do = new AtomicReferenceArray(i);
        if (!(i2 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i & i2) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0056, code lost:
    
        return 1;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m1463do(E r18) {
        /*
            r17 = this;
            r6 = r17
            r7 = r18
        L4:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r8 = defpackage.C0372Mq.f2264do
            long r2 = r8.get(r6)
            r0 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r0 = r0 & r2
            r9 = 0
            r4 = 1
            int r5 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r5 == 0) goto L1d
            r0 = 2305843009213693952(0x2000000000000000, double:1.4916681462400413E-154)
            long r0 = r0 & r2
            int r2 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r2 == 0) goto L1c
            r4 = 2
        L1c:
            return r4
        L1d:
            r0 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r0 = r0 & r2
            r11 = 0
            long r0 = r0 >> r11
            int r1 = (int) r0
            r12 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r12 = r12 & r2
            r0 = 30
            long r12 = r12 >> r0
            int r13 = (int) r12
            int r5 = r13 + 2
            int r12 = r6.f2269if
            r5 = r5 & r12
            r14 = r1 & r12
            if (r5 != r14) goto L38
            return r4
        L38:
            boolean r5 = r6.f2268do
            java.util.concurrent.atomic.AtomicReferenceArray r14 = r6.f2267do
            r15 = 1073741823(0x3fffffff, float:1.9999999)
            if (r5 != 0) goto L57
            r5 = r13 & r12
            java.lang.Object r5 = r14.get(r5)
            if (r5 == 0) goto L57
            r0 = 1024(0x400, float:1.435E-42)
            int r2 = r6.f2266do
            if (r2 < r0) goto L56
            int r13 = r13 - r1
            r0 = r13 & r15
            int r1 = r2 >> 1
            if (r0 <= r1) goto L4
        L56:
            return r4
        L57:
            int r1 = r13 + 1
            r1 = r1 & r15
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = defpackage.C0372Mq.f2264do
            r15 = -1152921503533105153(0xf00000003fffffff, double:-3.1050369248997324E231)
            long r15 = r15 & r2
            long r9 = (long) r1
            long r0 = r9 << r0
            long r9 = r15 | r0
            r0 = r4
            r1 = r17
            r4 = r9
            boolean r0 = r0.compareAndSet(r1, r2, r4)
            if (r0 == 0) goto L4
            r0 = r13 & r12
            r14.set(r0, r7)
            r0 = r6
        L77:
            long r1 = r8.get(r0)
            r3 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r1 = r1 & r3
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto La2
            Mq r0 = r0.m1464for()
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r0.f2267do
            int r2 = r0.f2269if
            r2 = r2 & r13
            java.lang.Object r5 = r1.get(r2)
            boolean r9 = r5 instanceof defpackage.C0372Mq.Cdo
            if (r9 == 0) goto L9f
            Mq$do r5 = (defpackage.C0372Mq.Cdo) r5
            int r5 = r5.f2270do
            if (r5 != r13) goto L9f
            r1.set(r2, r7)
            goto La0
        L9f:
            r0 = 0
        La0:
            if (r0 != 0) goto L77
        La2:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0372Mq.m1463do(java.lang.Object):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for, reason: not valid java name */
    public final C0372Mq<E> m1464for() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        while (true) {
            atomicLongFieldUpdater = f2264do;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 1152921504606846976L) != 0) {
                break;
            }
            long j2 = j | 1152921504606846976L;
            if (atomicLongFieldUpdater.compareAndSet(this, j, j2)) {
                j = j2;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2265do;
            C0372Mq<E> c0372Mq = (C0372Mq) atomicReferenceFieldUpdater.get(this);
            if (c0372Mq != null) {
                return c0372Mq;
            }
            C0372Mq c0372Mq2 = new C0372Mq(this.f2266do * 2, this.f2268do);
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            while (true) {
                int i3 = this.f2269if;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object obj = this.f2267do.get(i4);
                if (obj == null) {
                    obj = new Cdo(i);
                }
                c0372Mq2.f2267do.set(c0372Mq2.f2269if & i, obj);
                i++;
            }
            atomicLongFieldUpdater.set(c0372Mq2, (-1152921504606846977L) & j);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, c0372Mq2) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m1465if() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        do {
            atomicLongFieldUpdater = f2264do;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, 2305843009213693952L | j));
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public final Object m1466new() {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f2264do;
            long j = atomicLongFieldUpdater.get(this);
            if ((j & 1152921504606846976L) != 0) {
                return f2263do;
            }
            int i = (int) ((1152921503533105152L & j) >> 30);
            int i2 = this.f2269if;
            int i3 = ((int) ((j & 1073741823) >> 0)) & i2;
            if ((i & i2) == i3) {
                return null;
            }
            AtomicReferenceArray atomicReferenceArray = this.f2267do;
            Object obj = atomicReferenceArray.get(i3);
            boolean z = this.f2268do;
            if (obj == null) {
                if (z) {
                    return null;
                }
            } else {
                if (obj instanceof Cdo) {
                    return null;
                }
                long j2 = ((r1 + 1) & 1073741823) << 0;
                if (atomicLongFieldUpdater.compareAndSet(this, j, (j & (-1073741824)) | j2)) {
                    atomicReferenceArray.set(i3, null);
                    return obj;
                }
                if (z) {
                    C0372Mq<E> c0372Mq = this;
                    while (true) {
                        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f2264do;
                        long j3 = atomicLongFieldUpdater2.get(c0372Mq);
                        int i4 = (int) ((j3 & 1073741823) >> 0);
                        if ((j3 & 1152921504606846976L) != 0) {
                            c0372Mq = c0372Mq.m1464for();
                        } else {
                            if (atomicLongFieldUpdater2.compareAndSet(c0372Mq, j3, (j3 & (-1073741824)) | j2)) {
                                c0372Mq.f2267do.set(c0372Mq.f2269if & i4, null);
                                c0372Mq = null;
                            } else {
                                continue;
                            }
                        }
                        if (c0372Mq == null) {
                            return obj;
                        }
                    }
                }
            }
        }
    }
}
