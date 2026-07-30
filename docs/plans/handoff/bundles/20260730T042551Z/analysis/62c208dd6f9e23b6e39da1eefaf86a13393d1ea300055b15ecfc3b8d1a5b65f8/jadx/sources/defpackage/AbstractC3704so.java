package defpackage;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* renamed from: so, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3704so implements Iterator<Integer>, InterfaceC3941wp, j$.util.Iterator {
    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(nextInt());
    }

    public abstract int nextInt();

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
