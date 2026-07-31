package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzxf extends zzya implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final String zzg;
    private final zzxt zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final boolean zzn;
    private final int zzo;
    private final int zzp;
    private final boolean zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final int zzu;
    private final boolean zzv;
    private final boolean zzw;
    private final boolean zzx;

    /* JADX WARN: Removed duplicated region for block: B:100:0x00b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0100 A[LOOP:1: B:28:0x00fd->B:30:0x0100, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0143 A[EDGE_INSN: B:80:0x0143->B:48:0x0143 BREAK  A[LOOP:3: B:40:0x0124->B:78:0x0140], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x011d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzxf(int r7, com.google.android.gms.internal.ads.zzbg r8, int r9, com.google.android.gms.internal.ads.zzxt r10, int r11, boolean r12, com.google.android.gms.internal.ads.zzgme r13, int r14) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxf.<init>(int, com.google.android.gms.internal.ads.zzbg, int, com.google.android.gms.internal.ads.zzxt, int, boolean, com.google.android.gms.internal.ads.zzgme, int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzya
    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzya
    public final /* bridge */ /* synthetic */ boolean zzc(zzya zzyaVar) {
        String str;
        zzxt zzxtVar = this.zzh;
        zzxf zzxfVar = (zzxf) zzyaVar;
        boolean z = zzxtVar.zzR;
        zzv zzvVar = this.zzd;
        int i = zzvVar.zzG;
        if (i == -1) {
            return false;
        }
        zzv zzvVar2 = zzxfVar.zzd;
        if (i != zzvVar2.zzG || (str = zzvVar.zzo) == null || !TextUtils.equals(str, zzvVar2.zzo)) {
            return false;
        }
        boolean z2 = zzxtVar.zzQ;
        int i2 = zzvVar.zzH;
        if (i2 == -1 || i2 != zzvVar2.zzH) {
            return false;
        }
        boolean z3 = zzxtVar.zzS;
        return this.zzv == zzxfVar.zzv && this.zzw == zzxfVar.zzw;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxf zzxfVar) {
        zzgqy zzgqyVar;
        zzgqy zza;
        boolean z = this.zzf;
        if (z && this.zzi) {
            zza = zzyi.zzc;
        } else {
            zzgqyVar = zzyi.zzc;
            zza = zzgqyVar.zza();
        }
        zzgot zza2 = zzgot.zzg().zzd(this.zzi, zzxfVar.zzi).zza(Integer.valueOf(this.zzk), Integer.valueOf(zzxfVar.zzk), zzgqy.zzb().zza()).zzb(this.zzj, zzxfVar.zzj).zzb(this.zzl, zzxfVar.zzl).zza(Integer.valueOf(this.zzm), Integer.valueOf(zzxfVar.zzm), zzgqy.zzb().zza()).zzd(this.zzq, zzxfVar.zzq).zzd(this.zzn, zzxfVar.zzn).zza(Integer.valueOf(this.zzo), Integer.valueOf(zzxfVar.zzo), zzgqy.zzb().zza()).zzb(this.zzp, zzxfVar.zzp).zzd(z, zzxfVar.zzf).zza(Integer.valueOf(this.zzu), Integer.valueOf(zzxfVar.zzu), zzgqy.zzb().zza());
        boolean z2 = this.zzh.zzF;
        zzgot zza3 = zza2.zzd(this.zzv, zzxfVar.zzv).zzd(this.zzw, zzxfVar.zzw).zzd(this.zzx, zzxfVar.zzx).zza(Integer.valueOf(this.zzr), Integer.valueOf(zzxfVar.zzr), zza).zza(Integer.valueOf(this.zzs), Integer.valueOf(zzxfVar.zzs), zza);
        if (Objects.equals(this.zzg, zzxfVar.zzg)) {
            zza3 = zza3.zza(Integer.valueOf(this.zzt), Integer.valueOf(zzxfVar.zzt), zza);
        }
        return zza3.zze();
    }
}
