package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzxd extends zzxo implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final String zzg;
    private final zzxh zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final boolean zzu;
    private final boolean zzv;
    private final boolean zzw;

    /* JADX WARN: Removed duplicated region for block: B:24:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ed A[LOOP:1: B:26:0x00ea->B:28:0x00ed, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0132 A[EDGE_INSN: B:78:0x0132->B:46:0x0132 BREAK  A[LOOP:3: B:38:0x0113->B:76:0x012f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x010a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00aa A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzxd(int r8, com.google.android.gms.internal.ads.zzbr r9, int r10, com.google.android.gms.internal.ads.zzxh r11, int r12, boolean r13, com.google.android.gms.internal.ads.zzfuo r14, int r15) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxd.<init>(int, com.google.android.gms.internal.ads.zzbr, int, com.google.android.gms.internal.ads.zzxh, int, boolean, com.google.android.gms.internal.ads.zzfuo, int):void");
    }

    @Override // java.lang.Comparable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxd zzxdVar) {
        zzfyy zzfyyVar;
        zzfyy zza;
        if (this.zzf && this.zzi) {
            zza = zzxt.zzc;
        } else {
            zzfyyVar = zzxt.zzc;
            zza = zzfyyVar.zza();
        }
        zzfxc zzc = zzfxc.zzj().zzd(this.zzi, zzxdVar.zzi).zzc(Integer.valueOf(this.zzk), Integer.valueOf(zzxdVar.zzk), zzfyy.zzc().zza()).zzb(this.zzj, zzxdVar.zzj).zzb(this.zzl, zzxdVar.zzl).zzd(this.zzp, zzxdVar.zzp).zzd(this.zzm, zzxdVar.zzm).zzc(Integer.valueOf(this.zzn), Integer.valueOf(zzxdVar.zzn), zzfyy.zzc().zza()).zzb(this.zzo, zzxdVar.zzo).zzd(this.zzf, zzxdVar.zzf).zzc(Integer.valueOf(this.zzt), Integer.valueOf(zzxdVar.zzt), zzfyy.zzc().zza());
        boolean z = this.zzh.zzz;
        zzfxc zzc2 = zzc.zzd(this.zzu, zzxdVar.zzu).zzd(this.zzv, zzxdVar.zzv).zzd(this.zzw, zzxdVar.zzw).zzc(Integer.valueOf(this.zzq), Integer.valueOf(zzxdVar.zzq), zza).zzc(Integer.valueOf(this.zzr), Integer.valueOf(zzxdVar.zzr), zza);
        if (Objects.equals(this.zzg, zzxdVar.zzg)) {
            zzc2 = zzc2.zzc(Integer.valueOf(this.zzs), Integer.valueOf(zzxdVar.zzs), zza);
        }
        return zzc2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final /* bridge */ /* synthetic */ boolean zzc(zzxo zzxoVar) {
        String str;
        zzxd zzxdVar = (zzxd) zzxoVar;
        boolean z = this.zzh.zzK;
        zzab zzabVar = this.zzd;
        int i = zzabVar.zzD;
        if (i == -1) {
            return false;
        }
        zzab zzabVar2 = zzxdVar.zzd;
        if (i != zzabVar2.zzD || (str = zzabVar.zzo) == null || !TextUtils.equals(str, zzabVar2.zzo)) {
            return false;
        }
        boolean z2 = this.zzh.zzJ;
        int i2 = this.zzd.zzE;
        return i2 != -1 && i2 == zzxdVar.zzd.zzE && this.zzu == zzxdVar.zzu && this.zzv == zzxdVar.zzv;
    }
}
