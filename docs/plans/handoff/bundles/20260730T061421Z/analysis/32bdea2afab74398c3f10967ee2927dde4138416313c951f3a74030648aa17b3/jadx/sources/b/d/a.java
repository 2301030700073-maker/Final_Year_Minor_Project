package b.d;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class a implements Set {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f625a;

    public a(g gVar) {
        this.f625a = gVar;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection collection) {
        int i = this.f625a.f656c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            this.f625a.put(entry.getKey(), entry.getValue());
        }
        return i != this.f625a.f656c;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f625a.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        int d2 = this.f625a.d(entry.getKey());
        if (d2 < 0) {
            return false;
        }
        return j.c(this.f625a.j(d2), entry.getValue());
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
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
        for (int i2 = this.f625a.f656c - 1; i2 >= 0; i2--) {
            Object g = this.f625a.g(i2);
            Object j = this.f625a.j(i2);
            i += (g == null ? 0 : g.hashCode()) ^ (j == null ? 0 : j.hashCode());
        }
        return i;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f625a.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new d(this.f625a);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.f625a.f656c;
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        throw new UnsupportedOperationException();
    }
}
