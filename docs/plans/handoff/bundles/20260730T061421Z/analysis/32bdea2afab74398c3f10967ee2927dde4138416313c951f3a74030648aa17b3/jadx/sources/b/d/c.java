package b.d;

import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class c implements Set {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f627a;

    public c(g gVar) {
        this.f627a = gVar;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f627a.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.f627a.d(obj) >= 0;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection collection) {
        g gVar = this.f627a;
        Objects.requireNonNull(gVar);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!gVar.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object obj) {
        return g.k(this, obj);
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        int i = 0;
        for (int i2 = this.f627a.f656c - 1; i2 >= 0; i2--) {
            Object g = this.f627a.g(i2);
            i += g == null ? 0 : g.hashCode();
        }
        return i;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f627a.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new b(this.f627a);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        int d2 = this.f627a.d(obj);
        if (d2 < 0) {
            return false;
        }
        this.f627a.h(d2);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection collection) {
        g gVar = this.f627a;
        int i = gVar.f656c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            gVar.remove(it.next());
        }
        return i != gVar.f656c;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection collection) {
        return this.f627a.l(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.f627a.f656c;
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        int i = this.f627a.f656c;
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = this.f627a.g(i2);
        }
        return objArr;
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return this.f627a.m(objArr, 0);
    }
}
