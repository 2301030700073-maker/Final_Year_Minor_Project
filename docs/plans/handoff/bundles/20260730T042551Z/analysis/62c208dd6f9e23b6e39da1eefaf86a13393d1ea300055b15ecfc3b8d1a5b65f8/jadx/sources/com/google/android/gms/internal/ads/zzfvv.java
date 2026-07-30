package com.google.android.gms.internal.ads;

import j$.util.Iterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
final class zzfvv implements Iterator, j$.util.Iterator {
    Map.Entry zza;
    final /* synthetic */ Iterator zzb;
    final /* synthetic */ zzfvw zzc;

    public zzfvv(zzfvw zzfvwVar, Iterator it) {
        this.zzb = it;
        this.zzc = zzfvwVar;
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
        Map.Entry entry = (Map.Entry) this.zzb.next();
        this.zza = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        int i;
        zzfun.zzm(this.zza != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.zza.getValue();
        this.zzb.remove();
        zzfwg zzfwgVar = this.zzc.zza;
        i = zzfwgVar.zzb;
        zzfwgVar.zzb = i - collection.size();
        collection.clear();
        this.zza = null;
    }
}
