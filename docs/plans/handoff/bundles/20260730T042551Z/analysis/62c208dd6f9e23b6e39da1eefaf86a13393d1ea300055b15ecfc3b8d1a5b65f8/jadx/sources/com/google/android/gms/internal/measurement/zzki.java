package com.google.android.gms.internal.measurement;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
final class zzki<K> implements Iterator<Map.Entry<K, Object>>, j$.util.Iterator {
    private Iterator<Map.Entry<K, Object>> zza;

    public zzki(Iterator<Map.Entry<K, Object>> it) {
        this.zza = it;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zza.next();
        return next.getValue() instanceof zzkg ? new zzkf(next) : next;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        this.zza.remove();
    }
}
