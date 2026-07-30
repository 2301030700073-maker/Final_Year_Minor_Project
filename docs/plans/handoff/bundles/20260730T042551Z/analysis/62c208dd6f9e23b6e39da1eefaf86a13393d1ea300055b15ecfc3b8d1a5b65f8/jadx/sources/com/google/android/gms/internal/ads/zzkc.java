package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
final class zzkc implements Handler.Callback, zzud, zzya, zzkz, zzhz, zzld {
    private static final long zza = zzei.zzv(10000);
    private boolean zzA;
    private boolean zzC;
    private boolean zzD;
    private boolean zzF;
    private boolean zzI;
    private int zzJ;
    private zzka zzK;
    private long zzL;
    private long zzM;
    private int zzN;
    private boolean zzO;
    private zzib zzP;
    private zzil zzR;
    private final zzix zzS;
    private final zzhv zzT;
    private final zzlo[] zzb;
    private final zzlm[] zzc;
    private final boolean[] zzd;
    private final zzyb zze;
    private final zzyc zzf;
    private final zzkg zzg;
    private final zzyj zzh;
    private final zzdh zzi;
    private final zzlc zzj;
    private final Looper zzk;
    private final zzbp zzl;
    private final zzbo zzm;
    private final long zzn;
    private final zzia zzo;
    private final ArrayList zzp;
    private final zzcx zzq;
    private final zzko zzr;
    private final zzla zzs;
    private final long zzt;
    private final zzog zzu;
    private final zzlt zzv;
    private final zzdh zzw;
    private zzlp zzx;
    private zzlb zzy;
    private zzjz zzz;
    private int zzG = 0;
    private boolean zzH = false;
    private boolean zzB = false;
    private long zzQ = -9223372036854775807L;
    private long zzE = -9223372036854775807L;

    public zzkc(zzlj[] zzljVarArr, zzyb zzybVar, zzyc zzycVar, zzkg zzkgVar, zzyj zzyjVar, int i, boolean z, zzlt zzltVar, zzlp zzlpVar, zzhv zzhvVar, long j, boolean z2, boolean z3, Looper looper, zzcx zzcxVar, zzix zzixVar, zzog zzogVar, zzlc zzlcVar, zzil zzilVar) {
        this.zzS = zzixVar;
        this.zze = zzybVar;
        this.zzf = zzycVar;
        this.zzg = zzkgVar;
        this.zzh = zzyjVar;
        this.zzx = zzlpVar;
        this.zzT = zzhvVar;
        this.zzt = j;
        this.zzq = zzcxVar;
        this.zzu = zzogVar;
        this.zzR = zzilVar;
        this.zzv = zzltVar;
        this.zzn = zzkgVar.zzb(zzogVar);
        zzkgVar.zzg(zzogVar);
        zzbq zzbqVar = zzbq.zza;
        zzlb zzg = zzlb.zzg(zzycVar);
        this.zzy = zzg;
        this.zzz = new zzjz(zzg);
        int length = zzljVarArr.length;
        this.zzc = new zzlm[2];
        this.zzd = new boolean[2];
        zzll zze = zzybVar.zze();
        this.zzb = new zzlo[2];
        for (int i2 = 0; i2 < 2; i2++) {
            zzljVarArr[i2].zzv(i2, zzogVar, zzcxVar);
            this.zzc[i2] = zzljVarArr[i2].zzm();
            this.zzc[i2].zzL(zze);
            this.zzb[i2] = new zzlo(zzljVarArr[i2], i2);
        }
        this.zzo = new zzia(this, zzcxVar);
        this.zzp = new ArrayList();
        this.zzl = new zzbp();
        this.zzm = new zzbo();
        zzybVar.zzr(this, zzyjVar);
        this.zzO = true;
        zzdh zzd = zzcxVar.zzd(looper, null);
        this.zzw = zzd;
        this.zzr = new zzko(zzltVar, zzd, new zzjs(this), zzilVar);
        this.zzs = new zzla(this, zzltVar, zzd, zzogVar);
        zzlc zzlcVar2 = new zzlc(null);
        this.zzj = zzlcVar2;
        Looper zza2 = zzlcVar2.zza();
        this.zzk = zza2;
        this.zzi = zzcxVar.zzd(zza2, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzlb zzA(com.google.android.gms.internal.ads.zzug r17, long r18, long r20, long r22, boolean r24, int r25) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkc.zzA(com.google.android.gms.internal.ads.zzug, long, long, long, boolean, int):com.google.android.gms.internal.ads.zzlb");
    }

    private final void zzB(int i) {
        int zza2 = this.zzb[i].zza();
        this.zzb[i].zzd(this.zzo);
        zzO(i, false);
        this.zzJ -= zza2;
    }

    private final void zzC() {
        for (int i = 0; i < 2; i++) {
            zzB(i);
        }
    }

    private final void zzD() {
        zzE(new boolean[2], this.zzr.zzh().zzf());
    }

    private final void zzE(boolean[] zArr, long j) {
        zzkl zzh = this.zzr.zzh();
        zzyc zzi = zzh.zzi();
        for (int i = 0; i < 2; i++) {
            if (!zzi.zzb(i)) {
                this.zzb[i].zzl();
            }
        }
        for (int i2 = 0; i2 < 2; i2++) {
            if (zzi.zzb(i2)) {
                boolean z = zArr[i2];
                zzko zzkoVar = this.zzr;
                zzlo[] zzloVarArr = this.zzb;
                zzkl zzh2 = zzkoVar.zzh();
                zzlo zzloVar = zzloVarArr[i2];
                if (zzloVar.zza() <= 0) {
                    boolean z2 = zzh2 == this.zzr.zze();
                    zzyc zzi2 = zzh2.zzi();
                    zzln zzlnVar = zzi2.zzb[i2];
                    zzab[] zzan = zzan(zzi2.zzc[i2]);
                    boolean z3 = zzal() && this.zzy.zze == 3;
                    boolean z4 = !z && z3;
                    this.zzJ++;
                    zzloVar.zze(zzlnVar, zzan, zzh2.zzc[i2], this.zzL, z4, z2, j, zzh2.zze(), zzh2.zzg.zza, this.zzo);
                    zzloVar.zzg(11, new zzjv(this));
                    if (z3 && z2) {
                        zzloVar.zzr();
                    }
                }
            }
        }
        zzh.zzh = true;
    }

    private final void zzF(IOException iOException, int i) {
        zzko zzkoVar = this.zzr;
        zzib zzc = zzib.zzc(iOException, i);
        zzkl zze = zzkoVar.zze();
        if (zze != null) {
            zzc = zzc.zza(zze.zzg.zza);
        }
        zzdo.zzd("ExoPlayerImplInternal", "Playback error", zzc);
        zzab(false, false);
        this.zzy = this.zzy.zzd(zzc);
    }

    private final void zzG(boolean z) {
        zzkl zzd = this.zzr.zzd();
        zzug zzugVar = zzd == null ? this.zzy.zzb : zzd.zzg.zza;
        boolean z2 = !this.zzy.zzk.equals(zzugVar);
        if (z2) {
            this.zzy = this.zzy.zza(zzugVar);
        }
        zzlb zzlbVar = this.zzy;
        zzlbVar.zzq = zzd == null ? zzlbVar.zzs : zzd.zzc();
        this.zzy.zzr = zzu();
        if ((z2 || z) && zzd != null && zzd.zze) {
            zzae(zzd.zzg.zza, zzd.zzh(), zzd.zzi());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0378: MOVE (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) (LINE:889), block:B:131:0x0377 */
    /* JADX WARN: Removed duplicated region for block: B:21:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x03bb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0392  */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.gms.internal.ads.zzka] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzH(com.google.android.gms.internal.ads.zzbq r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkc.zzH(com.google.android.gms.internal.ads.zzbq, boolean):void");
    }

    private final void zzI(zzbe zzbeVar, boolean z) {
        zzJ(zzbeVar, zzbeVar.zzb, true, z);
    }

    private final void zzJ(zzbe zzbeVar, float f, boolean z, boolean z2) {
        int i;
        zzkc zzkcVar = this;
        if (z) {
            if (z2) {
                zzkcVar.zzz.zza(1);
            }
            zzlb zzlbVar = zzkcVar.zzy;
            zzkcVar = this;
            zzkcVar.zzy = new zzlb(zzlbVar.zza, zzlbVar.zzb, zzlbVar.zzc, zzlbVar.zzd, zzlbVar.zze, zzlbVar.zzf, zzlbVar.zzg, zzlbVar.zzh, zzlbVar.zzi, zzlbVar.zzj, zzlbVar.zzk, zzlbVar.zzl, zzlbVar.zzm, zzlbVar.zzn, zzbeVar, zzlbVar.zzq, zzlbVar.zzr, zzlbVar.zzs, zzlbVar.zzt, false);
        }
        float f2 = zzbeVar.zzb;
        zzkl zze = zzkcVar.zzr.zze();
        while (true) {
            i = 0;
            if (zze == null) {
                break;
            }
            zzxv[] zzxvVarArr = zze.zzi().zzc;
            int length = zzxvVarArr.length;
            while (i < length) {
                zzxv zzxvVar = zzxvVarArr[i];
                i++;
            }
            zze = zze.zzg();
        }
        zzlo[] zzloVarArr = zzkcVar.zzb;
        while (i < 2) {
            zzloVarArr[i].zzo(f, zzbeVar.zzb);
            i++;
        }
    }

    private final void zzK() {
        long zze;
        long j;
        boolean z;
        if (zzap(this.zzr.zzd())) {
            zzkl zzd = this.zzr.zzd();
            long zzv = zzv(zzd.zzd());
            if (zzd == this.zzr.zze()) {
                zze = this.zzL;
                j = zzd.zze();
            } else {
                zze = this.zzL - zzd.zze();
                j = zzd.zzg.zzb;
            }
            zzkf zzkfVar = new zzkf(this.zzu, this.zzy.zza, zzd.zzg.zza, zze - j, zzv, this.zzo.zzc().zzb, this.zzy.zzl, this.zzD, zzam(this.zzy.zza, zzd.zzg.zza) ? this.zzT.zzb() : -9223372036854775807L);
            boolean zzh = this.zzg.zzh(zzkfVar);
            zzkl zze2 = this.zzr.zze();
            if (zzh || !zze2.zze || zzv >= 500000 || this.zzn <= 0) {
                z = zzh;
            } else {
                zze2.zza.zzj(this.zzy.zzs, false);
                z = this.zzg.zzh(zzkfVar);
            }
        } else {
            z = false;
        }
        this.zzF = z;
        if (z) {
            zzkl zzd2 = this.zzr.zzd();
            zzd2.getClass();
            zzkh zzkhVar = new zzkh();
            zzkhVar.zze(this.zzL - zzd2.zze());
            zzkhVar.zzf(this.zzo.zzc().zzb);
            zzkhVar.zzd(this.zzE);
            zzd2.zzk(new zzkj(zzkhVar, null));
        }
        zzad();
    }

    private final void zzL() {
        this.zzr.zzn();
        zzkl zzg = this.zzr.zzg();
        if (zzg != null) {
            if ((!zzg.zzd || zzg.zze) && !zzg.zza.zzp()) {
                if (this.zzg.zzi(this.zzy.zza, zzg.zzg.zza, zzg.zze ? zzg.zza.zzb() : 0L)) {
                    if (!zzg.zzd) {
                        zzg.zzm(this, zzg.zzg.zzb);
                        return;
                    }
                    zzkh zzkhVar = new zzkh();
                    zzkhVar.zze(this.zzL - zzg.zze());
                    zzkhVar.zzf(this.zzo.zzc().zzb);
                    zzkhVar.zzd(this.zzE);
                    zzg.zzk(new zzkj(zzkhVar, null));
                }
            }
        }
    }

    private final void zzM() {
        boolean z;
        this.zzz.zzb(this.zzy);
        z = this.zzz.zze;
        if (z) {
            zzix zzixVar = this.zzS;
            zzixVar.zza.zzN(this.zzz);
            this.zzz = new zzjz(this.zzy);
        }
    }

    private final void zzN(int i) {
        zzlo zzloVar = this.zzb[i];
        try {
            zzloVar.zzh();
        } catch (IOException | RuntimeException e) {
            zzloVar.zzb();
            throw e;
        }
    }

    private final void zzO(final int i, final boolean z) {
        boolean[] zArr = this.zzd;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.zzw.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjr
                @Override // java.lang.Runnable
                public final void run() {
                    zzkc.this.zzf(i, z);
                }
            });
        }
    }

    private final void zzP() {
        int i;
        float f = this.zzo.zzc().zzb;
        zzko zzkoVar = this.zzr;
        zzkl zze = zzkoVar.zze();
        zzkl zzh = zzkoVar.zzh();
        zzyc zzycVar = null;
        boolean z = true;
        while (zze != null && zze.zze) {
            zzlb zzlbVar = this.zzy;
            zzyc zzj = zze.zzj(f, zzlbVar.zza, zzlbVar.zzl);
            zzyc zzycVar2 = zze == this.zzr.zze() ? zzj : zzycVar;
            zzyc zzi = zze.zzi();
            boolean z2 = false;
            if (zzi != null) {
                if (zzi.zzc.length == zzj.zzc.length) {
                    for (int i2 = 0; i2 < zzj.zzc.length; i2++) {
                        if (zzj.zza(zzi, i2)) {
                        }
                    }
                    if (zze != zzh) {
                        z2 = true;
                    }
                    z &= z2;
                    zze = zze.zzg();
                    zzycVar = zzycVar2;
                }
            }
            if (z) {
                zzko zzkoVar2 = this.zzr;
                zzkl zze2 = zzkoVar2.zze();
                boolean zzu = zzkoVar2.zzu(zze2);
                boolean[] zArr = new boolean[2];
                zzycVar2.getClass();
                long zzb = zze2.zzb(zzycVar2, this.zzy.zzs, zzu, zArr);
                zzlb zzlbVar2 = this.zzy;
                boolean z3 = (zzlbVar2.zze == 4 || zzb == zzlbVar2.zzs) ? false : true;
                zzlb zzlbVar3 = this.zzy;
                i = 2;
                this.zzy = zzA(zzlbVar3.zzb, zzb, zzlbVar3.zzc, zzlbVar3.zzd, z3, 5);
                if (z3) {
                    zzT(zzb);
                }
                boolean[] zArr2 = new boolean[2];
                int i3 = 0;
                while (true) {
                    zzlo[] zzloVarArr = this.zzb;
                    if (i3 >= 2) {
                        break;
                    }
                    int zza2 = zzloVarArr[i3].zza();
                    zArr2[i3] = 1 == zza2;
                    if (zza2 != 0) {
                        if (!this.zzb[i3].zzy(zze2)) {
                            zzB(i3);
                        } else if (zArr[i3]) {
                            this.zzb[i3].zzm(this.zzL);
                        }
                    }
                    i3++;
                }
                zzE(zArr2, this.zzL);
            } else {
                i = 2;
                this.zzr.zzu(zze);
                if (zze.zze) {
                    zze.zza(zzj, Math.max(zze.zzg.zzb, this.zzL - zze.zze()), false);
                }
            }
            zzG(true);
            if (this.zzy.zze != 4) {
                zzK();
                zzaf();
                this.zzi.zzi(i);
                return;
            }
            return;
        }
    }

    private final void zzQ() {
        zzP();
        zzW(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzR(boolean r35, boolean r36, boolean r37, boolean r38) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkc.zzR(boolean, boolean, boolean, boolean):void");
    }

    private final void zzS() {
        zzkl zze = this.zzr.zze();
        boolean z = false;
        if (zze != null && zze.zzg.zzh && this.zzB) {
            z = true;
        }
        this.zzC = z;
    }

    private final void zzT(long j) {
        zzkl zze = this.zzr.zze();
        long zze2 = j + (zze == null ? 1000000000000L : zze.zze());
        this.zzL = zze2;
        this.zzo.zzf(zze2);
        zzlo[] zzloVarArr = this.zzb;
        for (int i = 0; i < 2; i++) {
            zzloVarArr[i].zzm(this.zzL);
        }
        for (zzkl zze3 = this.zzr.zze(); zze3 != null; zze3 = zze3.zzg()) {
            for (zzxv zzxvVar : zze3.zzi().zzc) {
            }
        }
    }

    private final void zzU(zzbq zzbqVar, zzbq zzbqVar2) {
        if (zzbqVar.zzo() && zzbqVar2.zzo()) {
            return;
        }
        int size = this.zzp.size() - 1;
        if (size < 0) {
            Collections.sort(this.zzp);
        } else {
            Object obj = ((zzjy) this.zzp.get(size)).zzb;
            int i = zzei.zza;
            throw null;
        }
    }

    private final void zzV(long j) {
        this.zzi.zzj(2, j + ((this.zzy.zze != 3 || zzal()) ? zza : 1000L));
    }

    private final void zzW(boolean z) {
        zzug zzugVar = this.zzr.zze().zzg.zza;
        long zzx = zzx(zzugVar, this.zzy.zzs, true, false);
        if (zzx != this.zzy.zzs) {
            zzlb zzlbVar = this.zzy;
            this.zzy = zzA(zzugVar, zzx, zzlbVar.zzc, zzlbVar.zzd, z, 5);
        }
    }

    private final void zzX(zzbe zzbeVar) {
        this.zzi.zzf(16);
        this.zzo.zzg(zzbeVar);
    }

    private final void zzY(boolean z, int i, boolean z2, int i2) {
        this.zzz.zza(z2 ? 1 : 0);
        this.zzy = this.zzy.zzc(z, i2, i);
        zzah(false, false);
        for (zzkl zze = this.zzr.zze(); zze != null; zze = zze.zzg()) {
            for (zzxv zzxvVar : zze.zzi().zzc) {
            }
        }
        if (!zzal()) {
            zzac();
            zzaf();
            return;
        }
        int i3 = this.zzy.zze;
        if (i3 == 3) {
            this.zzo.zzh();
            zzaa();
            this.zzi.zzi(2);
        } else if (i3 == 2) {
            this.zzi.zzi(2);
        }
    }

    private final void zzZ(int i) {
        zzlb zzlbVar = this.zzy;
        if (zzlbVar.zze != i) {
            if (i != 2) {
                this.zzQ = -9223372036854775807L;
            }
            this.zzy = zzlbVar.zze(i);
        }
    }

    private final void zzaa() {
        zzkl zze = this.zzr.zze();
        if (zze == null) {
            return;
        }
        zzyc zzi = zze.zzi();
        for (int i = 0; i < 2; i++) {
            if (zzi.zzb(i)) {
                this.zzb[i].zzr();
            }
        }
    }

    private final void zzab(boolean z, boolean z2) {
        zzR(z || !this.zzI, false, true, false);
        this.zzz.zza(z2 ? 1 : 0);
        this.zzg.zze(this.zzu);
        zzZ(1);
    }

    private final void zzac() {
        this.zzo.zzi();
        int i = 0;
        while (true) {
            zzlo[] zzloVarArr = this.zzb;
            if (i >= 2) {
                return;
            }
            zzloVarArr[i].zzs();
            i++;
        }
    }

    private final void zzad() {
        zzkl zzd = this.zzr.zzd();
        boolean z = this.zzF || (zzd != null && zzd.zza.zzp());
        zzlb zzlbVar = this.zzy;
        if (z != zzlbVar.zzg) {
            this.zzy = new zzlb(zzlbVar.zza, zzlbVar.zzb, zzlbVar.zzc, zzlbVar.zzd, zzlbVar.zze, zzlbVar.zzf, z, zzlbVar.zzh, zzlbVar.zzi, zzlbVar.zzj, zzlbVar.zzk, zzlbVar.zzl, zzlbVar.zzm, zzlbVar.zzn, zzlbVar.zzo, zzlbVar.zzq, zzlbVar.zzr, zzlbVar.zzs, zzlbVar.zzt, false);
        }
    }

    private final void zzae(zzug zzugVar, zzwj zzwjVar, zzyc zzycVar) {
        long zze;
        long j;
        zzkl zzd = this.zzr.zzd();
        zzd.getClass();
        if (zzd == this.zzr.zze()) {
            zze = this.zzL;
            j = zzd.zze();
        } else {
            zze = this.zzL - zzd.zze();
            j = zzd.zzg.zzb;
        }
        this.zzg.zzf(new zzkf(this.zzu, this.zzy.zza, zzugVar, zze - j, zzv(zzd.zzc()), this.zzo.zzc().zzb, this.zzy.zzl, this.zzD, zzam(this.zzy.zza, zzd.zzg.zza) ? this.zzT.zzb() : -9223372036854775807L), zzwjVar, zzycVar.zzc);
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ae, code lost:
    
        r8 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaf() {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkc.zzaf():void");
    }

    private final void zzag(zzbq zzbqVar, zzug zzugVar, zzbq zzbqVar2, zzug zzugVar2, long j, boolean z) {
        if (!zzam(zzbqVar, zzugVar)) {
            zzbe zzbeVar = zzugVar.zzb() ? zzbe.zza : this.zzy.zzo;
            if (this.zzo.zzc().equals(zzbeVar)) {
                return;
            }
            zzX(zzbeVar);
            zzJ(this.zzy.zzo, zzbeVar.zzb, false, false);
            return;
        }
        zzbqVar.zze(zzbqVar.zzn(zzugVar.zza, this.zzm).zzc, this.zzl, 0L);
        zzhv zzhvVar = this.zzT;
        zzal zzalVar = this.zzl.zzj;
        int i = zzei.zza;
        zzhvVar.zzd(zzalVar);
        if (j != -9223372036854775807L) {
            this.zzT.zze(zzt(zzbqVar, zzugVar.zza, j));
            return;
        }
        if (!Objects.equals(!zzbqVar2.zzo() ? zzbqVar2.zze(zzbqVar2.zzn(zzugVar2.zza, this.zzm).zzc, this.zzl, 0L).zzb : null, this.zzl.zzb) || z) {
            this.zzT.zze(-9223372036854775807L);
        }
    }

    private final void zzah(boolean z, boolean z2) {
        this.zzD = z;
        long j = -9223372036854775807L;
        if (z && !z2) {
            j = SystemClock.elapsedRealtime();
        }
        this.zzE = j;
    }

    private final synchronized void zzai(zzfvf zzfvfVar, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        boolean z = false;
        while (!((Boolean) zzfvfVar.zza()).booleanValue() && j > 0) {
            try {
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = elapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private final boolean zzaj() {
        zzkl zze = this.zzr.zze();
        long j = zze.zzg.zze;
        if (zze.zze) {
            return j == -9223372036854775807L || this.zzy.zzs < j || !zzal();
        }
        return false;
    }

    private static boolean zzak(zzlb zzlbVar, zzbo zzboVar) {
        zzug zzugVar = zzlbVar.zzb;
        zzbq zzbqVar = zzlbVar.zza;
        return zzbqVar.zzo() || zzbqVar.zzn(zzugVar.zza, zzboVar).zzf;
    }

    private final boolean zzal() {
        zzlb zzlbVar = this.zzy;
        return zzlbVar.zzl && zzlbVar.zzn == 0;
    }

    private final boolean zzam(zzbq zzbqVar, zzug zzugVar) {
        if (!zzugVar.zzb() && !zzbqVar.zzo()) {
            zzbqVar.zze(zzbqVar.zzn(zzugVar.zza, this.zzm).zzc, this.zzl, 0L);
            if (this.zzl.zzb()) {
                zzbp zzbpVar = this.zzl;
                if (zzbpVar.zzi && zzbpVar.zzf != -9223372036854775807L) {
                    return true;
                }
            }
        }
        return false;
    }

    private static zzab[] zzan(zzxv zzxvVar) {
        int zzd = zzxvVar != null ? zzxvVar.zzd() : 0;
        zzab[] zzabVarArr = new zzab[zzd];
        for (int i = 0; i < zzd; i++) {
            zzabVarArr[i] = zzxvVar.zze(i);
        }
        return zzabVarArr;
    }

    private static final void zzao(zzlf zzlfVar) {
        zzlfVar.zzi();
        try {
            zzlfVar.zzc().zzu(zzlfVar.zza(), zzlfVar.zzg());
        } finally {
            zzlfVar.zzh(true);
        }
    }

    private static final boolean zzap(zzkl zzklVar) {
        if (zzklVar != null) {
            try {
                if (zzklVar.zze) {
                    zzvy[] zzvyVarArr = zzklVar.zzc;
                    for (int i = 0; i < 2; i++) {
                        zzvy zzvyVar = zzvyVarArr[i];
                        if (zzvyVar != null) {
                            zzvyVar.zzd();
                        }
                    }
                } else {
                    zzklVar.zza.zzk();
                }
                if (zzklVar.zzd() != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public static int zzb(zzbp zzbpVar, zzbo zzboVar, int i, boolean z, Object obj, zzbq zzbqVar, zzbq zzbqVar2) {
        Object obj2 = zzbqVar.zze(zzbqVar.zzn(obj, zzboVar).zzc, zzbpVar, 0L).zzb;
        for (int i2 = 0; i2 < zzbqVar2.zzc(); i2++) {
            if (zzbqVar2.zze(i2, zzbpVar, 0L).zzb.equals(obj2)) {
                return i2;
            }
        }
        int zza2 = zzbqVar.zza(obj);
        int zzb = zzbqVar.zzb();
        int i3 = zza2;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            if (i5 >= zzb || i4 != -1) {
                break;
            }
            i3 = zzbqVar.zzi(i3, zzboVar, zzbpVar, i, z);
            if (i3 == -1) {
                i4 = -1;
                break;
            }
            i4 = zzbqVar2.zza(zzbqVar.zzf(i3));
            i5++;
        }
        if (i4 == -1) {
            return -1;
        }
        return zzbqVar2.zzd(i4, zzboVar, false).zzc;
    }

    public static /* synthetic */ zzkl zzd(zzkc zzkcVar, zzkm zzkmVar, long j) {
        zzyk zzk = zzkcVar.zzg.zzk();
        long j2 = zzkcVar.zzR.zzb;
        zzyc zzycVar = zzkcVar.zzf;
        zzla zzlaVar = zzkcVar.zzs;
        return new zzkl(zzkcVar.zzc, j, zzkcVar.zze, zzk, zzlaVar, zzkmVar, zzycVar, -9223372036854775807L);
    }

    public static final /* synthetic */ void zzs(zzlf zzlfVar) {
        try {
            zzao(zzlfVar);
        } catch (zzib e) {
            zzdo.zzd("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private final long zzt(zzbq zzbqVar, Object obj, long j) {
        zzbqVar.zze(zzbqVar.zzn(obj, this.zzm).zzc, this.zzl, 0L);
        zzbp zzbpVar = this.zzl;
        if (zzbpVar.zzf != -9223372036854775807L && zzbpVar.zzb()) {
            zzbp zzbpVar2 = this.zzl;
            if (zzbpVar2.zzi) {
                long j2 = zzbpVar2.zzg;
                return zzei.zzs((j2 == -9223372036854775807L ? System.currentTimeMillis() : j2 + SystemClock.elapsedRealtime()) - this.zzl.zzf) - j;
            }
        }
        return -9223372036854775807L;
    }

    private final long zzu() {
        return zzv(this.zzy.zzq);
    }

    private final long zzv(long j) {
        zzkl zzd = this.zzr.zzd();
        if (zzd == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzL - zzd.zze()));
    }

    private final long zzw(zzug zzugVar, long j, boolean z) {
        zzko zzkoVar = this.zzr;
        return zzx(zzugVar, j, zzkoVar.zze() != zzkoVar.zzh(), z);
    }

    private final long zzx(zzug zzugVar, long j, boolean z, boolean z2) {
        zzac();
        zzah(false, true);
        if (z2 || this.zzy.zze == 3) {
            zzZ(2);
        }
        zzkl zze = this.zzr.zze();
        zzkl zzklVar = zze;
        while (zzklVar != null && !zzugVar.equals(zzklVar.zzg.zza)) {
            zzklVar = zzklVar.zzg();
        }
        if (z || zze != zzklVar || (zzklVar != null && zzklVar.zze() + j < 0)) {
            zzC();
            if (zzklVar != null) {
                while (this.zzr.zze() != zzklVar) {
                    this.zzr.zza();
                }
                this.zzr.zzu(zzklVar);
                zzklVar.zzq(1000000000000L);
                zzD();
            }
        }
        if (zzklVar != null) {
            this.zzr.zzu(zzklVar);
            if (!zzklVar.zze) {
                zzklVar.zzg = zzklVar.zzg.zzb(j);
            } else if (zzklVar.zzf) {
                j = zzklVar.zza.zze(j);
                zzklVar.zza.zzj(j - this.zzn, false);
            }
            zzT(j);
            zzK();
        } else {
            this.zzr.zzl();
            zzT(j);
        }
        zzG(false);
        this.zzi.zzi(2);
        return j;
    }

    private final Pair zzy(zzbq zzbqVar) {
        long j = 0;
        if (zzbqVar.zzo()) {
            return Pair.create(zzlb.zzh(), 0L);
        }
        Pair zzl = zzbqVar.zzl(this.zzl, this.zzm, zzbqVar.zzg(this.zzH), -9223372036854775807L);
        zzug zzk = this.zzr.zzk(zzbqVar, zzl.first, 0L);
        long longValue = ((Long) zzl.second).longValue();
        if (zzk.zzb()) {
            zzbqVar.zzn(zzk.zza, this.zzm);
            if (zzk.zzc == this.zzm.zze(zzk.zzb)) {
                this.zzm.zzh();
            }
        } else {
            j = longValue;
        }
        return Pair.create(zzk, Long.valueOf(j));
    }

    private static Pair zzz(zzbq zzbqVar, zzka zzkaVar, boolean z, int i, boolean z2, zzbp zzbpVar, zzbo zzboVar) {
        Pair zzl;
        zzbq zzbqVar2 = zzkaVar.zza;
        if (zzbqVar.zzo()) {
            return null;
        }
        zzbq zzbqVar3 = true == zzbqVar2.zzo() ? zzbqVar : zzbqVar2;
        try {
            zzl = zzbqVar3.zzl(zzbpVar, zzboVar, zzkaVar.zzb, zzkaVar.zzc);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (zzbqVar.equals(zzbqVar3)) {
            return zzl;
        }
        if (zzbqVar.zza(zzl.first) != -1) {
            return (zzbqVar3.zzn(zzl.first, zzboVar).zzf && zzbqVar3.zze(zzboVar.zzc, zzbpVar, 0L).zzn == zzbqVar3.zza(zzl.first)) ? zzbqVar.zzl(zzbpVar, zzboVar, zzbqVar.zzn(zzl.first, zzboVar).zzc, zzkaVar.zzc) : zzl;
        }
        int zzb = zzb(zzbpVar, zzboVar, i, z2, zzl.first, zzbqVar3, zzbqVar);
        if (zzb != -1) {
            return zzbqVar.zzl(zzbpVar, zzboVar, zzb, -9223372036854775807L);
        }
        return null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(android.os.Message r39) {
        /*
            Method dump skipped, instructions count: 2942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkc.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void zza(zzbe zzbeVar) {
        this.zzi.zzc(16, zzbeVar).zza();
    }

    public final Looper zzc() {
        return this.zzk;
    }

    public final /* synthetic */ Boolean zze() {
        return Boolean.valueOf(this.zzA);
    }

    public final /* synthetic */ void zzf(int i, boolean z) {
        this.zzv.zzI(i, this.zzb[i].zzb(), z);
    }

    @Override // com.google.android.gms.internal.ads.zzvz
    public final /* bridge */ /* synthetic */ void zzg(zzwa zzwaVar) {
        this.zzi.zzc(9, (zzue) zzwaVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final void zzh() {
        this.zzi.zzf(2);
        this.zzi.zzi(22);
    }

    @Override // com.google.android.gms.internal.ads.zzud
    public final void zzi(zzue zzueVar) {
        this.zzi.zzc(8, zzueVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzya
    public final void zzj() {
        this.zzi.zzi(10);
    }

    public final void zzk() {
        this.zzi.zzb(29).zza();
    }

    public final void zzl(zzbq zzbqVar, int i, long j) {
        this.zzi.zzc(3, new zzka(zzbqVar, i, j)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final synchronized void zzm(zzlf zzlfVar) {
        if (!this.zzA && this.zzk.getThread().isAlive()) {
            this.zzi.zzc(14, zzlfVar).zza();
            return;
        }
        zzdo.zzf("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        zzlfVar.zzh(false);
    }

    public final void zzn(boolean z, int i, int i2) {
        this.zzi.zzd(1, z ? 1 : 0, i | (i2 << 4)).zza();
    }

    public final void zzo() {
        this.zzi.zzb(6).zza();
    }

    public final synchronized boolean zzp() {
        if (!this.zzA && this.zzk.getThread().isAlive()) {
            this.zzi.zzi(7);
            zzai(new zzfvf() { // from class: com.google.android.gms.internal.ads.zzjq
                @Override // com.google.android.gms.internal.ads.zzfvf
                public final Object zza() {
                    return zzkc.this.zze();
                }
            }, this.zzt);
            return this.zzA;
        }
        return true;
    }

    public final synchronized boolean zzq(Object obj, long j) {
        if (!this.zzA && this.zzk.getThread().isAlive()) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.zzi.zzc(30, new Pair(obj, atomicBoolean)).zza();
            if (j != -9223372036854775807L) {
                zzai(new zzfvf() { // from class: com.google.android.gms.internal.ads.zzjt
                    @Override // com.google.android.gms.internal.ads.zzfvf
                    public final Object zza() {
                        return Boolean.valueOf(atomicBoolean.get());
                    }
                }, j);
                return atomicBoolean.get();
            }
        }
        return true;
    }

    public final void zzr(List list, int i, long j, zzwb zzwbVar) {
        this.zzi.zzc(17, new zzjw(list, zzwbVar, i, j, null)).zza();
    }
}
