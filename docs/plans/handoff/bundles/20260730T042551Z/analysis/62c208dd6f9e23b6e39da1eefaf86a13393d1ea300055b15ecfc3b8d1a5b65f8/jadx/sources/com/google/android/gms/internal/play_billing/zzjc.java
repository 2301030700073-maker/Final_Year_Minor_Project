package com.google.android.gms.internal.play_billing;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
final class zzjc implements Iterator, j$.util.Iterator {
    final /* synthetic */ zzjf zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator zzd;

    private final Iterator zza() {
        Map map;
        if (this.zzd == null) {
            map = this.zza.zzc;
            this.zzd = map.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        int i;
        Map map;
        int i2 = this.zzb + 1;
        zzjf zzjfVar = this.zza;
        i = zzjfVar.zzb;
        if (i2 < i) {
            return true;
        }
        map = zzjfVar.zzc;
        return !map.isEmpty() && zza().hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i;
        Object[] objArr;
        this.zzc = true;
        int i2 = this.zzb + 1;
        this.zzb = i2;
        zzjf zzjfVar = this.zza;
        i = zzjfVar.zzb;
        if (i2 >= i) {
            return (Map.Entry) zza().next();
        }
        objArr = zzjfVar.zza;
        return (zzjb) objArr[i2];
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        int i;
        if (!this.zzc) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzc = false;
        this.zza.zzo();
        int i2 = this.zzb;
        zzjf zzjfVar = this.zza;
        i = zzjfVar.zzb;
        if (i2 >= i) {
            zza().remove();
        } else {
            this.zzb = i2 - 1;
            zzjfVar.zzm(i2);
        }
    }
}
