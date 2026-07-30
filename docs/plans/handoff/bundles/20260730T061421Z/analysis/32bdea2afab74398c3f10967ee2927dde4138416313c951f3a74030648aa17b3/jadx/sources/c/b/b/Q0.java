package c.b.b;

import java.util.Iterator;

/* loaded from: classes.dex */
public class Q0 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public Iterator f3146a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ R0 f3147b;

    public Q0(R0 r0) {
        this.f3147b = r0;
        this.f3146a = this.f3147b.f3148a.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f3146a.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return (String) this.f3146a.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
