package defpackage;

import defpackage.C0517Th;
import j$.util.Iterator;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* renamed from: final, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfinal<T> implements Iterator<T>, InterfaceC3941wp, j$.util.Iterator {

    /* renamed from: do, reason: not valid java name */
    public T f12969do;

    /* renamed from: for, reason: not valid java name */
    public int f12970for = 2;

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        T t;
        File mo2278do;
        int i = this.f12970for;
        if (!(i != 4)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int m8819catch = C4122zt.m8819catch(i);
        if (m8819catch != 0) {
            if (m8819catch == 2) {
                return false;
            }
            this.f12970for = 4;
            C0517Th.Cif cif = (C0517Th.Cif) this;
            while (true) {
                ArrayDeque<C0517Th.Cfor> arrayDeque = cif.f3727do;
                C0517Th.Cfor peek = arrayDeque.peek();
                if (peek == null) {
                    t = null;
                    break;
                }
                mo2278do = peek.mo2278do();
                if (mo2278do == null) {
                    arrayDeque.pop();
                } else {
                    if (C0173Do.m394do(mo2278do, peek.f3725do) || !mo2278do.isDirectory() || arrayDeque.size() >= C0517Th.this.f3724if) {
                        break;
                    }
                    arrayDeque.push(cif.m2279do(mo2278do));
                }
            }
            t = (T) mo2278do;
            if (t != null) {
                ((Cfinal) cif).f12969do = t;
                cif.f12970for = 1;
            } else {
                cif.f12970for = 3;
            }
            if (this.f12970for != 1) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f12970for = 2;
        return this.f12969do;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
