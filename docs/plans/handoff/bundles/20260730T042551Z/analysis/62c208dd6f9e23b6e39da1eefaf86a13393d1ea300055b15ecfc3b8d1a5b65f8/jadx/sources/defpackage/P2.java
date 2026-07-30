package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public abstract class P2<T> extends AbstractC0780bw {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f2723do = AtomicReferenceFieldUpdater.newUpdater(P2.class, Object.class, "_consensus");
    private volatile Object _consensus = O2.f2479do;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.AbstractC0780bw
    /* renamed from: do, reason: not valid java name */
    public final Object mo1737do(Object obj) {
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2723do;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        C0174Dp c0174Dp = O2.f2479do;
        if (obj2 == c0174Dp) {
            C0174Dp mo1738for = mo1738for(obj);
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 == c0174Dp) {
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, c0174Dp, mo1738for)) {
                        z = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != c0174Dp) {
                        z = false;
                        break;
                    }
                }
                obj2 = z ? mo1738for : atomicReferenceFieldUpdater.get(this);
            }
        }
        mo1218if(obj, obj2);
        return obj2;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract C0174Dp mo1738for(Object obj);

    /* renamed from: if */
    public abstract void mo1218if(T t, Object obj);
}
