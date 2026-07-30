package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.AbstractMap;

/* loaded from: classes.dex */
final class zzfza extends zzfxn {
    final /* synthetic */ zzfzb zza;

    public zzfza(zzfzb zzfzbVar) {
        this.zza = zzfzbVar;
    }

    @Override // java.util.List, j$.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzc;
        zzfun.zza(i, i2, "index");
        objArr = this.zza.zzb;
        int i3 = i + i;
        Object obj = objArr[i3];
        Objects.requireNonNull(obj);
        objArr2 = this.zza.zzb;
        Object obj2 = objArr2[i3 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int size() {
        int i;
        i = this.zza.zzc;
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzfxi
    public final boolean zzf() {
        return true;
    }
}
