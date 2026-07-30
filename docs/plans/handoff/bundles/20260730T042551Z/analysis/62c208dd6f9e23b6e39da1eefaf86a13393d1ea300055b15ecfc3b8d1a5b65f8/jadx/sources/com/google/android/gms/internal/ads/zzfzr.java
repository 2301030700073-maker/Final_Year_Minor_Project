package com.google.android.gms.internal.ads;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
abstract class zzfzr implements Iterator, j$.util.Iterator {
    final Iterator zzb;

    public zzfzr(Iterator it) {
        it.getClass();
        this.zzb = it;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        return zza(this.zzb.next());
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        this.zzb.remove();
    }

    public abstract Object zza(Object obj);
}
