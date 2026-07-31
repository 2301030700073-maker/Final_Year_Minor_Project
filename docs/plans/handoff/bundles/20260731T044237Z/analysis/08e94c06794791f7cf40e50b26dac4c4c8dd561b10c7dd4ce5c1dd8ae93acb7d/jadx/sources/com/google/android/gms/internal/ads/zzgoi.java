package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgoi extends AbstractSet {
    final /* synthetic */ zzgon zza;

    /* synthetic */ zzgoi(zzgon zzgonVar, byte[] bArr) {
        Objects.requireNonNull(zzgonVar);
        this.zza = zzgonVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        zzgon zzgonVar = this.zza;
        Map zzc = zzgonVar.zzc();
        if (zzc != null) {
            return zzc.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int zzi = zzgonVar.zzi(entry.getKey());
            if (zzi != -1 && Objects.equals(zzgonVar.zzp(zzi), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzgon zzgonVar = this.zza;
        Map zzc = zzgonVar.zzc();
        return zzc != null ? zzc.entrySet().iterator() : new zzgog(zzgonVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        zzgon zzgonVar = this.zza;
        Map zzc = zzgonVar.zzc();
        if (zzc != null) {
            return zzc.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (zzgonVar.zzb()) {
            return false;
        }
        int zzh = zzgonVar.zzh();
        int zze = zzgoo.zze(entry.getKey(), entry.getValue(), zzh, zzgonVar.zzk(), zzgonVar.zzl(), zzgonVar.zzm(), zzgonVar.zzn());
        if (zze == -1) {
            return false;
        }
        zzgonVar.zze(zze, zzh);
        zzgonVar.zzu(zzgonVar.zzt() - 1);
        zzgonVar.zzd();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
