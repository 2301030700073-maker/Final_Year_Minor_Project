package c.b.b;

import java.util.ListIterator;

/* loaded from: classes.dex */
public class P0 implements ListIterator {

    /* renamed from: a, reason: collision with root package name */
    public ListIterator f3143a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3144b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ R0 f3145c;

    public P0(R0 r0, int i) {
        this.f3145c = r0;
        this.f3144b = i;
        this.f3143a = this.f3145c.f3148a.listIterator(this.f3144b);
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f3143a.hasNext();
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.f3143a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        return (String) this.f3143a.next();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f3143a.nextIndex();
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return (String) this.f3143a.previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f3143a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
