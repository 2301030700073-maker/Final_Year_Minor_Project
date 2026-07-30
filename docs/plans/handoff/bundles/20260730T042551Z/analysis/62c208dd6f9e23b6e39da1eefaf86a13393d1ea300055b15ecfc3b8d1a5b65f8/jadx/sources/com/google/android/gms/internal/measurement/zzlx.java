package com.google.android.gms.internal.measurement;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
final class zzlx implements Iterator, j$.util.Iterator {
    private int zza;
    private Iterator zzb;
    private final /* synthetic */ zzlv zzc;

    private zzlx(zzlv zzlvVar) {
        int i;
        this.zzc = zzlvVar;
        i = zzlvVar.zzb;
        this.zza = i;
    }

    private final Iterator zza() {
        Map map;
        if (this.zzb == null) {
            map = this.zzc.zzf;
            this.zzb = map.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        int i;
        int i2 = this.zza;
        if (i2 > 0) {
            i = this.zzc.zzb;
            if (i2 <= i) {
                return true;
            }
        }
        return zza().hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ Object next() {
        Object[] objArr;
        if (zza().hasNext()) {
            return (Map.Entry) zza().next();
        }
        objArr = this.zzc.zza;
        int i = this.zza - 1;
        this.zza = i;
        return (zzlz) objArr[i];
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
