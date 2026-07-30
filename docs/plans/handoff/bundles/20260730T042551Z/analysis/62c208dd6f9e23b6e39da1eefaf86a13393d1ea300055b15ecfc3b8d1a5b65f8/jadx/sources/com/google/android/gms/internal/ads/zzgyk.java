package com.google.android.gms.internal.ads;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
final class zzgyk implements Iterator, j$.util.Iterator {
    private final Iterator zza;

    public zzgyk(Iterator it) {
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
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.zza.next();
        return entry.getValue() instanceof zzgym ? new zzgyj(entry, null) : entry;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        this.zza.remove();
    }
}
