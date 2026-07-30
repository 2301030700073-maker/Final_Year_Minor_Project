package b.d;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class d implements Iterator, Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public int f628a;

    /* renamed from: b, reason: collision with root package name */
    public int f629b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f630c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f631d;

    public d(g gVar) {
        this.f631d = gVar;
        this.f628a = gVar.f656c - 1;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (!this.f630c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return j.c(entry.getKey(), this.f631d.g(this.f629b)) && j.c(entry.getValue(), this.f631d.j(this.f629b));
    }

    @Override // java.util.Map.Entry
    public Object getKey() {
        if (this.f630c) {
            return this.f631d.g(this.f629b);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        if (this.f630c) {
            return this.f631d.j(this.f629b);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f629b < this.f628a;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        if (!this.f630c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        Object g = this.f631d.g(this.f629b);
        Object j = this.f631d.j(this.f629b);
        return (g == null ? 0 : g.hashCode()) ^ (j != null ? j.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f629b++;
        this.f630c = true;
        return this;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f630c) {
            throw new IllegalStateException();
        }
        this.f631d.h(this.f629b);
        this.f629b--;
        this.f628a--;
        this.f630c = false;
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        if (this.f630c) {
            return this.f631d.i(this.f629b, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public String toString() {
        return getKey() + "=" + getValue();
    }
}
