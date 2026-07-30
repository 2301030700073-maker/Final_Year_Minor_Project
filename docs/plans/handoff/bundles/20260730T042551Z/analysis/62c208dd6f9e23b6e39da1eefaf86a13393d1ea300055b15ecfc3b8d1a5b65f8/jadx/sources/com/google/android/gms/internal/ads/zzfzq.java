package com.google.android.gms.internal.ads;

import defpackage.Cif;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzfzq extends zzfxs {
    final transient Object zza;

    public zzfzq(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfxi, java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, com.google.android.gms.internal.ads.zzfxi, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, java.util.List, j$.util.List
    public final /* synthetic */ Iterator iterator() {
        return new zzfxw(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return Cif.m6908case("[", this.zza.toString(), "]");
    }

    @Override // com.google.android.gms.internal.ads.zzfxi
    public final int zza(Object[] objArr, int i) {
        objArr[i] = this.zza;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, com.google.android.gms.internal.ads.zzfxi
    public final zzfxn zzd() {
        return zzfxn.zzo(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, com.google.android.gms.internal.ads.zzfxi
    /* renamed from: zze */
    public final zzfzt iterator() {
        return new zzfxw(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfxi
    public final boolean zzf() {
        return false;
    }
}
