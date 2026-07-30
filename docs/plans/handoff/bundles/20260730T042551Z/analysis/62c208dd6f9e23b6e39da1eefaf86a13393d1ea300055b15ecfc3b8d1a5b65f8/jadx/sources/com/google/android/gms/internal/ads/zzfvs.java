package com.google.android.gms.internal.ads;

import j$.util.Iterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
final class zzfvs implements Iterator, j$.util.Iterator {
    final Iterator zza;
    Collection zzb;
    final /* synthetic */ zzfvt zzc;

    public zzfvs(zzfvt zzfvtVar) {
        this.zzc = zzfvtVar;
        this.zza = zzfvtVar.zza.entrySet().iterator();
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
        this.zzb = (Collection) entry.getValue();
        return this.zzc.zza(entry);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        int i;
        zzfun.zzm(this.zzb != null, "no calls to next() since the last call to remove()");
        this.zza.remove();
        zzfwg zzfwgVar = this.zzc.zzb;
        i = zzfwgVar.zzb;
        zzfwgVar.zzb = i - this.zzb.size();
        this.zzb.clear();
        this.zzb = null;
    }
}
