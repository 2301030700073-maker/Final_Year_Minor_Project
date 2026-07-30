package defpackage;

import j$.util.Iterator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class FI<T> implements Iterator<T>, InterfaceC3941wp, j$.util.Iterator {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2650dk<T, Iterator<T>> f1001do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f1002do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Iterator<? extends T> f1003do;

    public FI(YK yk, XK xk) {
        this.f1001do = xk;
        this.f1003do = yk;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f1003do.hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final T next() {
        T next = this.f1003do.next();
        java.util.Iterator<T> mo364this = this.f1001do.mo364this(next);
        ArrayList arrayList = this.f1002do;
        if (mo364this == null || !mo364this.hasNext()) {
            while (!this.f1003do.hasNext() && (!arrayList.isEmpty())) {
                this.f1003do = (java.util.Iterator) E8.g(arrayList);
                if (arrayList.isEmpty()) {
                    throw new NoSuchElementException("List is empty.");
                }
                arrayList.remove(O4.m1633while(arrayList));
            }
        } else {
            arrayList.add(this.f1003do);
            this.f1003do = mo364this;
        }
        return next;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
