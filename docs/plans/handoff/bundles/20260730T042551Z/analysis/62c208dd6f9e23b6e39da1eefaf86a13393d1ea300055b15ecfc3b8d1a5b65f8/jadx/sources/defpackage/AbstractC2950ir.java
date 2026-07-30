package defpackage;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* renamed from: ir, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC2950ir implements Iterator<Long>, InterfaceC3941wp, j$.util.Iterator {
    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Long.valueOf(nextLong());
    }

    public abstract long nextLong();

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
