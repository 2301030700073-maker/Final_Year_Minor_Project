package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzap {
    private final zzao[] zza;

    public zzap(long j, zzao... zzaoVarArr) {
        this.zza = zzaoVarArr;
    }

    public zzap(List list) {
        this.zza = (zzao[]) list.toArray(new zzao[0]);
    }

    private static final zzao zzh(zzao zzaoVar, Class cls, zzgme zzgmeVar) {
        if (!cls.isAssignableFrom(zzaoVar.getClass())) {
            return null;
        }
        zzao zzaoVar2 = (zzao) cls.cast(zzaoVar);
        if (zzgmeVar.zza(zzaoVar2)) {
            return zzaoVar2;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.equals(this.zza, ((zzap) obj).zza);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zza) * 31) + Long.hashCode(C.TIME_UNSET);
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 8);
        sb.append("entries=");
        sb.append(arrays);
        sb.append("");
        return sb.toString();
    }

    public final int zza() {
        return this.zza.length;
    }

    public final zzao zzb(int i) {
        return this.zza[i];
    }

    public final zzao zzc(Class cls, zzgme zzgmeVar) {
        for (zzao zzaoVar : this.zza) {
            zzao zzh = zzh(zzaoVar, cls, zzgmeVar);
            if (zzh != null) {
                return zzh;
            }
        }
        return null;
    }

    public final zzgpe zzd(Class cls) {
        int i = zzgpe.zzd;
        zzgpb zzgpbVar = new zzgpb();
        for (zzao zzaoVar : this.zza) {
            if (cls.isAssignableFrom(zzaoVar.getClass())) {
                zzgpbVar.zzf((zzao) cls.cast(zzaoVar));
            }
        }
        return zzgpbVar.zzi();
    }

    public final zzgpe zze(Class cls, zzgme zzgmeVar) {
        int i = zzgpe.zzd;
        zzgpb zzgpbVar = new zzgpb();
        for (zzao zzaoVar : this.zza) {
            zzao zzh = zzh(zzaoVar, cls, zzgmeVar);
            if (zzh != null) {
                zzgpbVar.zzf(zzh);
            }
        }
        return zzgpbVar.zzi();
    }

    public final zzap zzf(zzap zzapVar) {
        return zzapVar == null ? this : zzg(zzapVar.zza);
    }

    public final zzap zzg(zzao... zzaoVarArr) {
        int length = zzaoVarArr.length;
        if (length == 0) {
            return this;
        }
        zzao[] zzaoVarArr2 = this.zza;
        String str = zzep.zza;
        int length2 = zzaoVarArr2.length;
        Object[] copyOf = Arrays.copyOf(zzaoVarArr2, length2 + length);
        System.arraycopy(zzaoVarArr, 0, copyOf, length2, length);
        return new zzap(C.TIME_UNSET, (zzao[]) copyOf);
    }
}
