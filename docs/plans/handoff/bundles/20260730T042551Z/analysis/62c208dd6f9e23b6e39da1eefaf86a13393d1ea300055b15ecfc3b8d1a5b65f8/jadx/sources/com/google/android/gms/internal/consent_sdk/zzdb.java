package com.google.android.gms.internal.consent_sdk;

import defpackage.V1;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class zzdb extends zzcx implements Set, j$.util.Set {
    private transient zzda zza;

    public static int zzf(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            if (max < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
        } while (highestOneBit * 0.7d < max);
        return highestOneBit;
    }

    public static zzdb zzi() {
        return zzde.zza;
    }

    public static zzdb zzj(Object obj, Object obj2, Object obj3, Object obj4) {
        return zzl(4, "IABTCF_TCString", "IABGPP_HDR_GppString", "IABGPP_GppSID", "IABUSPrivacy_String");
    }

    private static zzdb zzl(int i, Object... objArr) {
        if (i == 0) {
            return zzde.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzdf(obj);
        }
        int zzf = zzf(i);
        Object[] objArr2 = new Object[zzf];
        int i2 = zzf - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            if (obj2 == null) {
                throw new NullPointerException(V1.m2494case("at index ", i5));
            }
            int hashCode = obj2.hashCode();
            int zza = zzcw.zza(hashCode);
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
            return new zzdf(obj4);
        }
        if (zzf(i4) < zzf / 2) {
            return zzl(i4, objArr);
        }
        if (i4 < 3) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zzde(objArr, i3, objArr2, i2, i4);
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzdb) && zzk() && ((zzdb) obj).zzk() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzcx, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, java.util.List, j$.util.List
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public abstract zzdg iterator();

    public final zzda zzg() {
        zzda zzdaVar = this.zza;
        if (zzdaVar != null) {
            return zzdaVar;
        }
        zzda zzh = zzh();
        this.zza = zzh;
        return zzh;
    }

    public zzda zzh() {
        Object[] array = toArray();
        int i = zzda.zzd;
        return zzda.zzg(array, array.length);
    }

    public boolean zzk() {
        return false;
    }
}
