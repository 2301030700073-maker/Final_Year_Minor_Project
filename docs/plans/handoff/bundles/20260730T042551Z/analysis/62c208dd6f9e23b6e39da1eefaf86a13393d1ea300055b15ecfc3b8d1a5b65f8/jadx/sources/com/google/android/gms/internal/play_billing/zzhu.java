package com.google.android.gms.internal.play_billing;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
final class zzhu implements Iterator, j$.util.Iterator {
    private final Iterator zza;

    public zzhu(Iterator it) {
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
        return entry.getValue() instanceof zzhw ? new zzht(entry, null) : entry;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        this.zza.remove();
    }
}
