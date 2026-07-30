package com.google.android.gms.internal.consent_sdk;

import defpackage.Cif;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzdf extends zzdb {
    final transient Object zza;

    public zzdf(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdb, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdb, com.google.android.gms.internal.consent_sdk.zzcx, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, java.util.List, j$.util.List
    public final /* synthetic */ Iterator iterator() {
        return new zzdc(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return Cif.m6908case("[", this.zza.toString(), "]");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzcx
    public final int zza(Object[] objArr, int i) {
        objArr[0] = this.zza;
        return 1;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdb, com.google.android.gms.internal.consent_sdk.zzcx
    /* renamed from: zzd */
    public final zzdg iterator() {
        return new zzdc(this.zza);
    }
}
