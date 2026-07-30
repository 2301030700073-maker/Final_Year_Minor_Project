package com.google.android.gms.internal.measurement;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
final class zzmc implements Iterator, j$.util.Iterator {
    private int zza;
    private boolean zzb;
    private Iterator zzc;
    private final /* synthetic */ zzlv zzd;

    private zzmc(zzlv zzlvVar) {
        this.zzd = zzlvVar;
        this.zza = -1;
    }

    private final Iterator zza() {
        Map map;
        if (this.zzc == null) {
            map = this.zzd.zzc;
            this.zzc = map.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        int i;
        Map map;
        int i2 = this.zza + 1;
        i = this.zzd.zzb;
        if (i2 >= i) {
            map = this.zzd.zzc;
            if (map.isEmpty() || !zza().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ Object next() {
        int i;
        Object[] objArr;
        this.zzb = true;
        int i2 = this.zza + 1;
        this.zza = i2;
        i = this.zzd.zzb;
        if (i2 >= i) {
            return (Map.Entry) zza().next();
        }
        objArr = this.zzd.zza;
        return (zzlz) objArr[this.zza];
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        int i;
        if (!this.zzb) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzb = false;
        this.zzd.zzg();
        int i2 = this.zza;
        i = this.zzd.zzb;
        if (i2 >= i) {
            zza().remove();
            return;
        }
        zzlv zzlvVar = this.zzd;
        int i3 = this.zza;
        this.zza = i3 - 1;
        zzlvVar.zzb(i3);
    }
}
