package com.google.android.gms.internal.ads;

import j$.util.Iterator;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class zzfwc implements Iterator, j$.util.Iterator {
    final Iterator zza;
    final Collection zzb;
    final /* synthetic */ zzfwd zzc;

    public zzfwc(zzfwd zzfwdVar) {
        this.zzc = zzfwdVar;
        Collection collection = zzfwdVar.zzb;
        this.zzb = collection;
        this.zza = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public zzfwc(zzfwd zzfwdVar, Iterator it) {
        this.zzc = zzfwdVar;
        this.zzb = zzfwdVar.zzb;
        this.zza = it;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        zza();
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        zza();
        return this.zza.next();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        int i;
        this.zza.remove();
        zzfwg zzfwgVar = this.zzc.zze;
        i = zzfwgVar.zzb;
        zzfwgVar.zzb = i - 1;
        this.zzc.zzc();
    }

    final void zza() {
        this.zzc.zzb();
        if (this.zzc.zzb != this.zzb) {
            throw new ConcurrentModificationException();
        }
    }
}
