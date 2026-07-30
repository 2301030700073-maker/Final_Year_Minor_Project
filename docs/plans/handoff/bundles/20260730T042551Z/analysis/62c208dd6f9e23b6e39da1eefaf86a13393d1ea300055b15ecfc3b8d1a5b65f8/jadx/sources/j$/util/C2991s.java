package j$.util;

import j$.util.Collection;
import j$.util.stream.AbstractC3117z0;
import j$.util.stream.Stream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Consumer;

/* renamed from: j$.util.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2991s extends C3123v {
    private static final long serialVersionUID = 7854390611657943733L;

    C2991s(java.util.Set set) {
        super(set);
    }

    @Override // j$.util.C2986m, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        return this.a.contains(new C2990q((Map.Entry) obj));
    }

    @Override // j$.util.C2986m, java.util.Collection, j$.util.Collection, java.util.Set, j$.util.Set
    public final boolean containsAll(java.util.Collection collection) {
        java.util.Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // j$.util.C3123v, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof java.util.Set)) {
            return false;
        }
        java.util.Set set = (java.util.Set) obj;
        if (set.size() != this.a.size()) {
            return false;
        }
        return containsAll(set);
    }

    @Override // j$.util.C2986m, java.lang.Iterable, j$.util.Collection, j$.lang.a
    public final void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Collection.EL.a(this.a, new C2989p(consumer));
    }

    @Override // j$.util.C2986m, java.util.Collection, java.lang.Iterable, j$.util.Collection, java.util.List, j$.util.List
    public final java.util.Iterator iterator() {
        return new C2985l(this);
    }

    @Override // j$.util.C2986m, java.util.Collection, j$.util.Collection
    public final Stream parallelStream() {
        return AbstractC3117z0.G0(spliterator(), true);
    }

    @Override // j$.util.C2986m, java.util.Collection, java.lang.Iterable, j$.util.Collection
    public final Spliterator spliterator() {
        return new r(Collection.EL.d(this.a));
    }

    @Override // j$.util.C2986m, java.util.Collection, j$.util.Collection
    public final Stream stream() {
        return AbstractC3117z0.G0(spliterator(), false);
    }

    @Override // j$.util.C2986m, java.util.Collection, j$.util.Collection
    public final Object[] toArray() {
        Object[] array = this.a.toArray();
        for (int i = 0; i < array.length; i++) {
            array[i] = new C2990q((Map.Entry) array[i]);
        }
        return array;
    }

    @Override // j$.util.C2986m, java.util.Collection, j$.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] array = this.a.toArray(objArr.length == 0 ? objArr : Arrays.copyOf(objArr, 0));
        for (int i = 0; i < array.length; i++) {
            array[i] = new C2990q((Map.Entry) array[i]);
        }
        if (array.length > objArr.length) {
            return array;
        }
        System.arraycopy(array, 0, objArr, 0, array.length);
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
