package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: Lq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0351Lq<E> {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f2034do = AtomicReferenceFieldUpdater.newUpdater(C0351Lq.class, Object.class, "_cur");
    private volatile Object _cur = new C0372Mq(8, false);

    /* renamed from: do, reason: not valid java name */
    public final boolean m1352do(E e) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2034do;
            C0372Mq c0372Mq = (C0372Mq) atomicReferenceFieldUpdater.get(this);
            int m1463do = c0372Mq.m1463do(e);
            if (m1463do == 0) {
                return true;
            }
            if (m1463do == 1) {
                C0372Mq<E> m1464for = c0372Mq.m1464for();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, c0372Mq, m1464for) && atomicReferenceFieldUpdater.get(this) == c0372Mq) {
                }
            } else if (m1463do == 2) {
                return false;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final int m1353for() {
        C0372Mq c0372Mq = (C0372Mq) f2034do.get(this);
        c0372Mq.getClass();
        long j = C0372Mq.f2264do.get(c0372Mq);
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j) >> 0)));
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1354if() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2034do;
            C0372Mq c0372Mq = (C0372Mq) atomicReferenceFieldUpdater.get(this);
            if (c0372Mq.m1465if()) {
                return;
            }
            C0372Mq<E> m1464for = c0372Mq.m1464for();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, c0372Mq, m1464for) && atomicReferenceFieldUpdater.get(this) == c0372Mq) {
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final E m1355new() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2034do;
            C0372Mq c0372Mq = (C0372Mq) atomicReferenceFieldUpdater.get(this);
            E e = (E) c0372Mq.m1466new();
            if (e != C0372Mq.f2263do) {
                return e;
            }
            C0372Mq<E> m1464for = c0372Mq.m1464for();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, c0372Mq, m1464for) && atomicReferenceFieldUpdater.get(this) == c0372Mq) {
            }
        }
    }
}
