package com.google.android.gms.internal.location;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public abstract class zzbu<E> implements Iterator<E>, j$.util.Iterator {
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
