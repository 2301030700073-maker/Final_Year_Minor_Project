package b.d;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class e implements Collection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f632a;

    public e(g gVar) {
        this.f632a = gVar;
    }

    @Override // java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public void clear() {
        this.f632a.clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.f632a.f(obj) >= 0;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f632a.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new f(this.f632a);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        int f = this.f632a.f(obj);
        if (f < 0) {
            return false;
        }
        this.f632a.h(f);
        return true;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        int i = this.f632a.f656c;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (collection.contains(this.f632a.j(i2))) {
                this.f632a.h(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        int i = this.f632a.f656c;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (!collection.contains(this.f632a.j(i2))) {
                this.f632a.h(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public int size() {
        return this.f632a.f656c;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        int i = this.f632a.f656c;
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = this.f632a.j(i2);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return this.f632a.m(objArr, 1);
    }
}
