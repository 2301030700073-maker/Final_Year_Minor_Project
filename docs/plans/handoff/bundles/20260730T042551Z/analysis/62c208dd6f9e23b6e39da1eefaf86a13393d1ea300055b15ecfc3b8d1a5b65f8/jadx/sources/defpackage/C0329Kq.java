package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: Kq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0329Kq {
    private volatile Object _next = this;
    private volatile Object _prev = this;
    private volatile Object _removedRef;

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f1884do = AtomicReferenceFieldUpdater.newUpdater(C0329Kq.class, Object.class, "_next");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f1886if = AtomicReferenceFieldUpdater.newUpdater(C0329Kq.class, Object.class, "_prev");

    /* renamed from: for, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f1885for = AtomicReferenceFieldUpdater.newUpdater(C0329Kq.class, Object.class, "_removedRef");

    /* renamed from: Kq$do, reason: invalid class name */
    public static abstract class Cdo extends P2<C0329Kq> {

        /* renamed from: do, reason: not valid java name */
        public final C0329Kq f1887do;

        /* renamed from: if, reason: not valid java name */
        public C0329Kq f1888if;

        public Cdo(C0329Kq c0329Kq) {
            this.f1887do = c0329Kq;
        }

        @Override // defpackage.P2
        /* renamed from: if, reason: not valid java name */
        public final void mo1218if(C0329Kq c0329Kq, Object obj) {
            C0329Kq c0329Kq2 = c0329Kq;
            boolean z = false;
            boolean z2 = obj == null;
            C0329Kq c0329Kq3 = this.f1887do;
            C0329Kq c0329Kq4 = z2 ? c0329Kq3 : this.f1888if;
            if (c0329Kq4 != null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0329Kq.f1884do;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(c0329Kq2, this, c0329Kq4)) {
                        z = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(c0329Kq2) != this) {
                        break;
                    }
                }
                if (z && z2) {
                    C0329Kq c0329Kq5 = this.f1888if;
                    C0173Do.m398if(c0329Kq5);
                    c0329Kq3.m1215else(c0329Kq5);
                }
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final Object m1213catch() {
        while (true) {
            Object obj = f1884do.get(this);
            if (!(obj instanceof AbstractC0780bw)) {
                return obj;
            }
            ((AbstractC0780bw) obj).mo1737do(this);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final C0329Kq m1214class() {
        C0329Kq c0329Kq;
        Object m1213catch = m1213catch();
        C3951wz c3951wz = m1213catch instanceof C3951wz ? (C3951wz) m1213catch : null;
        if (c3951wz != null && (c0329Kq = c3951wz.f16505do) != null) {
            return c0329Kq;
        }
        C0173Do.m396for(m1213catch, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (C0329Kq) m1213catch;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m1215else(C0329Kq c0329Kq) {
        boolean z;
        do {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1886if;
            C0329Kq c0329Kq2 = (C0329Kq) atomicReferenceFieldUpdater.get(c0329Kq);
            if (m1213catch() != c0329Kq) {
                return;
            }
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(c0329Kq, c0329Kq2, this)) {
                    z = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(c0329Kq) != c0329Kq2) {
                    z = false;
                    break;
                }
            }
        } while (!z);
        if (mo1070super()) {
            c0329Kq.m1217if();
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final C0329Kq m1216final() {
        C0329Kq m1217if = m1217if();
        if (m1217if == null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1886if;
            Object obj = atomicReferenceFieldUpdater.get(this);
            while (true) {
                m1217if = (C0329Kq) obj;
                if (!m1217if.mo1070super()) {
                    break;
                }
                obj = atomicReferenceFieldUpdater.get(m1217if);
            }
        }
        return m1217if;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        r6 = ((defpackage.C3951wz) r6).f16505do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004c, code lost:
    
        if (r5.compareAndSet(r4, r2, r6) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
    
        if (r5.get(r4) == r2) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0056, code lost:
    
        if (r7 != false) goto L37;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C0329Kq m1217if() {
        /*
            r11 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.C0329Kq.f1886if
            java.lang.Object r1 = r0.get(r11)
            Kq r1 = (defpackage.C0329Kq) r1
            r2 = r1
        L9:
            r3 = 0
            r4 = r3
        Lb:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = defpackage.C0329Kq.f1884do
            java.lang.Object r6 = r5.get(r2)
            r7 = 1
            r8 = 0
            if (r6 != r11) goto L2a
            if (r1 != r2) goto L18
            return r2
        L18:
            boolean r3 = r0.compareAndSet(r11, r1, r2)
            if (r3 == 0) goto L1f
            goto L26
        L1f:
            java.lang.Object r3 = r0.get(r11)
            if (r3 == r1) goto L18
            r7 = 0
        L26:
            if (r7 != 0) goto L29
            goto L0
        L29:
            return r2
        L2a:
            boolean r9 = r11.mo1070super()
            if (r9 == 0) goto L31
            return r3
        L31:
            if (r6 != 0) goto L34
            return r2
        L34:
            boolean r9 = r6 instanceof defpackage.AbstractC0780bw
            if (r9 == 0) goto L3e
            bw r6 = (defpackage.AbstractC0780bw) r6
            r6.mo1737do(r2)
            goto L0
        L3e:
            boolean r9 = r6 instanceof defpackage.C3951wz
            if (r9 == 0) goto L62
            if (r4 == 0) goto L5b
            wz r6 = (defpackage.C3951wz) r6
            Kq r6 = r6.f16505do
        L48:
            boolean r3 = r5.compareAndSet(r4, r2, r6)
            if (r3 == 0) goto L4f
            goto L56
        L4f:
            java.lang.Object r3 = r5.get(r4)
            if (r3 == r2) goto L48
            r7 = 0
        L56:
            if (r7 != 0) goto L59
            goto L0
        L59:
            r2 = r4
            goto L9
        L5b:
            java.lang.Object r2 = r0.get(r2)
            Kq r2 = (defpackage.C0329Kq) r2
            goto Lb
        L62:
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
            defpackage.C0173Do.m396for(r6, r4)
            r4 = r6
            Kq r4 = (defpackage.C0329Kq) r4
            r10 = r4
            r4 = r2
            r2 = r10
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0329Kq.m1217if():Kq");
    }

    /* renamed from: super */
    public boolean mo1070super() {
        return m1213catch() instanceof C3951wz;
    }

    public String toString() {
        return new Xx(this) { // from class: Kq.if
        } + '@' + C0820cd.m4914try(this);
    }
}
