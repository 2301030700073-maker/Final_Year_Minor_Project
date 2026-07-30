package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
final class zzgwx implements zzhaw {
    private final zzgww zza;

    private zzgwx(zzgww zzgwwVar) {
        zzgye.zzc(zzgwwVar, "output");
        this.zza = zzgwwVar;
        zzgwwVar.zze = this;
    }

    public static zzgwx zza(zzgww zzgwwVar) {
        zzgwx zzgwxVar = zzgwwVar.zze;
        return zzgwxVar != null ? zzgwxVar : new zzgwx(zzgwwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzA(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgyr)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzj(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).longValue();
                i3 += 8;
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzgyr zzgyrVar = (zzgyr) list;
        if (!z) {
            while (i2 < zzgyrVar.size()) {
                this.zza.zzj(i, zzgyrVar.zza(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgyrVar.size(); i6++) {
            zzgyrVar.zza(i6);
            i5 += 8;
        }
        this.zza.zzu(i5);
        while (i2 < zzgyrVar.size()) {
            this.zza.zzk(zzgyrVar.zza(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzB(int i, int i2) {
        this.zza.zzt(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzC(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgxs)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgww zzgwwVar = this.zza;
                    int intValue = ((Integer) list.get(i2)).intValue();
                    zzgwwVar.zzt(i, (intValue >> 31) ^ (intValue + intValue));
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue2 = ((Integer) list.get(i4)).intValue();
                i3 += zzgww.zzD((intValue2 >> 31) ^ (intValue2 + intValue2));
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                zzgww zzgwwVar2 = this.zza;
                int intValue3 = ((Integer) list.get(i2)).intValue();
                zzgwwVar2.zzu((intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
            return;
        }
        zzgxs zzgxsVar = (zzgxs) list;
        if (!z) {
            while (i2 < zzgxsVar.size()) {
                zzgww zzgwwVar3 = this.zza;
                int zzd = zzgxsVar.zzd(i2);
                zzgwwVar3.zzt(i, (zzd >> 31) ^ (zzd + zzd));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgxsVar.size(); i6++) {
            int zzd2 = zzgxsVar.zzd(i6);
            i5 += zzgww.zzD((zzd2 >> 31) ^ (zzd2 + zzd2));
        }
        this.zza.zzu(i5);
        while (i2 < zzgxsVar.size()) {
            zzgww zzgwwVar4 = this.zza;
            int zzd3 = zzgxsVar.zzd(i2);
            zzgwwVar4.zzu((zzd3 >> 31) ^ (zzd3 + zzd3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzD(int i, long j) {
        this.zza.zzv(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzE(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgyr)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgww zzgwwVar = this.zza;
                    long longValue = ((Long) list.get(i2)).longValue();
                    zzgwwVar.zzv(i, (longValue >> 63) ^ (longValue + longValue));
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                long longValue2 = ((Long) list.get(i4)).longValue();
                i3 += zzgww.zzE((longValue2 >> 63) ^ (longValue2 + longValue2));
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                zzgww zzgwwVar2 = this.zza;
                long longValue3 = ((Long) list.get(i2)).longValue();
                zzgwwVar2.zzw((longValue3 >> 63) ^ (longValue3 + longValue3));
                i2++;
            }
            return;
        }
        zzgyr zzgyrVar = (zzgyr) list;
        if (!z) {
            while (i2 < zzgyrVar.size()) {
                zzgww zzgwwVar3 = this.zza;
                long zza = zzgyrVar.zza(i2);
                zzgwwVar3.zzv(i, (zza >> 63) ^ (zza + zza));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgyrVar.size(); i6++) {
            long zza2 = zzgyrVar.zza(i6);
            i5 += zzgww.zzE((zza2 >> 63) ^ (zza2 + zza2));
        }
        this.zza.zzu(i5);
        while (i2 < zzgyrVar.size()) {
            zzgww zzgwwVar4 = this.zza;
            long zza3 = zzgyrVar.zza(i2);
            zzgwwVar4.zzw((zza3 >> 63) ^ (zza3 + zza3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    @Deprecated
    public final void zzF(int i) {
        this.zza.zzs(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzG(int i, String str) {
        this.zza.zzq(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzH(int i, List list) {
        int i2 = 0;
        if (!(list instanceof zzgyo)) {
            while (i2 < list.size()) {
                this.zza.zzq(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzgyo zzgyoVar = (zzgyo) list;
        while (i2 < list.size()) {
            Object zzc = zzgyoVar.zzc();
            if (zzc instanceof String) {
                this.zza.zzq(i, (String) zzc);
            } else {
                this.zza.zzN(i, (zzgwj) zzc);
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzI(int i, int i2) {
        this.zza.zzt(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzJ(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgxs)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzt(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgww.zzD(((Integer) list.get(i4)).intValue());
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzu(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgxs zzgxsVar = (zzgxs) list;
        if (!z) {
            while (i2 < zzgxsVar.size()) {
                this.zza.zzt(i, zzgxsVar.zzd(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgxsVar.size(); i6++) {
            i5 += zzgww.zzD(zzgxsVar.zzd(i6));
        }
        this.zza.zzu(i5);
        while (i2 < zzgxsVar.size()) {
            this.zza.zzu(zzgxsVar.zzd(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzK(int i, long j) {
        this.zza.zzv(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzL(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgyr)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzv(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgww.zzE(((Long) list.get(i4)).longValue());
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzgyr zzgyrVar = (zzgyr) list;
        if (!z) {
            while (i2 < zzgyrVar.size()) {
                this.zza.zzv(i, zzgyrVar.zza(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgyrVar.size(); i6++) {
            i5 += zzgww.zzE(zzgyrVar.zza(i6));
        }
        this.zza.zzu(i5);
        while (i2 < zzgyrVar.size()) {
            this.zza.zzw(zzgyrVar.zza(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzb(int i, boolean z) {
        this.zza.zzM(i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzc(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgvz)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzM(i, ((Boolean) list.get(i2)).booleanValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Boolean) list.get(i4)).booleanValue();
                i3++;
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzL(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        zzgvz zzgvzVar = (zzgvz) list;
        if (!z) {
            while (i2 < zzgvzVar.size()) {
                this.zza.zzM(i, zzgvzVar.zzh(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgvzVar.size(); i6++) {
            zzgvzVar.zzh(i6);
            i5++;
        }
        this.zza.zzu(i5);
        while (i2 < zzgvzVar.size()) {
            this.zza.zzL(zzgvzVar.zzh(i2) ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzd(int i, zzgwj zzgwjVar) {
        this.zza.zzN(i, zzgwjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zze(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzN(i, (zzgwj) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzf(int i, double d) {
        this.zza.zzj(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzg(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgwy)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzj(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).doubleValue();
                i3 += 8;
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzk(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        zzgwy zzgwyVar = (zzgwy) list;
        if (!z) {
            while (i2 < zzgwyVar.size()) {
                this.zza.zzj(i, Double.doubleToRawLongBits(zzgwyVar.zzd(i2)));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgwyVar.size(); i6++) {
            zzgwyVar.zzd(i6);
            i5 += 8;
        }
        this.zza.zzu(i5);
        while (i2 < zzgwyVar.size()) {
            this.zza.zzk(Double.doubleToRawLongBits(zzgwyVar.zzd(i2)));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    @Deprecated
    public final void zzh(int i) {
        this.zza.zzs(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzi(int i, int i2) {
        this.zza.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzj(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgxs)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzl(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgww.zzE(((Integer) list.get(i4)).intValue());
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgxs zzgxsVar = (zzgxs) list;
        if (!z) {
            while (i2 < zzgxsVar.size()) {
                this.zza.zzl(i, zzgxsVar.zzd(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgxsVar.size(); i6++) {
            i5 += zzgww.zzE(zzgxsVar.zzd(i6));
        }
        this.zza.zzu(i5);
        while (i2 < zzgxsVar.size()) {
            this.zza.zzm(zzgxsVar.zzd(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzk(int i, int i2) {
        this.zza.zzh(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzl(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgxs)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgxs zzgxsVar = (zzgxs) list;
        if (!z) {
            while (i2 < zzgxsVar.size()) {
                this.zza.zzh(i, zzgxsVar.zzd(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgxsVar.size(); i6++) {
            zzgxsVar.zzd(i6);
            i5 += 4;
        }
        this.zza.zzu(i5);
        while (i2 < zzgxsVar.size()) {
            this.zza.zzi(zzgxsVar.zzd(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzm(int i, long j) {
        this.zza.zzj(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzn(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgyr)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzj(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).longValue();
                i3 += 8;
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzgyr zzgyrVar = (zzgyr) list;
        if (!z) {
            while (i2 < zzgyrVar.size()) {
                this.zza.zzj(i, zzgyrVar.zza(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgyrVar.size(); i6++) {
            zzgyrVar.zza(i6);
            i5 += 8;
        }
        this.zza.zzu(i5);
        while (i2 < zzgyrVar.size()) {
            this.zza.zzk(zzgyrVar.zza(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzo(int i, float f) {
        this.zza.zzh(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzp(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgxi)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).floatValue();
                i3 += 4;
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzi(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        zzgxi zzgxiVar = (zzgxi) list;
        if (!z) {
            while (i2 < zzgxiVar.size()) {
                this.zza.zzh(i, Float.floatToRawIntBits(zzgxiVar.zzd(i2)));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgxiVar.size(); i6++) {
            zzgxiVar.zzd(i6);
            i5 += 4;
        }
        this.zza.zzu(i5);
        while (i2 < zzgxiVar.size()) {
            this.zza.zzi(Float.floatToRawIntBits(zzgxiVar.zzd(i2)));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzq(int i, Object obj, zzgzv zzgzvVar) {
        zzgww zzgwwVar = this.zza;
        zzgwwVar.zzs(i, 3);
        zzgzvVar.zzj((zzgzc) obj, zzgwwVar.zze);
        zzgwwVar.zzs(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzr(int i, int i2) {
        this.zza.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzs(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgxs)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzl(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgww.zzE(((Integer) list.get(i4)).intValue());
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgxs zzgxsVar = (zzgxs) list;
        if (!z) {
            while (i2 < zzgxsVar.size()) {
                this.zza.zzl(i, zzgxsVar.zzd(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgxsVar.size(); i6++) {
            i5 += zzgww.zzE(zzgxsVar.zzd(i6));
        }
        this.zza.zzu(i5);
        while (i2 < zzgxsVar.size()) {
            this.zza.zzm(zzgxsVar.zzd(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzt(int i, long j) {
        this.zza.zzv(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzu(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgyr)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzv(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgww.zzE(((Long) list.get(i4)).longValue());
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzgyr zzgyrVar = (zzgyr) list;
        if (!z) {
            while (i2 < zzgyrVar.size()) {
                this.zza.zzv(i, zzgyrVar.zza(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgyrVar.size(); i6++) {
            i5 += zzgww.zzE(zzgyrVar.zza(i6));
        }
        this.zza.zzu(i5);
        while (i2 < zzgyrVar.size()) {
            this.zza.zzw(zzgyrVar.zza(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzv(int i, Object obj, zzgzv zzgzvVar) {
        this.zza.zzn(i, (zzgzc) obj, zzgzvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzw(int i, Object obj) {
        if (obj instanceof zzgwj) {
            this.zza.zzp(i, (zzgwj) obj);
        } else {
            this.zza.zzo(i, (zzgzc) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzx(int i, int i2) {
        this.zza.zzh(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzy(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzgxs)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            this.zza.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            this.zza.zzu(i3);
            while (i2 < list.size()) {
                this.zza.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgxs zzgxsVar = (zzgxs) list;
        if (!z) {
            while (i2 < zzgxsVar.size()) {
                this.zza.zzh(i, zzgxsVar.zzd(i2));
                i2++;
            }
            return;
        }
        this.zza.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgxsVar.size(); i6++) {
            zzgxsVar.zzd(i6);
            i5 += 4;
        }
        this.zza.zzu(i5);
        while (i2 < zzgxsVar.size()) {
            this.zza.zzi(zzgxsVar.zzd(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaw
    public final void zzz(int i, long j) {
        this.zza.zzj(i, j);
    }
}
