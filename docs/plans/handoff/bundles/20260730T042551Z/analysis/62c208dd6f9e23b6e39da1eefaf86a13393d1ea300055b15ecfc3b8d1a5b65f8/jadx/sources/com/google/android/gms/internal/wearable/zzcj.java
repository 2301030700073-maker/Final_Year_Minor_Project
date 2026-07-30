package com.google.android.gms.internal.wearable;

import j$.util.DesugarCollections;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class zzcj extends zzah implements RandomAccess, zzck {
    public static final zzck zza;
    private static final zzcj zzb;
    private final List zzc;

    static {
        zzcj zzcjVar = new zzcj(10);
        zzb = zzcjVar;
        zzcjVar.zzb();
        zza = zzcjVar;
    }

    public zzcj() {
        this(10);
    }

    private static String zzj(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzaw ? ((zzaw) obj).zzp(zzcd.zzb) : zzcd.zzh((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.wearable.zzah, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        zzad();
        this.zzc.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.wearable.zzah, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        zzad();
        if (collection instanceof zzck) {
            collection = ((zzck) collection).zzh();
        }
        boolean addAll = this.zzc.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.wearable.zzah, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzad();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.wearable.zzah, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        zzad();
        Object remove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zzj(remove);
    }

    @Override // com.google.android.gms.internal.wearable.zzah, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        zzad();
        return zzj(this.zzc.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.wearable.zzcc
    public final /* bridge */ /* synthetic */ zzcc zzd(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzc);
        return new zzcj(arrayList);
    }

    @Override // com.google.android.gms.internal.wearable.zzck
    public final zzck zze() {
        return zzc() ? new zzej(this) : this;
    }

    @Override // com.google.android.gms.internal.wearable.zzck
    public final Object zzf(int i) {
        return this.zzc.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzaw) {
            zzaw zzawVar = (zzaw) obj;
            String zzp = zzawVar.zzp(zzcd.zzb);
            if (zzawVar.zzj()) {
                this.zzc.set(i, zzp);
            }
            return zzp;
        }
        byte[] bArr = (byte[]) obj;
        String zzh = zzcd.zzh(bArr);
        if (zzcd.zzi(bArr)) {
            this.zzc.set(i, zzh);
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.wearable.zzck
    public final List zzh() {
        return DesugarCollections.unmodifiableList(this.zzc);
    }

    @Override // com.google.android.gms.internal.wearable.zzck
    public final void zzi(zzaw zzawVar) {
        zzad();
        this.zzc.add(zzawVar);
        ((AbstractList) this).modCount++;
    }

    public zzcj(int i) {
        this.zzc = new ArrayList(i);
    }

    private zzcj(ArrayList arrayList) {
        this.zzc = arrayList;
    }

    @Override // com.google.android.gms.internal.wearable.zzah, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
