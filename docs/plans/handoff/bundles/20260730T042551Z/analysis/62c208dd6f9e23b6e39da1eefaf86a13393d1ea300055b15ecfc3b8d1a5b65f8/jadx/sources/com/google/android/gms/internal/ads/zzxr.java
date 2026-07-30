package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzxr extends zzxo {
    private final boolean zze;
    private final zzxh zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final boolean zzs;
    private final boolean zzt;
    private final int zzu;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00e5 A[EDGE_INSN: B:119:0x00e5->B:56:0x00e5 BREAK  A[LOOP:1: B:48:0x00c6->B:117:0x00e2], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzxr(int r4, com.google.android.gms.internal.ads.zzbr r5, int r6, com.google.android.gms.internal.ads.zzxh r7, int r8, java.lang.String r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxr.<init>(int, com.google.android.gms.internal.ads.zzbr, int, com.google.android.gms.internal.ads.zzxh, int, java.lang.String, int, boolean):void");
    }

    public static /* synthetic */ int zza(zzxr zzxrVar, zzxr zzxrVar2) {
        zzfyy zzfyyVar;
        zzfyy zza;
        if (zzxrVar.zze && zzxrVar.zzh) {
            zza = zzxt.zzc;
        } else {
            zzfyyVar = zzxt.zzc;
            zza = zzfyyVar.zza();
        }
        zzfxc zzj = zzfxc.zzj();
        boolean z = zzxrVar.zzf.zzz;
        return zzj.zzc(Integer.valueOf(zzxrVar.zzk), Integer.valueOf(zzxrVar2.zzk), zza).zzc(Integer.valueOf(zzxrVar.zzj), Integer.valueOf(zzxrVar2.zzj), zza).zza();
    }

    public static /* synthetic */ int zzd(zzxr zzxrVar, zzxr zzxrVar2) {
        zzfxc zzd = zzfxc.zzj().zzd(zzxrVar.zzh, zzxrVar2.zzh).zzc(Integer.valueOf(zzxrVar.zzm), Integer.valueOf(zzxrVar2.zzm), zzfyy.zzc().zza()).zzb(zzxrVar.zzn, zzxrVar2.zzn).zzb(zzxrVar.zzo, zzxrVar2.zzo).zzd(zzxrVar.zzp, zzxrVar2.zzp).zzb(zzxrVar.zzq, zzxrVar2.zzq).zzd(zzxrVar.zzi, zzxrVar2.zzi).zzd(zzxrVar.zze, zzxrVar2.zze).zzd(zzxrVar.zzg, zzxrVar2.zzg).zzc(Integer.valueOf(zzxrVar.zzl), Integer.valueOf(zzxrVar2.zzl), zzfyy.zzc().zza()).zzd(zzxrVar.zzs, zzxrVar2.zzs).zzd(zzxrVar.zzt, zzxrVar2.zzt);
        if (zzxrVar.zzs && zzxrVar.zzt) {
            zzd = zzd.zzb(zzxrVar.zzu, zzxrVar2.zzu);
        }
        return zzd.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final int zzb() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final /* bridge */ /* synthetic */ boolean zzc(zzxo zzxoVar) {
        zzxr zzxrVar = (zzxr) zzxoVar;
        if (!Objects.equals(this.zzd.zzo, zzxrVar.zzd.zzo)) {
            return false;
        }
        boolean z = this.zzf.zzG;
        return this.zzs == zzxrVar.zzs && this.zzt == zzxrVar.zzt;
    }
}
