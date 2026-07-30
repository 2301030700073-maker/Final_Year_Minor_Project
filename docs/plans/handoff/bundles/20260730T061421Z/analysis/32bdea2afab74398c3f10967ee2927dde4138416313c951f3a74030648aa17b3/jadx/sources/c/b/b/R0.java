package c.b.b;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public class R0 extends AbstractList implements X, RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final X f3148a;

    public R0(X x) {
        this.f3148a = x;
    }

    @Override // c.b.b.X
    public X a() {
        return this;
    }

    @Override // c.b.b.X
    public Object c(int i) {
        return this.f3148a.c(i);
    }

    @Override // c.b.b.X
    public List e() {
        return this.f3148a.e();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        return (String) this.f3148a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new Q0(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i) {
        return new P0(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3148a.size();
    }
}
