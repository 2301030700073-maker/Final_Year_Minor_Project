package c.b.b;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class T implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public Iterator f3150a;

    public T(Iterator it) {
        this.f3150a = it;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f3150a.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        Map.Entry entry = (Map.Entry) this.f3150a.next();
        return entry.getValue() instanceof U ? new S(entry, null) : entry;
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f3150a.remove();
    }
}
