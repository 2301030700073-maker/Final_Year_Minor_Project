package defpackage;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final class B2<T> implements Iterator<T>, InterfaceC3941wp, j$.util.Iterator {

    /* renamed from: do, reason: not valid java name */
    public final T[] f189do;

    /* renamed from: for, reason: not valid java name */
    public int f190for;

    public B2(T[] tArr) {
        this.f189do = tArr;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f190for < this.f189do.length;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final T next() {
        try {
            T[] tArr = this.f189do;
            int i = this.f190for;
            this.f190for = i + 1;
            return tArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f190for--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
