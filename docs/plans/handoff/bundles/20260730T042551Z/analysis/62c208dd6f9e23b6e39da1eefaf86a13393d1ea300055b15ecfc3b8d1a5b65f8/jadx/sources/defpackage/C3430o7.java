package defpackage;

import defpackage.C3201kE;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* renamed from: o7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3430o7<E> extends WB<C3430o7<E>> {

    /* renamed from: do, reason: not valid java name */
    public final V5<E> f14690do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReferenceArray f14691do;

    public C3430o7(long j, C3430o7<E> c3430o7, V5<E> v5, int i) {
        super(j, c3430o7, i);
        this.f14690do = v5;
        this.f14691do = new AtomicReferenceArray(Y5.f4647do * 2);
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m7689break(int i, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray = this.f14691do;
        int i2 = (i * 2) + 1;
        while (!atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
            if (atomicReferenceArray.get(i2) != obj) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.WB
    /* renamed from: case */
    public final int mo2709case() {
        return Y5.f4647do;
    }

    /* renamed from: catch, reason: not valid java name */
    public final Object m7690catch(int i) {
        return this.f14691do.get((i * 2) + 1);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m7691class(int i, boolean z) {
        if (z) {
            V5<E> v5 = this.f14690do;
            C0173Do.m398if(v5);
            v5.m2531package((((WB) this).f4345do * Y5.f4647do) + i);
        }
        m2712goto();
    }

    /* renamed from: const, reason: not valid java name */
    public final void m7692const(int i, C3201kE.Cdo cdo) {
        this.f14691do.lazySet(i * 2, cdo);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x005b, code lost:
    
        m7692const(r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x005e, code lost:
    
        if (r1 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0060, code lost:
    
        defpackage.C0173Do.m398if(r4);
        r7 = r4.f4035do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0065, code lost:
    
        if (r7 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0067, code lost:
    
        defpackage.C0315Kc.m1162else(r7, r0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x006a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    @Override // defpackage.WB
    /* renamed from: else */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo2710else(int r7, defpackage.InterfaceC3161jb r8) {
        /*
            r6 = this;
            int r0 = defpackage.Y5.f4647do
            if (r7 < r0) goto L6
            r1 = 1
            goto L7
        L6:
            r1 = 0
        L7:
            if (r1 == 0) goto La
            int r7 = r7 - r0
        La:
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r6.f14691do
            int r2 = r7 * 2
            java.lang.Object r0 = r0.get(r2)
        L12:
            java.lang.Object r2 = r6.m7690catch(r7)
            boolean r3 = r2 instanceof defpackage.GL
            V5<E> r4 = r6.f14690do
            r5 = 0
            if (r3 != 0) goto L6b
            boolean r3 = r2 instanceof defpackage.HL
            if (r3 == 0) goto L22
            goto L6b
        L22:
            Dp r3 = defpackage.Y5.f4650else
            if (r2 == r3) goto L5b
            Dp r3 = defpackage.Y5.f4653goto
            if (r2 != r3) goto L2b
            goto L5b
        L2b:
            Dp r3 = defpackage.Y5.f4656new
            if (r2 == r3) goto L12
            Dp r3 = defpackage.Y5.f4652for
            if (r2 != r3) goto L34
            goto L12
        L34:
            Dp r7 = defpackage.Y5.f4643case
            if (r2 == r7) goto L5a
            Dp r7 = defpackage.Y5.f4648do
            if (r2 != r7) goto L3d
            goto L5a
        L3d:
            Dp r7 = defpackage.Y5.f4658this
            if (r2 != r7) goto L42
            return
        L42:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r0 = "unexpected state: "
            r8.<init>(r0)
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L5a:
            return
        L5b:
            r6.m7692const(r7, r5)
            if (r1 == 0) goto L6a
            defpackage.C0173Do.m398if(r4)
            dk<E, kJ> r7 = r4.f4035do
            if (r7 == 0) goto L6a
            defpackage.C0315Kc.m1162else(r7, r0, r8)
        L6a:
            return
        L6b:
            if (r1 == 0) goto L70
            Dp r3 = defpackage.Y5.f4650else
            goto L72
        L70:
            Dp r3 = defpackage.Y5.f4653goto
        L72:
            boolean r2 = r6.m7689break(r7, r2, r3)
            if (r2 == 0) goto L12
            r6.m7692const(r7, r5)
            r2 = r1 ^ 1
            r6.m7691class(r7, r2)
            if (r1 == 0) goto L8c
            defpackage.C0173Do.m398if(r4)
            dk<E, kJ> r7 = r4.f4035do
            if (r7 == 0) goto L8c
            defpackage.C0315Kc.m1162else(r7, r0, r8)
        L8c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3430o7.mo2710else(int, jb):void");
    }

    /* renamed from: final, reason: not valid java name */
    public final void m7693final(int i, C0174Dp c0174Dp) {
        this.f14691do.set((i * 2) + 1, c0174Dp);
    }
}
