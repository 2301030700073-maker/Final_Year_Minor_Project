package com.google.android.gms.internal.wearable;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
final class zzad extends AbstractList implements RandomAccess, Serializable {
    final long[] zza;
    final int zzb;
    final int zzc;

    public zzad(long[] jArr, int i, int i2) {
        this.zza = jArr;
        this.zzb = i;
        this.zzc = i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return (obj instanceof Long) && zzae.zza(this.zza, ((Long) obj).longValue(), this.zzb, this.zzc) != -1;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzad)) {
            return super.equals(obj);
        }
        zzad zzadVar = (zzad) obj;
        int i = this.zzc - this.zzb;
        if (zzadVar.zzc - zzadVar.zzb != i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zza[this.zzb + i2] != zzadVar.zza[zzadVar.zzb + i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzy.zza(i, this.zzc - this.zzb, "index");
        return Long.valueOf(this.zza[this.zzb + i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = this.zzb; i2 < this.zzc; i2++) {
            long j = this.zza[i2];
            i = (i * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int zza;
        if (!(obj instanceof Long) || (zza = zzae.zza(this.zza, ((Long) obj).longValue(), this.zzb, this.zzc)) < 0) {
            return -1;
        }
        return zza - this.zzb;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Long) {
            long[] jArr = this.zza;
            long longValue = ((Long) obj).longValue();
            int i = this.zzb;
            int i2 = this.zzc - 1;
            while (true) {
                if (i2 < i) {
                    i2 = -1;
                    break;
                }
                if (jArr[i2] == longValue) {
                    break;
                }
                i2--;
            }
            if (i2 >= 0) {
                return i2 - this.zzb;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        Long l = (Long) obj;
        zzy.zza(i, this.zzc - this.zzb, "index");
        long[] jArr = this.zza;
        int i2 = this.zzb + i;
        long j = jArr[i2];
        l.getClass();
        jArr[i2] = l.longValue();
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc - this.zzb;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        zzy.zzb(i, i2, this.zzc - this.zzb);
        if (i == i2) {
            return Collections.emptyList();
        }
        long[] jArr = this.zza;
        int i3 = this.zzb;
        return new zzad(jArr, i + i3, i3 + i2);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder sb = new StringBuilder((this.zzc - this.zzb) * 10);
        sb.append('[');
        sb.append(this.zza[this.zzb]);
        int i = this.zzb;
        while (true) {
            i++;
            if (i >= this.zzc) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(this.zza[i]);
        }
    }
}
