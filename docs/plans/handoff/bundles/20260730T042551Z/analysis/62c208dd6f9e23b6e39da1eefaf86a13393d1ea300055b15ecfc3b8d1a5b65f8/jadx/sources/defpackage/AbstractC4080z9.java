package defpackage;

import defpackage.AbstractC4080z9;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: z9, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC4080z9<N extends AbstractC4080z9<N>> {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f16871do = AtomicReferenceFieldUpdater.newUpdater(AbstractC4080z9.class, Object.class, "_next");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f16872if = AtomicReferenceFieldUpdater.newUpdater(AbstractC4080z9.class, Object.class, "_prev");
    private volatile Object _next;
    private volatile Object _prev;

    public AbstractC4080z9(N n) {
        this._prev = n;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8787do() {
        f16872if.lazySet(this, null);
    }

    /* renamed from: for */
    public abstract boolean mo2711for();

    /* renamed from: if, reason: not valid java name */
    public final N m8788if() {
        Object obj = f16871do.get(this);
        if (obj == O4.f2533do) {
            return null;
        }
        return (N) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5, types: [z9] */
    /* renamed from: new, reason: not valid java name */
    public final void m8789new() {
        boolean z;
        ?? m8788if;
        if (m8788if() == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16872if;
            AbstractC4080z9 abstractC4080z9 = (AbstractC4080z9) atomicReferenceFieldUpdater.get(this);
            while (abstractC4080z9 != null && abstractC4080z9.mo2711for()) {
                abstractC4080z9 = (AbstractC4080z9) atomicReferenceFieldUpdater.get(abstractC4080z9);
            }
            N m8788if2 = m8788if();
            C0173Do.m398if(m8788if2);
            while (m8788if2.mo2711for() && (m8788if = m8788if2.m8788if()) != 0) {
                m8788if2 = m8788if;
            }
            do {
                Object obj = atomicReferenceFieldUpdater.get(m8788if2);
                AbstractC4080z9 abstractC4080z92 = ((AbstractC4080z9) obj) == null ? null : abstractC4080z9;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(m8788if2, obj, abstractC4080z92)) {
                        z = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(m8788if2) != obj) {
                        z = false;
                        break;
                    }
                }
            } while (!z);
            if (abstractC4080z9 != null) {
                f16871do.set(abstractC4080z9, m8788if2);
            }
            if (m8788if2.mo2711for()) {
                if (!(m8788if2.m8788if() == null)) {
                    continue;
                }
            }
            if (abstractC4080z9 == null || !abstractC4080z9.mo2711for()) {
                return;
            }
        }
    }
}
