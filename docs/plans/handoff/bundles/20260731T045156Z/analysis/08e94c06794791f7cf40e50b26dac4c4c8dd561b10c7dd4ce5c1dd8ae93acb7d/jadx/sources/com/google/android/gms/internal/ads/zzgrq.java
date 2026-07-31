package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
abstract class zzgrq implements Iterator {
    final Iterator zzb;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return zza(this.zzb.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzb.remove();
    }

    abstract Object zza(Object obj);

    zzgrq(Iterator it) {
        it.getClass();
        this.zzb = it;
    }
}
