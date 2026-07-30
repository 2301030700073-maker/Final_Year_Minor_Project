package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: dp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC2654dp extends W8 implements InterfaceC0273Ie, InterfaceC4116zn {

    /* renamed from: do, reason: not valid java name */
    public C2713ep f12547do;

    @Override // defpackage.InterfaceC4116zn
    /* renamed from: case */
    public final C0640Yu mo1445case() {
        return null;
    }

    @Override // defpackage.InterfaceC4116zn
    /* renamed from: for */
    public final boolean mo1446for() {
        return true;
    }

    @Override // defpackage.InterfaceC0273Ie
    /* renamed from: goto */
    public final void mo959goto() {
        boolean z;
        C0329Kq c0329Kq;
        boolean z2;
        C2713ep m6465while = m6465while();
        do {
            Object c = m6465while.c();
            z = false;
            if (!(c instanceof AbstractC2654dp)) {
                if (!(c instanceof InterfaceC4116zn) || ((InterfaceC4116zn) c).mo1445case() == null) {
                    return;
                }
                do {
                    Object m1213catch = m1213catch();
                    if (m1213catch instanceof C3951wz) {
                        C0329Kq c0329Kq2 = ((C3951wz) m1213catch).f16505do;
                        return;
                    }
                    if (m1213catch == this) {
                        return;
                    }
                    C0173Do.m396for(m1213catch, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                    c0329Kq = (C0329Kq) m1213catch;
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0329Kq.f1885for;
                    C3951wz c3951wz = (C3951wz) atomicReferenceFieldUpdater.get(c0329Kq);
                    if (c3951wz == null) {
                        c3951wz = new C3951wz(c0329Kq);
                        atomicReferenceFieldUpdater.lazySet(c0329Kq, c3951wz);
                    }
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C0329Kq.f1884do;
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, m1213catch, c3951wz)) {
                            z2 = true;
                            break;
                        } else if (atomicReferenceFieldUpdater2.get(this) != m1213catch) {
                            z2 = false;
                            break;
                        }
                    }
                } while (!z2);
                c0329Kq.m1217if();
                return;
            }
            if (c != this) {
                return;
            }
            C0361Mf c0361Mf = O4.f2552if;
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = C2713ep.f12713do;
                if (atomicReferenceFieldUpdater3.compareAndSet(m6465while, c, c0361Mf)) {
                    z = true;
                    break;
                } else if (atomicReferenceFieldUpdater3.get(m6465while) != c) {
                    break;
                }
            }
        } while (!z);
    }

    @Override // defpackage.C0329Kq
    public final String toString() {
        return getClass().getSimpleName() + '@' + C0820cd.m4914try(this) + "[job@" + C0820cd.m4914try(m6465while()) + ']';
    }

    /* renamed from: while, reason: not valid java name */
    public final C2713ep m6465while() {
        C2713ep c2713ep = this.f12547do;
        if (c2713ep != null) {
            return c2713ep;
        }
        C0173Do.m400this("job");
        throw null;
    }
}
