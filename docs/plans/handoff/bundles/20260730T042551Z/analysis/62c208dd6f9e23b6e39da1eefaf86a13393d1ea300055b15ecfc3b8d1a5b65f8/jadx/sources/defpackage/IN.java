package defpackage;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public abstract class IN implements ListIterator, Iterator, j$.util.Iterator {
    @Override // java.util.ListIterator
    @Deprecated
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public final void m930do() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
    public final /* bridge */ /* synthetic */ void remove() {
        m930do();
        throw null;
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
