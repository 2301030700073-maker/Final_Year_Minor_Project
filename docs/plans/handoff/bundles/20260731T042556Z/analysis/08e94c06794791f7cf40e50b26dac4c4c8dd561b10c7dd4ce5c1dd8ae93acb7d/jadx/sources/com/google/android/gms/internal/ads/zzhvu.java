package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhvu implements zzhzr {
    private final zzhvt zza;

    private zzhvu(zzhvt zzhvtVar) {
        zzhxb.zza(zzhvtVar, "output");
        this.zza = zzhvtVar;
        zzhvtVar.zze = this;
    }

    public static zzhvu zza(zzhvt zzhvtVar) {
        Object obj = zzhvtVar.zze;
        return obj != null ? (zzhvu) obj : new zzhvu(zzhvtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzG(int i, List list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzk(i, (zzhvi) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzM(int i, zzhxr zzhxrVar, Map map) throws IOException {
        for (Map.Entry entry : map.entrySet()) {
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            zzhvtVar.zzs(zzhxs.zzc(zzhxrVar, entry.getKey(), entry.getValue()));
            zzhxs.zzb(zzhvtVar, zzhxrVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzb(int i, int i2) throws IOException {
        this.zza.zzM(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzc(int i, long j) throws IOException {
        this.zza.zzN(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzd(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zze(int i, float f) throws IOException {
        this.zza.zzM(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzf(int i, double d) throws IOException {
        this.zza.zzh(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzg(int i, int i2) throws IOException {
        this.zza.zzK(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzh(int i, long j) throws IOException {
        this.zza.zzN(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzK(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzj(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzM(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzl(int i, boolean z) throws IOException {
        this.zza.zzi(i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzm(int i, String str) throws IOException {
        this.zza.zzj(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzn(int i, zzhvi zzhviVar) throws IOException {
        this.zza.zzk(i, zzhviVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzo(int i, int i2) throws IOException {
        this.zza.zzL(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzp(int i, int i2) throws IOException {
        this.zza.zzL(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzq(int i, long j) throws IOException {
        this.zza.zzN(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzr(int i, Object obj, zzhyr zzhyrVar) throws IOException {
        zzhvt zzhvtVar = this.zza;
        zzhur zzhurVar = (zzhur) obj;
        zzhvtVar.zzJ(i, 2);
        zzhvtVar.zzs(zzhurVar.zzaT(zzhyrVar));
        zzhyrVar.zzf(zzhurVar, this);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzs(int i, Object obj, zzhyr zzhyrVar) throws IOException {
        zzhvt zzhvtVar = this.zza;
        zzhvtVar.zzJ(i, 3);
        zzhyrVar.zzf((zzhur) obj, this);
        zzhvtVar.zzJ(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    @Deprecated
    public final void zzt(int i) throws IOException {
        this.zza.zzJ(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    @Deprecated
    public final void zzu(int i) throws IOException {
        this.zza.zzJ(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzv(int i, Object obj) throws IOException {
        if (obj instanceof zzhvi) {
            this.zza.zzo(i, (zzhvi) obj);
        } else {
            this.zza.zzn(i, (zzhxz) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzF(int i, List list) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhxk)) {
            while (i2 < list.size()) {
                this.zza.zzj(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzhxk zzhxkVar = (zzhxk) list;
        while (i2 < list.size()) {
            Object zzc = zzhxkVar.zzc();
            if (zzc instanceof String) {
                this.zza.zzj(i, (String) zzc);
            } else {
                this.zza.zzk(i, (zzhvi) zzc);
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzA(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhxn)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).longValue();
                i3 += 8;
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzv(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzhxn zzhxnVar = (zzhxn) list;
        if (!z) {
            while (i2 < zzhxnVar.size()) {
                this.zza.zzh(i, zzhxnVar.zzc(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhxnVar.size(); i6++) {
            zzhxnVar.zzc(i6);
            i5 += 8;
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhxnVar.size()) {
            zzhvtVar2.zzv(zzhxnVar.zzc(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzH(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhwp)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzL(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzhvt.zzA(((Integer) list.get(i4)).intValue());
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzs(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzhwp zzhwpVar = (zzhwp) list;
        if (!z) {
            while (i2 < zzhwpVar.size()) {
                this.zza.zzL(i, zzhwpVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhwpVar.size(); i6++) {
            i5 += zzhvt.zzA(zzhwpVar.zzf(i6));
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhwpVar.size()) {
            zzhvtVar2.zzs(zzhwpVar.zzf(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzx(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhwp)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzM(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzt(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzhwp zzhwpVar = (zzhwp) list;
        if (!z) {
            while (i2 < zzhwpVar.size()) {
                this.zza.zzM(i, zzhwpVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhwpVar.size(); i6++) {
            zzhwpVar.zzf(i6);
            i5 += 4;
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhwpVar.size()) {
            zzhvtVar2.zzt(zzhwpVar.zzf(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzz(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhxn)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzN(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzhvt.zzB(((Long) list.get(i4)).longValue());
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzu(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzhxn zzhxnVar = (zzhxn) list;
        if (!z) {
            while (i2 < zzhxnVar.size()) {
                this.zza.zzN(i, zzhxnVar.zzc(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhxnVar.size(); i6++) {
            i5 += zzhvt.zzB(zzhxnVar.zzc(i6));
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhxnVar.size()) {
            zzhvtVar2.zzu(zzhxnVar.zzc(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzE(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhuy)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzi(i, ((Boolean) list.get(i2)).booleanValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Boolean) list.get(i4)).booleanValue();
                i3++;
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzq(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        zzhuy zzhuyVar = (zzhuy) list;
        if (!z) {
            while (i2 < zzhuyVar.size()) {
                this.zza.zzi(i, zzhuyVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhuyVar.size(); i6++) {
            zzhuyVar.zzf(i6);
            i5++;
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhuyVar.size()) {
            zzhvtVar2.zzq(zzhuyVar.zzf(i2) ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzw(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhwp)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzK(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzhvt.zzB(((Integer) list.get(i4)).intValue());
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzr(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzhwp zzhwpVar = (zzhwp) list;
        if (!z) {
            while (i2 < zzhwpVar.size()) {
                this.zza.zzK(i, zzhwpVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhwpVar.size(); i6++) {
            i5 += zzhvt.zzB(zzhwpVar.zzf(i6));
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhwpVar.size()) {
            zzhvtVar2.zzr(zzhwpVar.zzf(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzB(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhwf)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzM(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).floatValue();
                i3 += 4;
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzt(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        zzhwf zzhwfVar = (zzhwf) list;
        if (!z) {
            while (i2 < zzhwfVar.size()) {
                this.zza.zzM(i, Float.floatToRawIntBits(zzhwfVar.zzf(i2)));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhwfVar.size(); i6++) {
            zzhwfVar.zzf(i6);
            i5 += 4;
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhwfVar.size()) {
            zzhvtVar2.zzt(Float.floatToRawIntBits(zzhwfVar.zzf(i2)));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzC(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhvv)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).doubleValue();
                i3 += 8;
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzv(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        zzhvv zzhvvVar = (zzhvv) list;
        if (!z) {
            while (i2 < zzhvvVar.size()) {
                this.zza.zzh(i, Double.doubleToRawLongBits(zzhvvVar.zzf(i2)));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhvvVar.size(); i6++) {
            zzhvvVar.zzf(i6);
            i5 += 8;
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhvvVar.size()) {
            zzhvtVar2.zzv(Double.doubleToRawLongBits(zzhvvVar.zzf(i2)));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzI(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhwp)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzM(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzt(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzhwp zzhwpVar = (zzhwp) list;
        if (!z) {
            while (i2 < zzhwpVar.size()) {
                this.zza.zzM(i, zzhwpVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhwpVar.size(); i6++) {
            zzhwpVar.zzf(i6);
            i5 += 4;
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhwpVar.size()) {
            zzhvtVar2.zzt(zzhwpVar.zzf(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzJ(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhxn)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).longValue();
                i3 += 8;
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzv(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzhxn zzhxnVar = (zzhxn) list;
        if (!z) {
            while (i2 < zzhxnVar.size()) {
                this.zza.zzh(i, zzhxnVar.zzc(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhxnVar.size(); i6++) {
            zzhxnVar.zzc(i6);
            i5 += 8;
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhxnVar.size()) {
            zzhvtVar2.zzv(zzhxnVar.zzc(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzD(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhwp)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzK(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzhvt.zzB(((Integer) list.get(i4)).intValue());
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzr(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzhwp zzhwpVar = (zzhwp) list;
        if (!z) {
            while (i2 < zzhwpVar.size()) {
                this.zza.zzK(i, zzhwpVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhwpVar.size(); i6++) {
            i5 += zzhvt.zzB(zzhwpVar.zzf(i6));
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhwpVar.size()) {
            zzhvtVar2.zzr(zzhwpVar.zzf(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzK(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhwp)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzhvt zzhvtVar = this.zza;
                    int intValue = ((Integer) list.get(i2)).intValue();
                    zzhvtVar.zzL(i, (intValue >> 31) ^ (intValue + intValue));
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar2 = this.zza;
            zzhvtVar2.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue2 = ((Integer) list.get(i4)).intValue();
                i3 += zzhvt.zzA((intValue2 >> 31) ^ (intValue2 + intValue2));
            }
            zzhvtVar2.zzs(i3);
            while (i2 < list.size()) {
                int intValue3 = ((Integer) list.get(i2)).intValue();
                zzhvtVar2.zzs((intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
            return;
        }
        zzhwp zzhwpVar = (zzhwp) list;
        if (!z) {
            while (i2 < zzhwpVar.size()) {
                zzhvt zzhvtVar3 = this.zza;
                int zzf = zzhwpVar.zzf(i2);
                zzhvtVar3.zzL(i, (zzf >> 31) ^ (zzf + zzf));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar4 = this.zza;
        zzhvtVar4.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhwpVar.size(); i6++) {
            int zzf2 = zzhwpVar.zzf(i6);
            i5 += zzhvt.zzA((zzf2 >> 31) ^ (zzf2 + zzf2));
        }
        zzhvtVar4.zzs(i5);
        while (i2 < zzhwpVar.size()) {
            int zzf3 = zzhwpVar.zzf(i2);
            zzhvtVar4.zzs((zzf3 >> 31) ^ (zzf3 + zzf3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzL(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhxn)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzhvt zzhvtVar = this.zza;
                    long longValue = ((Long) list.get(i2)).longValue();
                    zzhvtVar.zzN(i, (longValue >> 63) ^ (longValue + longValue));
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar2 = this.zza;
            zzhvtVar2.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                long longValue2 = ((Long) list.get(i4)).longValue();
                i3 += zzhvt.zzB((longValue2 >> 63) ^ (longValue2 + longValue2));
            }
            zzhvtVar2.zzs(i3);
            while (i2 < list.size()) {
                long longValue3 = ((Long) list.get(i2)).longValue();
                zzhvtVar2.zzu((longValue3 >> 63) ^ (longValue3 + longValue3));
                i2++;
            }
            return;
        }
        zzhxn zzhxnVar = (zzhxn) list;
        if (!z) {
            while (i2 < zzhxnVar.size()) {
                zzhvt zzhvtVar3 = this.zza;
                long zzc = zzhxnVar.zzc(i2);
                zzhvtVar3.zzN(i, (zzc >> 63) ^ (zzc + zzc));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar4 = this.zza;
        zzhvtVar4.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhxnVar.size(); i6++) {
            long zzc2 = zzhxnVar.zzc(i6);
            i5 += zzhvt.zzB((zzc2 >> 63) ^ (zzc2 + zzc2));
        }
        zzhvtVar4.zzs(i5);
        while (i2 < zzhxnVar.size()) {
            long zzc3 = zzhxnVar.zzc(i2);
            zzhvtVar4.zzu((zzc3 >> 63) ^ (zzc3 + zzc3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzr
    public final void zzy(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzhxn)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzN(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzhvt zzhvtVar = this.zza;
            zzhvtVar.zzJ(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzhvt.zzB(((Long) list.get(i4)).longValue());
            }
            zzhvtVar.zzs(i3);
            while (i2 < list.size()) {
                zzhvtVar.zzu(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzhxn zzhxnVar = (zzhxn) list;
        if (!z) {
            while (i2 < zzhxnVar.size()) {
                this.zza.zzN(i, zzhxnVar.zzc(i2));
                i2++;
            }
            return;
        }
        zzhvt zzhvtVar2 = this.zza;
        zzhvtVar2.zzJ(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhxnVar.size(); i6++) {
            i5 += zzhvt.zzB(zzhxnVar.zzc(i6));
        }
        zzhvtVar2.zzs(i5);
        while (i2 < zzhxnVar.size()) {
            zzhvtVar2.zzu(zzhxnVar.zzc(i2));
            i2++;
        }
    }
}
