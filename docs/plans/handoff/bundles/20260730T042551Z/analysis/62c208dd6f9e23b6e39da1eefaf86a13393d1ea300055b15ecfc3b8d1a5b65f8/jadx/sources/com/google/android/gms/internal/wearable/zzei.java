package com.google.android.gms.internal.wearable;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
final class zzei implements Iterator, j$.util.Iterator {
    final Iterator zza;
    final /* synthetic */ zzej zzb;

    public zzei(zzej zzejVar) {
        zzck zzckVar;
        this.zzb = zzejVar;
        zzckVar = zzejVar.zza;
        this.zza = zzckVar.iterator();
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
        return (String) this.zza.next();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
