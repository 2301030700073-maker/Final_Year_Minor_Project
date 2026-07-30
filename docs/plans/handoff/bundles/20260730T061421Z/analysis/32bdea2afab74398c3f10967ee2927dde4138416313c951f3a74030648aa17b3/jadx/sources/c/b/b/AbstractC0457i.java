package c.b.b;

import java.util.Iterator;

/* renamed from: c.b.b.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0457i implements Iterator {
    public abstract byte a();

    @Override // java.util.Iterator
    public Object next() {
        return Byte.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
