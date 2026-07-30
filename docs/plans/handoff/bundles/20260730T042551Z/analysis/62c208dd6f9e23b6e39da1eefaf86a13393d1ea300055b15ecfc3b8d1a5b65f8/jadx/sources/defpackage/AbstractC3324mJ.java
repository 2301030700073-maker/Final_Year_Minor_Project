package defpackage;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* renamed from: mJ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3324mJ<E> implements Iterator<E>, j$.util.Iterator {
    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
