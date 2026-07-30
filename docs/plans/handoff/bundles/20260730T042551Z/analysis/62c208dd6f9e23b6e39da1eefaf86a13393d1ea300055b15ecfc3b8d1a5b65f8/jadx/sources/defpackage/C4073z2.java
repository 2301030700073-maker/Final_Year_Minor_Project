package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: z2, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4073z2<T> implements Collection<T>, InterfaceC3941wp {

    /* renamed from: do, reason: not valid java name */
    public final boolean f16850do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final T[] f16851do;

    public C4073z2(T[] tArr, boolean z) {
        C0173Do.m401try(tArr, "values");
        this.f16851do = tArr;
        this.f16850do = z;
    }

    @Override // java.util.Collection
    public final boolean add(T t) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return J2.e(this.f16851do, obj);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection<? extends Object> collection) {
        C0173Do.m401try(collection, "elements");
        Collection<? extends Object> collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f16851do.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator<T> iterator() {
        T[] tArr = this.f16851do;
        C0173Do.m401try(tArr, "array");
        return new B2(tArr);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f16851do.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        T[] tArr = this.f16851do;
        C0173Do.m401try(tArr, "<this>");
        if (this.f16850do && C0173Do.m394do(tArr.getClass(), Object[].class)) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
        C0173Do.m399new(copyOf, "copyOf(this, this.size, Array<Any?>::class.java)");
        return copyOf;
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        C0173Do.m401try(tArr, "array");
        return (T[]) C3645ro.b(this, tArr);
    }
}
