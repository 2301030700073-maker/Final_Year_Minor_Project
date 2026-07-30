package com.google.android.gms.internal.wearable;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class zzej extends AbstractList implements RandomAccess, zzck {
    private final zzck zza;

    public zzej(zzck zzckVar) {
        this.zza = zzckVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((zzcj) this.zza).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzei(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new zzeh(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.wearable.zzck
    public final zzck zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.wearable.zzck
    public final Object zzf(int i) {
        return this.zza.zzf(i);
    }

    @Override // com.google.android.gms.internal.wearable.zzck
    public final List zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.wearable.zzck
    public final void zzi(zzaw zzawVar) {
        throw new UnsupportedOperationException();
    }
}
