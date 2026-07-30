package com.google.android.gms.internal.common;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;
import org.jspecify.nullness.NullMarked;

@NullMarked
/* loaded from: classes.dex */
public abstract class zzaj implements Iterator, j$.util.Iterator {
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
