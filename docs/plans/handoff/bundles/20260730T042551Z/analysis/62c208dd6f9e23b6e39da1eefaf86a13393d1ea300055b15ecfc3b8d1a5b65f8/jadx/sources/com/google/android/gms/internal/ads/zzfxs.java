package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes.dex */
public abstract class zzfxs extends zzfxi implements Set, j$.util.Set {
    private transient zzfxn zza;

    public static int zzh(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            zzfun.zzf(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
        } while (highestOneBit * 0.7d < max);
        return highestOneBit;
    }

    public static zzfxr zzj(int i) {
        return new zzfxr(i, true);
    }

    public static zzfxs zzl(Collection collection) {
        if ((collection instanceof zzfxs) && !(collection instanceof SortedSet)) {
            zzfxs zzfxsVar = (zzfxs) collection;
            if (!zzfxsVar.zzf()) {
                return zzfxsVar;
            }
        }
        Object[] array = collection.toArray();
        return zzv(array.length, array);
    }

    public static zzfxs zzm(Object[] objArr) {
        int length = objArr.length;
        return length != 0 ? length != 1 ? zzv(length, (Object[]) objArr.clone()) : new zzfzq(objArr[0]) : zzfzf.zza;
    }

    public static zzfxs zzn() {
        return zzfzf.zza;
    }

    public static zzfxs zzo(Object obj) {
        return new zzfzq(obj);
    }

    public static zzfxs zzp(Object obj, Object obj2) {
        return zzv(2, obj, obj2);
    }

    public static zzfxs zzq(Object obj, Object obj2, Object obj3) {
        return zzv(3, obj, obj2, obj3);
    }

    public static zzfxs zzr(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return zzv(5, obj, obj2, obj3, obj4, obj5);
    }

    @SafeVarargs
    public static zzfxs zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        Object[] objArr2 = new Object[9];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, 3);
        return zzv(9, objArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzfxs zzv(int i, Object... objArr) {
        if (i == 0) {
            return zzfzf.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzfzq(obj);
        }
        int zzh = zzh(i);
        Object[] objArr2 = new Object[zzh];
        int i2 = zzh - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            zzfyx.zza(obj2, i5);
            int hashCode = obj2.hashCode();
            int zza = zzfxf.zza(hashCode);
            while (true) {
                int i6 = zza & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += hashCode;
                    i4++;
                    break;
                }
                if (!obj3.equals(obj2)) {
                    zza++;
                }
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzfzq(obj4);
        }
        if (zzh(i4) < zzh / 2) {
            return zzv(i4, objArr);
        }
        if (zzw(i4, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zzfzf(objArr, i3, objArr2, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzw(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzfxs) && zzu() && ((zzfxs) obj).zzu() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzfzp.zzd(this, obj);
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public int hashCode() {
        return zzfzp.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfxi
    public zzfxn zzd() {
        zzfxn zzfxnVar = this.zza;
        if (zzfxnVar != null) {
            return zzfxnVar;
        }
        zzfxn zzi = zzi();
        this.zza = zzi;
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzfxi, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, java.util.List, j$.util.List
    /* renamed from: zze */
    public abstract zzfzt iterator();

    public zzfxn zzi() {
        Object[] array = toArray();
        int i = zzfxn.zzd;
        return zzfxn.zzj(array, array.length);
    }

    public boolean zzu() {
        return false;
    }
}
