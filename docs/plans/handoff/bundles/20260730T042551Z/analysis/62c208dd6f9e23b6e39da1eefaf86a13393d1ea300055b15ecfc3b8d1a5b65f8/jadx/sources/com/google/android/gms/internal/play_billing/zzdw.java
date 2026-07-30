package com.google.android.gms.internal.play_billing;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public abstract class zzdw implements Iterator, j$.util.Iterator {
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
