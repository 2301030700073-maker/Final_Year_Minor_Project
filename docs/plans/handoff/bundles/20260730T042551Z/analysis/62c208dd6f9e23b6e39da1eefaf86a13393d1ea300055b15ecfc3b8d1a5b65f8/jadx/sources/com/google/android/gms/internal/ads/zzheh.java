package com.google.android.gms.internal.ads;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
final class zzheh implements Iterator, j$.util.Iterator {
    int zza = 0;
    final /* synthetic */ zzhei zzb;

    public zzheh(zzhei zzheiVar) {
        this.zzb = zzheiVar;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb.zza.size() || this.zzb.zzb.hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        if (this.zza >= this.zzb.zza.size()) {
            zzhei zzheiVar = this.zzb;
            zzheiVar.zza.add(zzheiVar.zzb.next());
            return next();
        }
        zzhei zzheiVar2 = this.zzb;
        int i = this.zza;
        this.zza = i + 1;
        return zzheiVar2.zza.get(i);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
