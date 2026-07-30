package com.google.android.gms.internal.consent_sdk;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public abstract class zzdg implements Iterator, j$.util.Iterator {
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
