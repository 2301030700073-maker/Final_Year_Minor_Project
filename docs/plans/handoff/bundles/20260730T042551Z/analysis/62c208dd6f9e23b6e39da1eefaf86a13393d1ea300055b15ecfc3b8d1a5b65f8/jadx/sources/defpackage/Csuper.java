package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: super, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Csuper<T> extends AbstractC3324mJ<T> {

    /* renamed from: do, reason: not valid java name */
    public T f15566do;

    /* renamed from: for, reason: not valid java name */
    public int f15567for = 2;

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        T t;
        int i = this.f15567for;
        if (!(i != 4)) {
            throw new IllegalStateException();
        }
        int m8819catch = C4122zt.m8819catch(i);
        if (m8819catch == 0) {
            return true;
        }
        if (m8819catch == 2) {
            return false;
        }
        this.f15567for = 4;
        TC tc = (TC) this;
        Iterator<Object> it = tc.f3616do;
        if (!it.hasNext()) {
            while (true) {
                Iterator<Object> it2 = tc.f3617if;
                if (!it2.hasNext()) {
                    tc.f15567for = 3;
                    t = null;
                    break;
                }
                Object next = it2.next();
                if (!tc.f3615do.f11811do.contains(next)) {
                    t = (T) next;
                    break;
                }
            }
        } else {
            t = (T) it.next();
        }
        this.f15566do = t;
        if (this.f15567for == 3) {
            return false;
        }
        this.f15567for = 1;
        return true;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f15567for = 2;
        T t = this.f15566do;
        this.f15566do = null;
        return t;
    }
}
