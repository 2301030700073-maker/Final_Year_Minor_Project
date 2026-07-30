package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: eC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C2678eC {
    private volatile int _availablePermits;
    private volatile long deqIdx;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f12607do = 1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0796cC f12608do;
    private volatile long enqIdx;
    private volatile Object head;
    private volatile Object tail;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f12604do = AtomicReferenceFieldUpdater.newUpdater(C2678eC.class, Object.class, "head");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicLongFieldUpdater f12603do = AtomicLongFieldUpdater.newUpdater(C2678eC.class, "deqIdx");

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f12606if = AtomicReferenceFieldUpdater.newUpdater(C2678eC.class, Object.class, "tail");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicLongFieldUpdater f12605if = AtomicLongFieldUpdater.newUpdater(C2678eC.class, "enqIdx");

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f12602do = AtomicIntegerFieldUpdater.newUpdater(C2678eC.class, "_availablePermits");

    public C2678eC(int i) {
        if (!(i >= 0 && i <= 1)) {
            throw new IllegalArgumentException("The number of acquired permits should be in 0..1".toString());
        }
        C2796gC c2796gC = new C2796gC(0L, null, 2);
        this.head = c2796gC;
        this.tail = c2796gC;
        this._availablePermits = 1 - i;
        this.f12608do = new C0796cC(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0070, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0004 A[SYNTHETIC] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6517for(defpackage.C0551Ut.Cdo r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
        L4:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = defpackage.C2678eC.f12602do
            int r2 = r2.getAndDecrement(r0)
            int r3 = r0.f12607do
            if (r2 > r3) goto L4
            cC r3 = r0.f12608do
            if (r2 <= 0) goto L19
            kJ r2 = defpackage.C3206kJ.f13965do
            r1.mo2220throw(r2, r3)
            goto Lc9
        L19:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r2 = defpackage.C2678eC.f12606if
            java.lang.Object r4 = r2.get(r0)
            gC r4 = (defpackage.C2796gC) r4
            java.util.concurrent.atomic.AtomicLongFieldUpdater r5 = defpackage.C2678eC.f12605if
            long r5 = r5.getAndIncrement(r0)
            bC r7 = defpackage.C0737bC.f8340do
            int r8 = defpackage.C2737fC.f12857if
            long r8 = (long) r8
            long r8 = r5 / r8
        L2e:
            java.lang.Object r10 = defpackage.O4.m1624super(r4, r8, r7)
            boolean r11 = defpackage.C3850vF.m8450final(r10)
            if (r11 != 0) goto L85
            WB r11 = defpackage.C3850vF.m8447const(r10)
        L3c:
            java.lang.Object r14 = r2.get(r0)
            WB r14 = (defpackage.WB) r14
            long r12 = r14.f4345do
            r15 = r7
            r16 = r8
            long r7 = r11.f4345do
            int r9 = (r12 > r7 ? 1 : (r12 == r7 ? 0 : -1))
            if (r9 < 0) goto L4e
            goto L70
        L4e:
            boolean r7 = r11.m2713this()
            if (r7 != 0) goto L56
            r7 = 0
            goto L71
        L56:
            boolean r7 = r2.compareAndSet(r0, r14, r11)
            if (r7 == 0) goto L5e
            r7 = 1
            goto L65
        L5e:
            java.lang.Object r7 = r2.get(r0)
            if (r7 == r14) goto L56
            r7 = 0
        L65:
            if (r7 == 0) goto L78
            boolean r7 = r14.m2714try()
            if (r7 == 0) goto L70
            r14.m8789new()
        L70:
            r7 = 1
        L71:
            if (r7 == 0) goto L74
            goto L85
        L74:
            r7 = r15
            r8 = r16
            goto L2e
        L78:
            boolean r7 = r11.m2714try()
            if (r7 == 0) goto L81
            r11.m8789new()
        L81:
            r7 = r15
            r8 = r16
            goto L3c
        L85:
            WB r2 = defpackage.C3850vF.m8447const(r10)
            gC r2 = (defpackage.C2796gC) r2
            int r4 = defpackage.C2737fC.f12857if
            long r7 = (long) r4
            long r5 = r5 % r7
            int r4 = (int) r5
            java.util.concurrent.atomic.AtomicReferenceArray r5 = r2.f13077do
        L92:
            r6 = 0
            boolean r6 = r5.compareAndSet(r4, r6, r1)
            if (r6 == 0) goto L9b
            r5 = 1
            goto La2
        L9b:
            java.lang.Object r6 = r5.get(r4)
            if (r6 == 0) goto L92
            r5 = 0
        La2:
            if (r5 == 0) goto La8
            r1.mo728for(r2, r4)
            goto Lc4
        La8:
            Dp r6 = defpackage.C2737fC.f12855do
            Dp r7 = defpackage.C2737fC.f12858if
            java.util.concurrent.atomic.AtomicReferenceArray r8 = r2.f13077do
        Lae:
            boolean r2 = r8.compareAndSet(r4, r6, r7)
            if (r2 == 0) goto Lb6
            r2 = 1
            goto Lbd
        Lb6:
            java.lang.Object r2 = r8.get(r4)
            if (r2 == r6) goto Lae
            r2 = 0
        Lbd:
            if (r2 == 0) goto Lc6
            kJ r2 = defpackage.C3206kJ.f13965do
            r1.mo2220throw(r2, r3)
        Lc4:
            r12 = 1
            goto Lc7
        Lc6:
            r12 = 0
        Lc7:
            if (r12 == 0) goto L4
        Lc9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2678eC.m6517for(Ut$do):void");
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6518new() {
        int i;
        Object m1624super;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f12602do;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i2 = this.f12607do;
            if (andIncrement >= i2) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i2) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i2).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12604do;
            C2796gC c2796gC = (C2796gC) atomicReferenceFieldUpdater.get(this);
            long andIncrement2 = f12603do.getAndIncrement(this);
            long j = andIncrement2 / C2737fC.f12857if;
            C2620dC c2620dC = C2620dC.f12444do;
            do {
                m1624super = O4.m1624super(c2796gC, j, c2620dC);
                if (C3850vF.m8450final(m1624super)) {
                    break;
                }
                WB m8447const = C3850vF.m8447const(m1624super);
                while (true) {
                    WB wb = (WB) atomicReferenceFieldUpdater.get(this);
                    if (wb.f4345do >= m8447const.f4345do) {
                        break;
                    }
                    if (!m8447const.m2713this()) {
                        z4 = false;
                        break;
                    }
                    while (true) {
                        if (!atomicReferenceFieldUpdater.compareAndSet(this, wb, m8447const)) {
                            if (atomicReferenceFieldUpdater.get(this) != wb) {
                                z5 = false;
                                break;
                            }
                        } else {
                            z5 = true;
                            break;
                        }
                    }
                    if (z5) {
                        if (wb.m2714try()) {
                            wb.m8789new();
                        }
                    } else if (m8447const.m2714try()) {
                        m8447const.m8789new();
                    }
                }
                z4 = true;
            } while (!z4);
            C2796gC c2796gC2 = (C2796gC) C3850vF.m8447const(m1624super);
            c2796gC2.m8787do();
            if (((WB) c2796gC2).f4345do <= j) {
                int i3 = (int) (andIncrement2 % C2737fC.f12857if);
                C0174Dp c0174Dp = C2737fC.f12855do;
                AtomicReferenceArray atomicReferenceArray = c2796gC2.f13077do;
                Object andSet = atomicReferenceArray.getAndSet(i3, c0174Dp);
                if (andSet == null) {
                    int i4 = C2737fC.f12854do;
                    for (int i5 = 0; i5 < i4; i5++) {
                        if (atomicReferenceArray.get(i3) == C2737fC.f12858if) {
                            z = true;
                            break;
                        }
                    }
                    C0174Dp c0174Dp2 = C2737fC.f12855do;
                    C0174Dp c0174Dp3 = C2737fC.f12856for;
                    while (true) {
                        if (!atomicReferenceArray.compareAndSet(i3, c0174Dp2, c0174Dp3)) {
                            if (atomicReferenceArray.get(i3) != c0174Dp2) {
                                z2 = true;
                                z3 = false;
                                break;
                            }
                        } else {
                            z2 = true;
                            z3 = true;
                            break;
                        }
                    }
                    z = z3 ^ z2;
                } else if (andSet != C2737fC.f12859new) {
                    if (andSet instanceof T6) {
                        T6 t6 = (T6) andSet;
                        C0174Dp mo2217else = t6.mo2217else(C3206kJ.f13965do, this.f12608do);
                        if (mo2217else != null) {
                            t6.mo2218final(mo2217else);
                            z = true;
                            break;
                            break;
                        }
                    } else {
                        if (!(andSet instanceof InterfaceC0677aC)) {
                            throw new IllegalStateException(("unexpected: " + andSet).toString());
                        }
                        z = ((InterfaceC0677aC) andSet).mo2979do(this, C3206kJ.f13965do);
                    }
                }
            }
            z = false;
        } while (!z);
    }
}
