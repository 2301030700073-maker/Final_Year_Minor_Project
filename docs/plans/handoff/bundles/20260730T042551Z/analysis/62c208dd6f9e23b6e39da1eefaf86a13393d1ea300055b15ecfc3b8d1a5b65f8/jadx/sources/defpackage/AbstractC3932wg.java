package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* renamed from: wg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3932wg extends AbstractC3991xg implements InterfaceC0184Ed {
    private volatile Object _delayed;
    private volatile int _isCompleted = 0;
    private volatile Object _queue;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f16378do = AtomicReferenceFieldUpdater.newUpdater(AbstractC3932wg.class, Object.class, "_queue");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f16379if = AtomicReferenceFieldUpdater.newUpdater(AbstractC3932wg.class, Object.class, "_delayed");

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f16377do = AtomicIntegerFieldUpdater.newUpdater(AbstractC3932wg.class, "_isCompleted");

    /* renamed from: wg$do, reason: invalid class name */
    public static abstract class Cdo implements Runnable, Comparable<Cdo>, InterfaceC0273Ie, InterfaceC2919iH {
        private volatile Object _heap;

        /* renamed from: do, reason: not valid java name */
        public long f16380do;

        /* renamed from: for, reason: not valid java name */
        public int f16381for;

        @Override // defpackage.InterfaceC2919iH
        /* renamed from: break */
        public final void mo6889break(Cif cif) {
            if (!(this._heap != O4.f2551if)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this._heap = cif;
        }

        @Override // defpackage.InterfaceC2919iH
        /* renamed from: case */
        public final C2860hH<?> mo6890case() {
            Object obj = this._heap;
            if (obj instanceof C2860hH) {
                return (C2860hH) obj;
            }
            return null;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Cdo cdo) {
            long j = this.f16380do - cdo.f16380do;
            if (j > 0) {
                return 1;
            }
            return j < 0 ? -1 : 0;
        }

        @Override // defpackage.InterfaceC2919iH
        public final int getIndex() {
            return this.f16381for;
        }

        @Override // defpackage.InterfaceC0273Ie
        /* renamed from: goto */
        public final void mo959goto() {
            synchronized (this) {
                Object obj = this._heap;
                C0174Dp c0174Dp = O4.f2551if;
                if (obj == c0174Dp) {
                    return;
                }
                Cif cif = obj instanceof Cif ? (Cif) obj : null;
                if (cif != null) {
                    cif.m6789new(this);
                }
                this._heap = c0174Dp;
                C3206kJ c3206kJ = C3206kJ.f13965do;
            }
        }

        /* renamed from: super, reason: not valid java name */
        public final int m8581super(long j, Cif cif, RunnableC2878hd runnableC2878hd) {
            synchronized (this) {
                if (this._heap == O4.f2551if) {
                    return 2;
                }
                synchronized (cif) {
                    try {
                        Object[] objArr = ((C2860hH) cif).f13287do;
                        Cdo cdo = (Cdo) (objArr != null ? objArr[0] : null);
                        if (AbstractC3932wg.y(runnableC2878hd)) {
                            return 1;
                        }
                        if (cdo == null) {
                            cif.f16382do = j;
                        } else {
                            long j2 = cdo.f16380do;
                            if (j2 - j < 0) {
                                j = j2;
                            }
                            if (j - cif.f16382do > 0) {
                                cif.f16382do = j;
                            }
                        }
                        long j3 = this.f16380do;
                        long j4 = cif.f16382do;
                        if (j3 - j4 < 0) {
                            this.f16380do = j4;
                        }
                        cif.m6785do(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // defpackage.InterfaceC2919iH
        /* renamed from: this */
        public final void mo6891this(int i) {
            this.f16381for = i;
        }

        public final String toString() {
            return "Delayed[nanos=" + this.f16380do + ']';
        }
    }

    /* renamed from: wg$if, reason: invalid class name */
    public static final class Cif extends C2860hH<Cdo> {

        /* renamed from: do, reason: not valid java name */
        public long f16382do;

        public Cif(long j) {
            this.f16382do = j;
        }
    }

    public static final boolean y(RunnableC2878hd runnableC2878hd) {
        runnableC2878hd.getClass();
        return f16377do.get(runnableC2878hd) != 0;
    }

    public final boolean A(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16378do;
            Object obj = atomicReferenceFieldUpdater.get(this);
            boolean z = false;
            if (f16377do.get(this) != 0) {
                return false;
            }
            if (obj == null) {
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                        z = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != null) {
                        break;
                    }
                }
                if (z) {
                    return true;
                }
            } else if (obj instanceof C0372Mq) {
                C0372Mq c0372Mq = (C0372Mq) obj;
                int m1463do = c0372Mq.m1463do(runnable);
                if (m1463do == 0) {
                    return true;
                }
                if (m1463do == 1) {
                    C0372Mq m1464for = c0372Mq.m1464for();
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, m1464for) && atomicReferenceFieldUpdater.get(this) == obj) {
                    }
                } else if (m1463do == 2) {
                    return false;
                }
            } else {
                if (obj == O4.f2545for) {
                    return false;
                }
                C0372Mq c0372Mq2 = new C0372Mq(8, true);
                c0372Mq2.m1463do((Runnable) obj);
                c0372Mq2.m1463do(runnable);
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0372Mq2)) {
                        z = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                if (z) {
                    return true;
                }
            }
        }
    }

    public final boolean B() {
        A2<AbstractC0119Be<?>> a2 = ((AbstractC3873vg) this).f16107do;
        if (!(a2 != null ? a2.isEmpty() : true)) {
            return false;
        }
        Cif cif = (Cif) f16379if.get(this);
        if (cif != null) {
            if (!(cif.m6788if() == 0)) {
                return false;
            }
        }
        Object obj = f16378do.get(this);
        if (obj == null) {
            return true;
        }
        if (obj instanceof C0372Mq) {
            long j = C0372Mq.f2264do.get((C0372Mq) obj);
            if (((int) ((1073741823 & j) >> 0)) == ((int) ((j & 1152921503533105152L) >> 30))) {
                return true;
            }
        } else if (obj == O4.f2545for) {
            return true;
        }
        return false;
    }

    public final void C(long j, Cdo cdo) {
        int m8581super;
        Thread w;
        boolean z = f16377do.get(this) != 0;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16379if;
        if (z) {
            m8581super = 1;
        } else {
            Cif cif = (Cif) atomicReferenceFieldUpdater.get(this);
            if (cif == null) {
                Cif cif2 = new Cif(j);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, cif2) && atomicReferenceFieldUpdater.get(this) == null) {
                }
                Object obj = atomicReferenceFieldUpdater.get(this);
                C0173Do.m398if(obj);
                cif = (Cif) obj;
            }
            m8581super = cdo.m8581super(j, cif, (RunnableC2878hd) this);
        }
        if (m8581super != 0) {
            if (m8581super == 1) {
                x(j, cdo);
                return;
            } else {
                if (m8581super != 2) {
                    throw new IllegalStateException("unexpected result".toString());
                }
                return;
            }
        }
        Cif cif3 = (Cif) atomicReferenceFieldUpdater.get(this);
        if (!((cif3 != null ? cif3.m6787for() : null) == cdo) || Thread.currentThread() == (w = w())) {
            return;
        }
        LockSupport.unpark(w);
    }

    @Override // defpackage.AbstractC3338mb
    /* renamed from: if */
    public final void mo1340if(InterfaceC3161jb interfaceC3161jb, Runnable runnable) {
        z(runnable);
    }

    @Override // defpackage.AbstractC3873vg
    public void shutdown() {
        boolean z;
        Cdo m6790try;
        boolean z2;
        ThreadLocal<AbstractC3873vg> threadLocal = C2801gH.f13085do;
        C2801gH.f13085do.set(null);
        f16377do.set(this, 1);
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16378do;
            Object obj = atomicReferenceFieldUpdater.get(this);
            C0174Dp c0174Dp = O4.f2545for;
            if (obj == null) {
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, c0174Dp)) {
                        z = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != null) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    break;
                }
            } else {
                if (obj instanceof C0372Mq) {
                    ((C0372Mq) obj).m1465if();
                    break;
                }
                if (obj == c0174Dp) {
                    break;
                }
                C0372Mq c0372Mq = new C0372Mq(8, true);
                c0372Mq.m1463do((Runnable) obj);
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0372Mq)) {
                        z2 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z2 = false;
                        break;
                    }
                }
                if (z2) {
                    break;
                }
            }
        }
        while (u() <= 0) {
        }
        long nanoTime = System.nanoTime();
        while (true) {
            Cif cif = (Cif) f16379if.get(this);
            if (cif == null) {
                return;
            }
            synchronized (cif) {
                m6790try = cif.m6788if() > 0 ? cif.m6790try(0) : null;
            }
            Cdo cdo = m6790try;
            if (cdo == null) {
                return;
            } else {
                x(nanoTime, cdo);
            }
        }
    }

    @Override // defpackage.AbstractC3873vg
    public final long u() {
        Cdo m6787for;
        boolean z;
        Cdo m6790try;
        if (v()) {
            return 0L;
        }
        Cif cif = (Cif) f16379if.get(this);
        Runnable runnable = null;
        if (cif != null) {
            if (!(cif.m6788if() == 0)) {
                long nanoTime = System.nanoTime();
                do {
                    synchronized (cif) {
                        Object[] objArr = ((C2860hH) cif).f13287do;
                        Object obj = objArr != null ? objArr[0] : null;
                        if (obj == null) {
                            m6790try = null;
                        } else {
                            Cdo cdo = (Cdo) obj;
                            m6790try = ((nanoTime - cdo.f16380do) > 0L ? 1 : ((nanoTime - cdo.f16380do) == 0L ? 0 : -1)) >= 0 ? A(cdo) : false ? cif.m6790try(0) : null;
                        }
                    }
                } while (m6790try != null);
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16378do;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 == null) {
                break;
            }
            if (obj2 instanceof C0372Mq) {
                C0372Mq c0372Mq = (C0372Mq) obj2;
                Object m1466new = c0372Mq.m1466new();
                if (m1466new != C0372Mq.f2263do) {
                    runnable = (Runnable) m1466new;
                    break;
                }
                C0372Mq m1464for = c0372Mq.m1464for();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, m1464for) && atomicReferenceFieldUpdater.get(this) == obj2) {
                }
            } else {
                if (obj2 == O4.f2545for) {
                    break;
                }
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, null)) {
                        z = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    runnable = (Runnable) obj2;
                    break;
                }
            }
        }
        if (runnable != null) {
            runnable.run();
            return 0L;
        }
        A2<AbstractC0119Be<?>> a2 = ((AbstractC3873vg) this).f16107do;
        if (((a2 == null || a2.isEmpty()) ? Long.MAX_VALUE : 0L) == 0) {
            return 0L;
        }
        Object obj3 = f16378do.get(this);
        if (obj3 != null) {
            if (!(obj3 instanceof C0372Mq)) {
                if (obj3 != O4.f2545for) {
                    return 0L;
                }
                return Long.MAX_VALUE;
            }
            long j = C0372Mq.f2264do.get((C0372Mq) obj3);
            if (!(((int) ((1073741823 & j) >> 0)) == ((int) ((j & 1152921503533105152L) >> 30)))) {
                return 0L;
            }
        }
        Cif cif2 = (Cif) f16379if.get(this);
        if (cif2 != null && (m6787for = cif2.m6787for()) != null) {
            long nanoTime2 = m6787for.f16380do - System.nanoTime();
            if (nanoTime2 < 0) {
                return 0L;
            }
            return nanoTime2;
        }
        return Long.MAX_VALUE;
    }

    public void z(Runnable runnable) {
        if (!A(runnable)) {
            RunnableC2878hd.f13336do.z(runnable);
            return;
        }
        Thread w = w();
        if (Thread.currentThread() != w) {
            LockSupport.unpark(w);
        }
    }
}
