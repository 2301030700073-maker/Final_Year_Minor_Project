package com.google.android.gms.internal.wearable;

import java.util.List;

/* loaded from: classes3.dex */
final class zzbf implements zzew {
    private final zzbe zza;

    private zzbf(zzbe zzbeVar) {
        zzcd.zzf(zzbeVar, "output");
        this.zza = zzbeVar;
        zzbeVar.zza = this;
    }

    public static zzbf zza(zzbe zzbeVar) {
        zzbf zzbfVar = zzbeVar.zza;
        return zzbfVar != null ? zzbfVar : new zzbf(zzbeVar);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzA(int i, int i2) {
        this.zza.zzp(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzB(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zzbe zzbeVar = this.zza;
                int intValue = ((Integer) list.get(i2)).intValue();
                zzbeVar.zzp(i, (intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = ((Integer) list.get(i4)).intValue();
            i3 += zzbe.zzA((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            zzbe zzbeVar2 = this.zza;
            int intValue3 = ((Integer) list.get(i2)).intValue();
            zzbeVar2.zzq((intValue3 >> 31) ^ (intValue3 + intValue3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzC(int i, long j) {
        this.zza.zzr(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzD(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zzbe zzbeVar = this.zza;
                long longValue = ((Long) list.get(i2)).longValue();
                zzbeVar.zzr(i, (longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += zzbe.zzB((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            zzbe zzbeVar2 = this.zza;
            long longValue3 = ((Long) list.get(i2)).longValue();
            zzbeVar2.zzs((longValue3 >> 63) ^ (longValue3 + longValue3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    @Deprecated
    public final void zzE(int i) {
        this.zza.zzo(i, 3);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzF(int i, String str) {
        this.zza.zzm(i, str);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzG(int i, List list) {
        int i2 = 0;
        if (!(list instanceof zzck)) {
            while (i2 < list.size()) {
                this.zza.zzm(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzck zzckVar = (zzck) list;
        while (i2 < list.size()) {
            Object zzf = zzckVar.zzf(i2);
            if (zzf instanceof String) {
                this.zza.zzm(i, (String) zzf);
            } else {
                this.zza.zze(i, (zzaw) zzf);
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzH(int i, int i2) {
        this.zza.zzp(i, i2);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzI(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzp(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbe.zzA(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzq(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzJ(int i, long j) {
        this.zza.zzr(i, j);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzK(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzr(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbe.zzB(((Long) list.get(i4)).longValue());
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzs(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzb(int i, boolean z) {
        this.zza.zzd(i, z);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzc(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzd(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            i3++;
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzb(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzd(int i, zzaw zzawVar) {
        this.zza.zze(i, zzawVar);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zze(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zze(i, (zzaw) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzf(int i, double d) {
        this.zza.zzh(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzg(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzh(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzi(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    @Deprecated
    public final void zzh(int i) {
        this.zza.zzo(i, 4);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzi(int i, int i2) {
        this.zza.zzj(i, i2);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzj(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzj(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbe.zzv(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzk(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzk(int i, int i2) {
        this.zza.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzl(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzf(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzg(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzm(int i, long j) {
        this.zza.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzn(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzh(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzi(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzo(int i, float f) {
        this.zza.zzf(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzp(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzf(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzg(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzq(int i, Object obj, zzdn zzdnVar) {
        zzbe zzbeVar = this.zza;
        zzbeVar.zzo(i, 3);
        zzdnVar.zzi((zzdc) obj, zzbeVar.zza);
        zzbeVar.zzo(i, 4);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzr(int i, int i2) {
        this.zza.zzj(i, i2);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzs(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzj(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbe.zzv(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzk(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzt(int i, long j) {
        this.zza.zzr(i, j);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzu(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzr(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbe.zzB(((Long) list.get(i4)).longValue());
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzs(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzv(int i, Object obj, zzdn zzdnVar) {
        Object obj2 = (zzdc) obj;
        zzbb zzbbVar = (zzbb) this.zza;
        zzbbVar.zzq((i << 3) | 2);
        zzag zzagVar = (zzag) obj2;
        int zzH = zzagVar.zzH();
        if (zzH == -1) {
            zzH = zzdnVar.zza(zzagVar);
            zzagVar.zzK(zzH);
        }
        zzbbVar.zzq(zzH);
        zzdnVar.zzi(obj2, zzbbVar.zza);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzw(int i, int i2) {
        this.zza.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzx(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzf(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzg(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzy(int i, long j) {
        this.zza.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.wearable.zzew
    public final void zzz(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzh(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        while (i2 < list.size()) {
            this.zza.zzi(((Long) list.get(i2)).longValue());
            i2++;
        }
    }
}
