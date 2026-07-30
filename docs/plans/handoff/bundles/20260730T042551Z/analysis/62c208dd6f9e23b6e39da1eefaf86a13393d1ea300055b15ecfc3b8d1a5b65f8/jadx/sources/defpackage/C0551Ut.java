package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: Ut, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0551Ut extends C2678eC implements InterfaceC0485Rt {

    /* renamed from: for, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f3994for = AtomicReferenceFieldUpdater.newUpdater(C0551Ut.class, Object.class, "owner");
    private volatile Object owner;

    /* renamed from: Ut$do, reason: invalid class name */
    public final class Cdo implements T6<C3206kJ>, GL {

        /* renamed from: do, reason: not valid java name */
        public final U6<C3206kJ> f3995do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f3997do = null;

        public Cdo(U6 u6) {
            this.f3995do = u6;
        }

        @Override // defpackage.T6
        /* renamed from: else */
        public final C0174Dp mo2217else(Object obj, InterfaceC2650dk interfaceC2650dk) {
            C0551Ut c0551Ut = C0551Ut.this;
            C0529Tt c0529Tt = new C0529Tt(c0551Ut, this);
            C0174Dp mo2217else = this.f3995do.mo2217else((C3206kJ) obj, c0529Tt);
            if (mo2217else != null) {
                C0551Ut.f3994for.set(c0551Ut, this.f3997do);
            }
            return mo2217else;
        }

        @Override // defpackage.T6
        /* renamed from: final */
        public final void mo2218final(Object obj) {
            this.f3995do.mo2218final(obj);
        }

        @Override // defpackage.GL
        /* renamed from: for */
        public final void mo728for(WB<?> wb, int i) {
            this.f3995do.mo728for(wb, i);
        }

        @Override // defpackage.InterfaceC0576Wa
        /* renamed from: if */
        public final InterfaceC3161jb mo2221if() {
            return this.f3995do.f3832do;
        }

        @Override // defpackage.T6
        /* renamed from: super */
        public final boolean mo2219super(Throwable th) {
            return this.f3995do.mo2219super(th);
        }

        @Override // defpackage.T6
        /* renamed from: throw */
        public final void mo2220throw(C3206kJ c3206kJ, InterfaceC2650dk interfaceC2650dk) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0551Ut.f3994for;
            Object obj = this.f3997do;
            C0551Ut c0551Ut = C0551Ut.this;
            atomicReferenceFieldUpdater.set(c0551Ut, obj);
            C0507St c0507St = new C0507St(c0551Ut, this);
            this.f3995do.mo2220throw(c3206kJ, c0507St);
        }

        @Override // defpackage.InterfaceC0576Wa
        /* renamed from: while */
        public final void mo1746while(Object obj) {
            this.f3995do.mo1746while(obj);
        }
    }

    /* renamed from: Ut$if, reason: invalid class name */
    public static final class Cif extends AbstractC0459Qp implements InterfaceC3759tk<InterfaceC0677aC<?>, Object, Object, InterfaceC2650dk<? super Throwable, ? extends C3206kJ>> {
        public Cif() {
            super(3);
        }

        @Override // defpackage.InterfaceC3759tk
        /* renamed from: break, reason: not valid java name */
        public final Object mo2480break(InterfaceC0650Zi interfaceC0650Zi, Object obj, Object obj2) {
            return new C0573Vt(C0551Ut.this, obj);
        }
    }

    public C0551Ut(boolean z) {
        super(z ? 1 : 0);
        this.owner = z ? null : C3850vF.f16051new;
        new Cif();
    }

    @Override // defpackage.InterfaceC0485Rt
    /* renamed from: do */
    public final void mo2074do(Object obj) {
        while (m2479try()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3994for;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            C0174Dp c0174Dp = C3850vF.f16051new;
            if (obj2 != c0174Dp) {
                boolean z = true;
                if (!(obj2 == obj || obj == null)) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, c0174Dp)) {
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    m6518new();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked".toString());
    }

    @Override // defpackage.InterfaceC0485Rt
    /* renamed from: if */
    public final Object mo2075if(AbstractC0620Ya abstractC0620Ya) {
        int i;
        boolean z;
        boolean z2;
        char c;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C2678eC.f12602do;
            int i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = ((C2678eC) this).f12607do;
            if (i2 > i3) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i > i3) {
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i3));
            } else {
                z = false;
                if (i2 <= 0) {
                    z2 = false;
                    break;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 - 1)) {
                    z2 = true;
                    break;
                }
            }
        }
        if (z2) {
            f3994for.set(this, null);
            c = 0;
        } else {
            c = 1;
        }
        if (c == 0) {
            z = true;
        } else if (c != 1) {
            if (c != 2) {
                throw new IllegalStateException("unexpected".toString());
            }
            throw new IllegalStateException("This mutex is already locked by the specified owner: null".toString());
        }
        if (z) {
            return C3206kJ.f13965do;
        }
        U6 m7999finally = C3645ro.m7999finally(C3645ro.m8008package(abstractC0620Ya));
        try {
            m6517for(new Cdo(m7999finally));
            Object m2358return = m7999finally.m2358return();
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            if (m2358return != enumC3750tb) {
                m2358return = C3206kJ.f13965do;
            }
            return m2358return == enumC3750tb ? m2358return : C3206kJ.f13965do;
        } catch (Throwable th) {
            m7999finally.m2355package();
            throw th;
        }
    }

    public final String toString() {
        return "Mutex@" + C0820cd.m4914try(this) + "[isLocked=" + m2479try() + ",owner=" + f3994for.get(this) + ']';
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m2479try() {
        return Math.max(C2678eC.f12602do.get(this), 0) == 0;
    }
}
