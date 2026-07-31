package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzkh implements Handler.Callback, zzur, zzyq, zzld, zzhy, zzlh, zzhp, zzaax {
    private static final long zza = zzep.zzp(10000);
    private zzlv zzA;
    private boolean zzC;
    private boolean zzD;
    private zzkg zzE;
    private int zzF;
    private zzlf zzG;
    private zzke zzH;
    private boolean zzI;
    private boolean zzK;
    private boolean zzL;
    private boolean zzN;
    private boolean zzQ;
    private int zzR;
    private zzkg zzS;
    private long zzT;
    private long zzU;
    private int zzV;
    private boolean zzW;
    private zzib zzX;
    private zzil zzZ;
    private boolean zzab;
    private final zzhu zzad;
    private final zzlr[] zzb;
    private final zzlp[] zzc;
    private final boolean[] zzd;
    private final zzyr zze;
    private final zzys zzf;
    private final zzkl zzg;
    private final zzza zzh;
    private final zzdm zzi;
    private final zzlg zzj;
    private final Looper zzk;
    private final zzbe zzl;
    private final zzbd zzm;
    private final long zzn;
    private final zzhz zzo;
    private final ArrayList zzp;
    private final zzdc zzq;
    private final zzkf zzr;
    private final zzks zzs;
    private final zzle zzt;
    private final long zzu;
    private final zzpc zzv;
    private final zzmi zzw;
    private final zzdm zzx;
    private final boolean zzy;
    private final zzhq zzz;
    private long zzaa = C.TIME_UNSET;
    private int zzO = 0;
    private boolean zzP = false;
    private boolean zzJ = false;
    private float zzac = 1.0f;
    private zzlu zzB = zzlu.zza;
    private long zzY = C.TIME_UNSET;
    private long zzM = C.TIME_UNSET;

    public zzkh(Context context, zzln[] zzlnVarArr, zzln[] zzlnVarArr2, zzyr zzyrVar, zzys zzysVar, zzkl zzklVar, zzza zzzaVar, int i, boolean z, zzmi zzmiVar, zzlv zzlvVar, zzhu zzhuVar, long j, boolean z2, boolean z3, Looper looper, zzdc zzdcVar, zzkf zzkfVar, zzpc zzpcVar, zzlg zzlgVar, zzil zzilVar, final zzaax zzaaxVar) {
        this.zzr = zzkfVar;
        this.zze = zzyrVar;
        this.zzf = zzysVar;
        this.zzg = zzklVar;
        this.zzh = zzzaVar;
        int i2 = 0;
        this.zzA = zzlvVar;
        this.zzad = zzhuVar;
        this.zzu = j;
        this.zzq = zzdcVar;
        this.zzv = zzpcVar;
        this.zzZ = zzilVar;
        this.zzw = zzmiVar;
        this.zzn = zzklVar.zzf(zzpcVar);
        zzklVar.zzg(zzpcVar);
        zzbf zzbfVar = zzbf.zza;
        this.zzG = zzlf.zza(zzysVar);
        this.zzH = new zzke(this.zzG);
        int length = zzlnVarArr.length;
        this.zzc = new zzlp[2];
        this.zzd = new boolean[2];
        zzlo zzg = zzyrVar.zzg();
        this.zzb = new zzlr[2];
        boolean z4 = false;
        while (true) {
            int length2 = zzlnVarArr.length;
            if (i2 >= 2) {
                this.zzy = z4;
                this.zzo = new zzhz(this, zzdcVar);
                this.zzp = new ArrayList();
                this.zzl = new zzbe();
                this.zzm = new zzbd();
                zzyrVar.zzr(this, zzzaVar);
                this.zzW = true;
                zzdm zzd = zzdcVar.zzd(looper, null);
                this.zzx = zzd;
                this.zzs = new zzks(zzmiVar, zzd, new zzka(this), zzilVar);
                this.zzt = new zzle(this, zzmiVar, zzd, zzpcVar);
                zzlg zzlgVar2 = new zzlg(null);
                this.zzj = zzlgVar2;
                Looper zza2 = zzlgVar2.zza();
                this.zzk = zza2;
                zzdm zzd2 = zzdcVar.zzd(zza2, this);
                this.zzi = zzd2;
                this.zzz = new zzhq(context, zza2, this);
                zzd2.zzd(35, new zzaax() { // from class: com.google.android.gms.internal.ads.zzjw
                    @Override // com.google.android.gms.internal.ads.zzaax
                    public final /* synthetic */ void zzcS(long j2, long j3, zzv zzvVar, MediaFormat mediaFormat) {
                        zzkh.this.zzcS(j2, j3, zzvVar, mediaFormat);
                    }
                }).zza();
                return;
            }
            zzlnVarArr[i2].zzc(i2, zzpcVar, zzdcVar);
            this.zzc[i2] = zzlnVarArr[i2].zzb();
            this.zzc[i2].zzv(zzg);
            zzln zzlnVar = zzlnVarArr2[i2];
            if (zzlnVar != null) {
                zzlnVar.zzc(i2, zzpcVar, zzdcVar);
                z4 = true;
            }
            this.zzb[i2] = new zzlr(zzlnVarArr[i2], zzlnVarArr2[i2], i2);
            i2++;
        }
    }

    private final void zzA(IOException iOException, int i) {
        zzks zzksVar = this.zzs;
        zzib zza2 = zzib.zza(iOException, i);
        zzkp zzm = zzksVar.zzm();
        if (zzm != null) {
            zza2 = zza2.zzd(zzm.zzg.zza);
        }
        zzdt.zzf("ExoPlayerImplInternal", "Playback error", zza2);
        zzW(false, false);
        this.zzG = this.zzG.zzf(zza2);
    }

    private final void zzB(int i) {
        zzlf zzlfVar = this.zzG;
        if (zzlfVar.zze != i) {
            if (i != 2) {
                this.zzY = C.TIME_UNSET;
            }
            if (i != 3) {
                boolean z = zzlfVar.zzp;
            }
            this.zzG = this.zzG.zze(i);
        }
    }

    private final void zzC() {
        this.zzH.zzb(this.zzG);
        if (this.zzH.zzd()) {
            this.zzr.zza(this.zzH);
            this.zzH = new zzke(this.zzG);
        }
    }

    private final void zzD(float f) throws zzib {
        this.zzac = f;
        float zza2 = f * this.zzz.zza();
        int i = 0;
        while (true) {
            zzlr[] zzlrVarArr = this.zzb;
            if (i >= 2) {
                return;
            }
            zzlrVarArr[i].zzL(zza2);
            i++;
        }
    }

    private final void zzE(boolean z, int i, boolean z2, int i2) throws zzib {
        this.zzH.zza(z2 ? 1 : 0);
        zzG(z, i, i2);
    }

    private final void zzF() throws zzib {
        zzlf zzlfVar = this.zzG;
        zzG(zzlfVar.zzl, zzlfVar.zzn, zzlfVar.zzm);
    }

    private final void zzG(boolean z, int i, int i2) throws zzib {
        zzH(z, this.zzz.zzc(z, this.zzG.zze), i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzH(boolean r5, int r6, int r7, int r8) throws com.google.android.gms.internal.ads.zzib {
        /*
            r4 = this;
            r0 = -1
            r1 = 1
            r2 = 0
            if (r5 == 0) goto La
            if (r6 == r0) goto L9
            r5 = r1
            goto Lb
        L9:
            r6 = r0
        La:
            r5 = r2
        Lb:
            r3 = 2
            if (r6 != r0) goto L10
            r8 = r3
            goto L13
        L10:
            if (r8 != r3) goto L13
            r8 = r1
        L13:
            boolean r0 = r4.zzC
            if (r6 != 0) goto L19
            r7 = r1
            goto L20
        L19:
            if (r7 != r1) goto L20
            if (r0 == 0) goto L1f
            r7 = 4
            goto L20
        L1f:
            r7 = r2
        L20:
            com.google.android.gms.internal.ads.zzlf r6 = r4.zzG
            boolean r0 = r6.zzl
            if (r0 != r5) goto L2e
            int r0 = r6.zzn
            if (r0 != r7) goto L2e
            int r0 = r6.zzm
            if (r0 == r8) goto L85
        L2e:
            com.google.android.gms.internal.ads.zzlf r5 = r6.zzi(r5, r8, r7)
            r4.zzG = r5
            r4.zzaC(r2, r2)
            com.google.android.gms.internal.ads.zzks r5 = r4.zzs
            com.google.android.gms.internal.ads.zzkp r6 = r5.zzm()
        L3d:
            if (r6 == 0) goto L53
            com.google.android.gms.internal.ads.zzys r7 = r6.zzr()
            com.google.android.gms.internal.ads.zzyk[] r7 = r7.zzc
            int r8 = r7.length
            r0 = r2
        L47:
            if (r0 >= r8) goto L4e
            r1 = r7[r0]
            int r0 = r0 + 1
            goto L47
        L4e:
            com.google.android.gms.internal.ads.zzkp r6 = r6.zzp()
            goto L3d
        L53:
            boolean r6 = r4.zzax()
            if (r6 != 0) goto L69
            r4.zzK()
            r4.zzL()
            com.google.android.gms.internal.ads.zzlf r6 = r4.zzG
            boolean r6 = r6.zzp
            long r6 = r4.zzT
            r5.zzf(r6)
            return
        L69:
            com.google.android.gms.internal.ads.zzlf r5 = r4.zzG
            int r5 = r5.zze
            r6 = 3
            if (r5 != r6) goto L7e
            com.google.android.gms.internal.ads.zzhz r5 = r4.zzo
            r5.zza()
            r4.zzJ()
            com.google.android.gms.internal.ads.zzdm r5 = r4.zzi
            r5.zzh(r3)
            return
        L7e:
            if (r5 != r3) goto L85
            com.google.android.gms.internal.ads.zzdm r5 = r4.zzi
            r5.zzh(r3)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkh.zzH(boolean, int, int, int):void");
    }

    private final void zzI(boolean z) throws zzib {
        zzuu zzuuVar = this.zzs.zzm().zzg.zza;
        long zzT = zzT(zzuuVar, this.zzG.zzs, true, false);
        if (zzT != this.zzG.zzs) {
            zzlf zzlfVar = this.zzG;
            this.zzG = zzao(zzuuVar, zzT, zzlfVar.zzc, zzlfVar.zzd, z, 5);
        }
    }

    private final void zzJ() throws zzib {
        zzkp zzm = this.zzs.zzm();
        if (zzm == null) {
            return;
        }
        zzys zzr = zzm.zzr();
        int i = 0;
        while (true) {
            zzlr[] zzlrVarArr = this.zzb;
            if (i >= 2) {
                return;
            }
            if (zzr.zza(i)) {
                zzlrVarArr[i].zzv();
            }
            i++;
        }
    }

    private final void zzK() throws zzib {
        this.zzo.zzb();
        int i = 0;
        while (true) {
            zzlr[] zzlrVarArr = this.zzb;
            if (i >= 2) {
                return;
            }
            zzlrVarArr[i].zzw();
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00a9, code lost:
    
        r13 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzL() throws com.google.android.gms.internal.ads.zzib {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkh.zzL():void");
    }

    private final void zzM(zzav zzavVar) {
        this.zzi.zzk(16);
        this.zzo.zzi(zzavVar);
    }

    private final void zzN(final int i, final boolean z) {
        boolean[] zArr = this.zzd;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.zzx.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjx
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzkh.this.zzu(i, z);
                }
            });
        }
    }

    private final long zzO(zzbf zzbfVar, Object obj, long j) {
        int i = zzbfVar.zzo(obj, this.zzm).zzc;
        zzbe zzbeVar = this.zzl;
        zzbfVar.zzb(i, zzbeVar, 0L);
        if (zzbeVar.zzf == C.TIME_UNSET || !zzbeVar.zzb() || !zzbeVar.zzi) {
            return C.TIME_UNSET;
        }
        long j2 = zzbeVar.zzg;
        String str = zzep.zza;
        return zzep.zzq((j2 == C.TIME_UNSET ? System.currentTimeMillis() : j2 + SystemClock.elapsedRealtime()) - zzbeVar.zzf) - j;
    }

    private final boolean zzP(zzbf zzbfVar, zzuu zzuuVar) {
        if (!zzuuVar.zzb() && !zzbfVar.zzg()) {
            int i = zzbfVar.zzo(zzuuVar.zza, this.zzm).zzc;
            zzbe zzbeVar = this.zzl;
            zzbfVar.zzb(i, zzbeVar, 0L);
            if (zzbeVar.zzb() && zzbeVar.zzi && zzbeVar.zzf != C.TIME_UNSET) {
                return true;
            }
        }
        return false;
    }

    private final void zzQ(long j) {
        if (zzw()) {
            r2 = this.zzG.zze != 3 ? zza : 1000L;
            zzlr[] zzlrVarArr = this.zzb;
            for (int i = 0; i < 2; i++) {
                r2 = Math.min(r2, zzep.zzp(zzlrVarArr[i].zzk(this.zzT, this.zzU)));
            }
            if (this.zzG.zzj()) {
                zzks zzksVar = this.zzs;
                if ((zzksVar.zzm() != null ? zzksVar.zzm().zzp() : null) != null) {
                    if (this.zzT + (zzep.zzq(r2) * this.zzG.zzo.zzb) >= r0.zzc()) {
                        r2 = Math.min(r2, zza);
                    }
                }
            }
        } else if (this.zzG.zze != 3 || zzax()) {
            r2 = zza;
        }
        this.zzi.zzj(2, j + r2);
    }

    private final void zzR(zzkg zzkgVar, boolean z) throws zzib {
        long longValue;
        long j;
        boolean z2;
        zzuu zzuuVar;
        boolean z3;
        long j2;
        long j3;
        long zzS;
        long j4;
        zzlf zzlfVar;
        int i;
        this.zzH.zza(z ? 1 : 0);
        if (this.zzD) {
            if (this.zzE != null) {
                this.zzF++;
            }
            this.zzE = zzkgVar;
            return;
        }
        zzbf zzbfVar = this.zzG.zza;
        int i2 = this.zzO;
        boolean z4 = this.zzP;
        zzbe zzbeVar = this.zzl;
        zzbd zzbdVar = this.zzm;
        Pair zzaD = zzaD(zzbfVar, zzkgVar, true, i2, z4, zzbeVar, zzbdVar);
        if (zzaD == null) {
            Pair zzY = zzY(this.zzG.zza);
            zzuuVar = (zzuu) zzY.first;
            longValue = ((Long) zzY.second).longValue();
            z2 = !this.zzG.zza.zzg();
            j = -9223372036854775807L;
        } else {
            Object obj = zzaD.first;
            longValue = ((Long) zzaD.second).longValue();
            long j5 = zzkgVar.zzc;
            j = j5 == C.TIME_UNSET ? -9223372036854775807L : longValue;
            zzuu zzy = this.zzs.zzy(this.zzG.zza, obj, longValue);
            if (zzy.zzb()) {
                this.zzG.zza.zzo(zzy.zza, zzbdVar);
                if (zzbdVar.zzd(zzy.zzb) == zzy.zzc) {
                    zzbdVar.zzj();
                }
                longValue = 0;
                zzuuVar = zzy;
                z2 = true;
            } else {
                z2 = j5 == C.TIME_UNSET;
                zzuuVar = zzy;
            }
        }
        try {
            if (this.zzG.zza.zzg()) {
                this.zzS = zzkgVar;
            } else if (zzaD == null) {
                if (this.zzG.zze != 1) {
                    zzB(4);
                }
                zzX(false, true, false, true);
            } else {
                try {
                    if (zzuuVar.equals(this.zzG.zzb)) {
                        zzkp zzm = this.zzs.zzm();
                        if (zzm == null || !zzm.zze || longValue == 0) {
                            j3 = longValue;
                        } else {
                            zzus zzusVar = zzm.zza;
                            long j6 = zzbeVar.zzm;
                            if (this.zzC && j6 != C.TIME_UNSET) {
                                Double d = this.zzB.zzc;
                            }
                            j3 = zzusVar.zzk(longValue, this.zzA);
                        }
                        if (zzep.zzp(j3) == zzep.zzp(this.zzG.zzs) && ((i = (zzlfVar = this.zzG).zze) == 2 || i == 3)) {
                            z3 = z2;
                            j4 = zzlfVar.zzs;
                            this.zzG = zzao(zzuuVar, j4, j, j4, z3, 2);
                        }
                    } else {
                        j3 = longValue;
                    }
                    zzlf zzlfVar2 = this.zzG;
                    zzbf zzbfVar2 = zzlfVar2.zza;
                    zzag(zzbfVar2, zzuuVar, zzbfVar2, zzlfVar2.zzb, j, true);
                    j4 = zzS;
                    this.zzG = zzao(zzuuVar, j4, j, j4, z3, 2);
                } catch (Throwable th) {
                    th = th;
                    j2 = zzS;
                    this.zzG = zzao(zzuuVar, j2, j, j2, z3, 2);
                    throw th;
                }
                this.zzD = this.zzC;
                zzS = zzS(zzuuVar, j3, this.zzG.zze == 4);
                z3 = z2 | (longValue != zzS);
            }
            z3 = z2;
            j4 = longValue;
            this.zzG = zzao(zzuuVar, j4, j, j4, z3, 2);
        } catch (Throwable th2) {
            th = th2;
            z3 = z2;
            j2 = longValue;
        }
    }

    private final long zzS(zzuu zzuuVar, long j, boolean z) throws zzib {
        zzks zzksVar = this.zzs;
        return zzT(zzuuVar, j, zzksVar.zzm() != zzksVar.zzn(), z);
    }

    private final long zzT(zzuu zzuuVar, long j, boolean z, boolean z2) throws zzib {
        zzK();
        boolean z3 = true;
        zzaC(false, true);
        if (z2 || this.zzG.zze == 3) {
            zzB(2);
        }
        zzks zzksVar = this.zzs;
        zzkp zzm = zzksVar.zzm();
        zzkp zzkpVar = zzm;
        while (zzkpVar != null && !zzuuVar.equals(zzkpVar.zzg.zza)) {
            zzkpVar = zzkpVar.zzp();
        }
        if (z || zzm != zzkpVar || (zzkpVar != null && zzkpVar.zza() + j < 0)) {
            zzaa();
            if (zzkpVar != null) {
                while (zzksVar.zzm() != zzkpVar) {
                    zzksVar.zzr();
                }
                zzksVar.zzs(zzkpVar);
                zzkpVar.zzb(MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US);
                zzap();
                zzkpVar.zzh = true;
            }
        }
        zzab();
        if (zzkpVar != null) {
            zzksVar.zzs(zzkpVar);
            if (!zzkpVar.zze) {
                zzkpVar.zzg = zzkpVar.zzg.zza(j);
            } else if (zzkpVar.zzf) {
                if (this.zzC) {
                    boolean z4 = this.zzB.zzi;
                    if (!this.zzG.zza.zzg() && zzkpVar.zzg.zza.equals(this.zzG.zzb)) {
                        zzlr[] zzlrVarArr = this.zzb;
                        boolean z5 = true;
                        for (int i = 0; i < 2; i++) {
                            zzlr zzlrVar = zzlrVarArr[i];
                            if (zzlrVar.zzM()) {
                                z5 &= zzlrVar.zzF(zzkpVar, j);
                            }
                        }
                        if (z5) {
                            zzus zzusVar = zzkpVar.zza;
                            long j2 = this.zzG.zzs;
                            zzlv zzlvVar = zzlv.zzb;
                            if (zzusVar.zzk(j2, zzlvVar) == zzusVar.zzk(j, zzlvVar)) {
                                z3 = false;
                            }
                        }
                    }
                }
                zzus zzusVar2 = zzkpVar.zza;
                j = zzusVar2.zzj(j);
                zzusVar2.zzf(j - this.zzn, false);
            }
            zzU(j, z3);
            zzam();
        } else {
            zzksVar.zzv();
            zzU(j, true);
        }
        zzas(false);
        this.zzi.zzh(2);
        return j;
    }

    private final void zzU(long j, boolean z) throws zzib {
        zzkp zzm = this.zzs.zzm();
        long zza2 = j + (zzm == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : zzm.zza());
        this.zzT = zza2;
        this.zzo.zzc(zza2);
        zzlr[] zzlrVarArr = this.zzb;
        for (int i = 0; i < 2; i++) {
            zzlrVarArr[i].zzE(zzm, this.zzT, z);
        }
        for (zzkp zzm2 = r0.zzm(); zzm2 != null; zzm2 = zzm2.zzp()) {
            for (zzyk zzykVar : zzm2.zzr().zzc) {
            }
        }
    }

    private final void zzV() throws zzib {
        int i = 0;
        while (true) {
            zzlr[] zzlrVarArr = this.zzb;
            if (i >= 2) {
                return;
            }
            zzlrVarArr[i].zzz(this.zzC ? this.zzB : null);
            i++;
        }
    }

    private final void zzW(boolean z, boolean z2) {
        zzX(z || !this.zzQ, false, true, false);
        this.zzH.zza(z2 ? 1 : 0);
        this.zzg.zzc(this.zzv);
        this.zzz.zzc(this.zzG.zzl, 1);
        zzB(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
    
        if (r0 == false) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzX(boolean r35, boolean r36, boolean r37, boolean r38) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkh.zzX(boolean, boolean, boolean, boolean):void");
    }

    private final Pair zzY(zzbf zzbfVar) {
        long j = 0;
        if (zzbfVar.zzg()) {
            return Pair.create(zzlf.zzb(), 0L);
        }
        int zzk = zzbfVar.zzk(this.zzP);
        zzbe zzbeVar = this.zzl;
        zzbd zzbdVar = this.zzm;
        Pair zzm = zzbfVar.zzm(zzbeVar, zzbdVar, zzk, C.TIME_UNSET);
        zzuu zzy = this.zzs.zzy(zzbfVar, zzm.first, 0L);
        long longValue = ((Long) zzm.second).longValue();
        if (zzy.zzb()) {
            zzbfVar.zzo(zzy.zza, zzbdVar);
            if (zzy.zzc == zzbdVar.zzd(zzy.zzb)) {
                zzbdVar.zzj();
            }
        } else {
            j = longValue;
        }
        return Pair.create(zzy, Long.valueOf(j));
    }

    private final void zzZ(zzbf zzbfVar, zzbf zzbfVar2) {
        if (zzbfVar.zzg() && zzbfVar2.zzg()) {
            return;
        }
        ArrayList arrayList = this.zzp;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
            return;
        }
        zzkd zzkdVar = (zzkd) arrayList.get(size);
        Object obj = zzkdVar.zzb;
        zzlj zzljVar = zzkdVar.zza;
        String str = zzep.zza;
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzaA, reason: merged with bridge method [inline-methods] */
    public final boolean zzw() {
        if (!this.zzC) {
            return false;
        }
        boolean z = this.zzB.zzg;
        return true;
    }

    private static boolean zzaB(zzlf zzlfVar, zzbd zzbdVar) {
        zzuu zzuuVar = zzlfVar.zzb;
        zzbf zzbfVar = zzlfVar.zza;
        return zzbfVar.zzg() || zzbfVar.zzo(zzuuVar.zza, zzbdVar).zzf;
    }

    private final void zzaC(boolean z, boolean z2) {
        this.zzL = z;
        long j = C.TIME_UNSET;
        if (z && !z2) {
            j = SystemClock.elapsedRealtime();
        }
        this.zzM = j;
    }

    private static Pair zzaD(zzbf zzbfVar, zzkg zzkgVar, boolean z, int i, boolean z2, zzbe zzbeVar, zzbd zzbdVar) {
        Pair zzm;
        zzbf zzbfVar2 = zzkgVar.zza;
        if (zzbfVar.zzg()) {
            return null;
        }
        zzbf zzbfVar3 = true == zzbfVar2.zzg() ? zzbfVar : zzbfVar2;
        try {
            zzm = zzbfVar3.zzm(zzbeVar, zzbdVar, zzkgVar.zzb, zzkgVar.zzc);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (zzbfVar.equals(zzbfVar3)) {
            return zzm;
        }
        if (zzbfVar.zze(zzm.first) != -1) {
            return (zzbfVar3.zzo(zzm.first, zzbdVar).zzf && zzbfVar3.zzb(zzbdVar.zzc, zzbeVar, 0L).zzn == zzbfVar3.zze(zzm.first)) ? zzbfVar.zzm(zzbeVar, zzbdVar, zzbfVar.zzo(zzm.first, zzbdVar).zzc, zzkgVar.zzc) : zzm;
        }
        int zzr = zzr(zzbeVar, zzbdVar, i, z2, zzm.first, zzbfVar3, zzbfVar);
        if (zzr != -1) {
            return zzbfVar.zzm(zzbeVar, zzbdVar, zzr, C.TIME_UNSET);
        }
        return null;
    }

    private static final void zzaE(zzlj zzljVar) throws zzib {
        zzljVar.zzh();
        try {
            zzljVar.zza().zzx(zzljVar.zzc(), zzljVar.zze());
        } finally {
            zzljVar.zzi(true);
        }
    }

    private static final boolean zzaF(zzkp zzkpVar) {
        if (zzkpVar != null) {
            try {
                if (zzkpVar.zze) {
                    zzwk[] zzwkVarArr = zzkpVar.zzc;
                    for (int i = 0; i < 2; i++) {
                        zzwk zzwkVar = zzwkVarArr[i];
                        if (zzwkVar != null) {
                            zzwkVar.zzc();
                        }
                    }
                } else {
                    zzkpVar.zza.zzc();
                }
                if (zzkpVar.zzg() != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    private final void zzaa() throws zzib {
        int i = 0;
        while (true) {
            zzlr[] zzlrVarArr = this.zzb;
            if (i >= 2) {
                this.zzaa = C.TIME_UNSET;
                return;
            }
            int zzd = zzlrVarArr[i].zzd();
            zzlrVarArr[i].zzA(this.zzo);
            zzN(i, false);
            this.zzR -= zzd;
            i++;
        }
    }

    private final void zzab() {
        if (this.zzy && zzaz()) {
            zzlr[] zzlrVarArr = this.zzb;
            for (int i = 0; i < 2; i++) {
                zzlr zzlrVar = zzlrVarArr[i];
                int zzd = zzlrVar.zzd();
                zzlrVar.zzC(this.zzo);
                this.zzR -= zzd - zzlrVar.zzd();
            }
            this.zzaa = C.TIME_UNSET;
        }
    }

    private final void zzac() throws zzib {
        zzad();
        zzI(true);
    }

    private final void zzad() throws zzib {
        zzhz zzhzVar = this.zzo;
        float f = zzhzVar.zzj().zzb;
        zzks zzksVar = this.zzs;
        zzkp zzm = zzksVar.zzm();
        zzkp zzn = zzksVar.zzn();
        zzys zzysVar = null;
        boolean z = true;
        while (zzm != null && zzm.zze) {
            zzlf zzlfVar = this.zzG;
            zzys zzk = zzm.zzk(f, zzlfVar.zza, zzlfVar.zzl);
            zzys zzysVar2 = zzm == zzksVar.zzm() ? zzk : zzysVar;
            zzys zzr = zzm.zzr();
            boolean z2 = false;
            if (zzr != null) {
                zzyk[] zzykVarArr = zzk.zzc;
                if (zzr.zzc.length == zzykVarArr.length) {
                    for (int i = 0; i < zzykVarArr.length; i++) {
                        if (zzk.zzb(zzr, i)) {
                        }
                    }
                    if (zzm != zzn) {
                        z2 = true;
                    }
                    z &= z2;
                    zzm = zzm.zzp();
                    zzysVar = zzysVar2;
                }
            }
            int i2 = 2;
            if (z) {
                zzkp zzm2 = zzksVar.zzm();
                int zzs = zzksVar.zzs(zzm2) & 1;
                zzlr[] zzlrVarArr = this.zzb;
                boolean[] zArr = new boolean[2];
                zzysVar2.getClass();
                long zzm3 = zzm2.zzm(zzysVar2, this.zzG.zzs, 1 == zzs, zArr);
                zzlf zzlfVar2 = this.zzG;
                boolean z3 = (zzlfVar2.zze == 4 || zzm3 == zzlfVar2.zzs) ? false : true;
                zzlf zzlfVar3 = this.zzG;
                zzkp zzkpVar = zzm2;
                this.zzG = zzao(zzlfVar3.zzb, zzm3, zzlfVar3.zzc, zzlfVar3.zzd, z3, 5);
                if (z3) {
                    zzU(zzm3, true);
                }
                zzab();
                i2 = 2;
                boolean[] zArr2 = new boolean[2];
                int i3 = 0;
                while (i3 < 2) {
                    int zzd = zzlrVarArr[i3].zzd();
                    zArr2[i3] = zzlrVarArr[i3].zzM();
                    zzkp zzkpVar2 = zzkpVar;
                    zzlrVarArr[i3].zzD(zzkpVar2.zzc[i3], zzhzVar, this.zzT, zArr[i3]);
                    if (zzd - zzlrVarArr[i3].zzd() > 0) {
                        zzN(i3, false);
                    }
                    this.zzR -= zzd - zzlrVarArr[i3].zzd();
                    i3++;
                    zzkpVar = zzkpVar2;
                }
                zzaq(zArr2, this.zzT);
                zzkpVar.zzh = true;
            } else {
                zzksVar.zzs(zzm);
                if (zzm.zze) {
                    long max = Math.max(zzm.zzg.zzb, this.zzT - zzm.zza());
                    if (this.zzy && zzaz() && zzksVar.zzo() == zzm) {
                        zzab();
                    }
                    zzm.zzl(zzk, max, false);
                }
            }
            zzas(true);
            if (this.zzG.zze != 4) {
                zzam();
                zzL();
                this.zzi.zzh(i2);
                return;
            }
            return;
        }
    }

    private final boolean zzae() {
        zzkp zzm = this.zzs.zzm();
        long j = zzm.zzg.zze;
        if (!zzm.zze) {
            return false;
        }
        if (j == C.TIME_UNSET || this.zzG.zzs < j) {
            return true;
        }
        return !zzax();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0423  */
    /* JADX WARN: Type inference failed for: r1v75 */
    /* JADX WARN: Type inference failed for: r1v76, types: [int] */
    /* JADX WARN: Type inference failed for: r1v89 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaf(com.google.android.gms.internal.ads.zzbf r31, boolean r32) throws com.google.android.gms.internal.ads.zzib {
        /*
            Method dump skipped, instructions count: 1072
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkh.zzaf(com.google.android.gms.internal.ads.zzbf, boolean):void");
    }

    private final void zzag(zzbf zzbfVar, zzuu zzuuVar, zzbf zzbfVar2, zzuu zzuuVar2, long j, boolean z) throws zzib {
        if (!zzP(zzbfVar, zzuuVar)) {
            zzav zzavVar = zzuuVar.zzb() ? zzav.zza : this.zzG.zzo;
            if (this.zzo.zzj().equals(zzavVar)) {
                return;
            }
            zzM(zzavVar);
            zzal(this.zzG.zzo, zzavVar.zzb, false, false);
            return;
        }
        Object obj = zzuuVar.zza;
        zzbd zzbdVar = this.zzm;
        int i = zzbfVar.zzo(obj, zzbdVar).zzc;
        zzbe zzbeVar = this.zzl;
        zzbfVar.zzb(i, zzbeVar, 0L);
        zzhu zzhuVar = this.zzad;
        zzaf zzafVar = zzbeVar.zzj;
        String str = zzep.zza;
        zzhuVar.zza(zzafVar);
        if (j != C.TIME_UNSET) {
            zzhuVar.zzb(zzO(zzbfVar, obj, j));
            return;
        }
        if (!Objects.equals(!zzbfVar2.zzg() ? zzbfVar2.zzb(zzbfVar2.zzo(zzuuVar2.zza, zzbdVar).zzc, zzbeVar, 0L).zzb : null, zzbeVar.zzb) || z) {
            zzhuVar.zzb(C.TIME_UNSET);
        }
    }

    private final long zzah(zzkp zzkpVar) {
        if (zzkpVar == null) {
            return 0L;
        }
        long zza2 = zzkpVar.zza();
        if (zzkpVar.zze) {
            int i = 0;
            while (true) {
                zzlr[] zzlrVarArr = this.zzb;
                if (i >= 2) {
                    break;
                }
                if (zzlrVarArr[i].zzp(zzkpVar)) {
                    long zzf = zzlrVarArr[i].zzf(zzkpVar);
                    if (zzf == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    zza2 = Math.max(zzf, zza2);
                }
                i++;
            }
        }
        return zza2;
    }

    private final void zzai() {
        zzks zzksVar = this.zzs;
        zzksVar.zzt();
        zzkp zzl = zzksVar.zzl();
        if (zzl != null) {
            if (!zzl.zzd || zzl.zze) {
                zzus zzusVar = zzl.zza;
                if (zzusVar.zzn()) {
                    return;
                }
                if (this.zzg.zzj(this.zzv, this.zzG.zza, zzl.zzg.zza, zzl.zze ? zzusVar.zzi() : 0L)) {
                    if (!zzl.zzd) {
                        zzl.zzt(this, zzl.zzg.zzb);
                        return;
                    }
                    zzkm zzkmVar = new zzkm();
                    zzkmVar.zza(this.zzT - zzl.zza());
                    zzkmVar.zzb(this.zzo.zzj().zzb);
                    zzkmVar.zzc(this.zzM);
                    zzl.zzj(new zzkn(zzkmVar, null));
                }
            }
        }
    }

    private final void zzaj() {
        zzkp zzm = this.zzs.zzm();
        boolean z = false;
        if (zzm != null && zzm.zzg.zzi && this.zzJ) {
            z = true;
        }
        this.zzK = z;
    }

    private final void zzak(zzav zzavVar, boolean z) throws zzib {
        zzal(zzavVar, zzavVar.zzb, true, z);
    }

    private final void zzal(zzav zzavVar, float f, boolean z, boolean z2) throws zzib {
        int i;
        if (z) {
            if (z2) {
                this.zzH.zza(1);
            }
            zzlf zzlfVar = this.zzG;
            zzbf zzbfVar = zzlfVar.zza;
            zzuu zzuuVar = zzlfVar.zzb;
            long j = zzlfVar.zzc;
            long j2 = zzlfVar.zzd;
            int i2 = zzlfVar.zze;
            zzib zzibVar = zzlfVar.zzf;
            boolean z3 = zzlfVar.zzg;
            zzwv zzwvVar = zzlfVar.zzh;
            zzys zzysVar = zzlfVar.zzi;
            List list = zzlfVar.zzj;
            zzuu zzuuVar2 = zzlfVar.zzk;
            boolean z4 = zzlfVar.zzl;
            int i3 = zzlfVar.zzm;
            int i4 = zzlfVar.zzn;
            long j3 = zzlfVar.zzq;
            long j4 = zzlfVar.zzr;
            long j5 = zzlfVar.zzs;
            long j6 = zzlfVar.zzt;
            boolean z5 = zzlfVar.zzp;
            this.zzG = new zzlf(zzbfVar, zzuuVar, j, j2, i2, zzibVar, z3, zzwvVar, zzysVar, list, zzuuVar2, z4, i3, i4, zzavVar, j3, j4, j5, j6, false);
        }
        float f2 = zzavVar.zzb;
        zzkp zzm = this.zzs.zzm();
        while (true) {
            i = 0;
            if (zzm == null) {
                break;
            }
            zzyk[] zzykVarArr = zzm.zzr().zzc;
            int length = zzykVarArr.length;
            while (i < length) {
                zzyk zzykVar = zzykVarArr[i];
                i++;
            }
            zzm = zzm.zzp();
        }
        zzlr[] zzlrVarArr = this.zzb;
        while (i < 2) {
            zzlrVarArr[i].zzm(f, f2);
            i++;
        }
    }

    private final void zzam() {
        long zza2;
        long j;
        zzks zzksVar;
        boolean zzh;
        zzks zzksVar2 = this.zzs;
        if (zzaF(zzksVar2.zzk())) {
            zzkp zzk = zzksVar2.zzk();
            long zzau = zzau(zzk.zzg());
            if (zzk == zzksVar2.zzm()) {
                zza2 = this.zzT;
                j = zzk.zza();
            } else {
                zza2 = this.zzT - zzk.zza();
                j = zzk.zzg.zzb;
            }
            zzksVar = zzksVar2;
            zzkk zzkkVar = new zzkk(this.zzv, this.zzG.zza, zzk.zzg.zza, zza2 - j, zzau, this.zzo.zzj().zzb, this.zzG.zzl, this.zzL, zzP(this.zzG.zza, zzk.zzg.zza) ? this.zzad.zze() : C.TIME_UNSET, this.zzM);
            zzkl zzklVar = this.zzg;
            zzh = zzklVar.zzh(zzkkVar);
            zzkp zzm = zzksVar.zzm();
            if (!zzh && zzm.zze && zzau < 500000 && this.zzn > 0) {
                zzm.zza.zzf(this.zzG.zzs, false);
                zzh = zzklVar.zzh(zzkkVar);
            }
        } else {
            zzksVar = zzksVar2;
            zzh = false;
        }
        this.zzN = zzh;
        if (zzh) {
            zzkp zzk2 = zzksVar.zzk();
            zzk2.getClass();
            zzkm zzkmVar = new zzkm();
            zzkmVar.zza(this.zzT - zzk2.zza());
            zzkmVar.zzb(this.zzo.zzj().zzb);
            zzkmVar.zzc(this.zzM);
            zzk2.zzj(new zzkn(zzkmVar, null));
        }
        zzan();
    }

    private final void zzan() {
        zzkp zzk = this.zzs.zzk();
        boolean z = true;
        if (!this.zzN && (zzk == null || !zzk.zza.zzn())) {
            z = false;
        }
        zzlf zzlfVar = this.zzG;
        if (z != zzlfVar.zzg) {
            this.zzG = zzlfVar.zzg(z);
        }
    }

    private final zzlf zzao(zzuu zzuuVar, long j, long j2, long j3, boolean z, int i) {
        List list;
        zzwv zzwvVar;
        zzys zzysVar;
        zzkp zzm;
        int i2 = 0;
        this.zzW = (!this.zzW && j == this.zzG.zzs && zzuuVar.equals(this.zzG.zzb)) ? false : true;
        zzaj();
        zzlf zzlfVar = this.zzG;
        zzwv zzwvVar2 = zzlfVar.zzh;
        zzys zzysVar2 = zzlfVar.zzi;
        List list2 = zzlfVar.zzj;
        if (this.zzt.zzb()) {
            zzks zzksVar = this.zzs;
            zzkp zzm2 = zzksVar.zzm();
            zzwv zzq = zzm2 == null ? zzwv.zza : zzm2.zzq();
            zzys zzr = zzm2 == null ? this.zzf : zzm2.zzr();
            zzyk[] zzykVarArr = zzr.zzc;
            zzgpb zzgpbVar = new zzgpb();
            boolean z2 = false;
            for (zzyk zzykVar : zzykVarArr) {
                if (zzykVar != null) {
                    zzap zzapVar = zzykVar.zzb(0).zzl;
                    if (zzapVar == null) {
                        zzgpbVar.zzf(new zzap(C.TIME_UNSET, new zzao[0]));
                    } else {
                        zzgpbVar.zzf(zzapVar);
                        z2 = true;
                    }
                }
            }
            zzgpe zzi = z2 ? zzgpbVar.zzi() : zzgpe.zzi();
            if (zzm2 != null) {
                zzkq zzkqVar = zzm2.zzg;
                if (zzkqVar.zzc != j2) {
                    zzm2.zzg = zzkqVar.zzb(j2);
                }
            }
            if (zzksVar.zzm() == zzksVar.zzn() && (zzm = zzksVar.zzm()) != null) {
                zzys zzr2 = zzm.zzr();
                while (true) {
                    zzlr[] zzlrVarArr = this.zzb;
                    if (i2 >= 2) {
                        break;
                    }
                    if (zzr2.zza(i2)) {
                        if (zzlrVarArr[i2].zze() != 1) {
                            break;
                        }
                        int i3 = zzr2.zzb[i2].zzb;
                    }
                    i2++;
                }
            }
            list = zzi;
            zzwvVar = zzq;
            zzysVar = zzr;
        } else if (zzuuVar.equals(this.zzG.zzb)) {
            list = list2;
            zzwvVar = zzwvVar2;
            zzysVar = zzysVar2;
        } else {
            zzysVar = this.zzf;
            zzwvVar = zzwv.zza;
            list = zzgpe.zzi();
        }
        if (z) {
            this.zzH.zzc(i);
        }
        return this.zzG.zzc(zzuuVar, j, j2, j3, zzat(), zzwvVar, zzysVar, list);
    }

    private final void zzap() throws zzib {
        zzaq(new boolean[2], this.zzs.zzn().zzc());
    }

    private final void zzaq(boolean[] zArr, long j) throws zzib {
        zzlr[] zzlrVarArr;
        zzkp zzn = this.zzs.zzn();
        zzys zzr = zzn.zzr();
        int i = 0;
        while (true) {
            zzlrVarArr = this.zzb;
            if (i >= 2) {
                break;
            }
            if (!zzr.zza(i)) {
                zzlrVarArr[i].zzG();
            }
            i++;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            if (zzr.zza(i2) && !zzlrVarArr[i2].zzp(zzn)) {
                zzar(zzn, i2, zArr[i2], j);
            }
        }
    }

    private final void zzar(zzkp zzkpVar, int i, boolean z, long j) throws zzib {
        zzlr zzlrVar = this.zzb[i];
        if (zzlrVar.zzM()) {
            return;
        }
        boolean z2 = zzkpVar == this.zzs.zzm();
        zzys zzr = zzkpVar.zzr();
        zzlq zzlqVar = zzr.zzb[i];
        zzyk zzykVar = zzr.zzc[i];
        boolean z3 = zzax() && this.zzG.zze == 3;
        boolean z4 = !z && z3;
        this.zzR++;
        zzlrVar.zzx(zzlqVar, zzykVar, zzkpVar.zzc[i], this.zzT, z4, z2, j, zzkpVar.zza(), zzkpVar.zzg.zza, this.zzo);
        zzlrVar.zzy(11, new zzjv(this), zzkpVar);
        if (z3 && z2) {
            zzlrVar.zzv();
        }
    }

    private final void zzas(boolean z) {
        zzkp zzk = this.zzs.zzk();
        zzuu zzuuVar = zzk == null ? this.zzG.zzb : zzk.zzg.zza;
        boolean equals = this.zzG.zzk.equals(zzuuVar);
        if (!equals) {
            this.zzG = this.zzG.zzh(zzuuVar);
        }
        zzlf zzlfVar = this.zzG;
        zzlfVar.zzq = zzk == null ? zzlfVar.zzs : zzk.zzf();
        this.zzG.zzr = zzat();
        if ((!equals || z) && zzk != null && zzk.zze) {
            zzaw(zzk.zzg.zza, zzk.zzq(), zzk.zzr());
        }
    }

    private final long zzat() {
        return zzau(this.zzG.zzq);
    }

    private final long zzau(long j) {
        zzkp zzk = this.zzs.zzk();
        if (zzk == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzT - zzk.zza()));
    }

    private final long zzav(zzkp zzkpVar) {
        zzgmd.zzh(zzkpVar.zze);
        return (long) ((zzkpVar.zzc() - this.zzT) / this.zzo.zzj().zzb);
    }

    private final void zzaw(zzuu zzuuVar, zzwv zzwvVar, zzys zzysVar) {
        long zza2;
        long j;
        zzks zzksVar = this.zzs;
        zzkp zzk = zzksVar.zzk();
        zzk.getClass();
        if (zzk == zzksVar.zzm()) {
            zza2 = this.zzT;
            j = zzk.zza();
        } else {
            zza2 = this.zzT - zzk.zza();
            j = zzk.zzg.zzb;
        }
        this.zzg.zzb(new zzkk(this.zzv, this.zzG.zza, zzuuVar, zza2 - j, zzau(zzk.zzf()), this.zzo.zzj().zzb, this.zzG.zzl, this.zzL, zzP(this.zzG.zza, zzk.zzg.zza) ? this.zzad.zze() : C.TIME_UNSET, this.zzM), zzwvVar, zzysVar.zzc);
    }

    private final boolean zzax() {
        zzlf zzlfVar = this.zzG;
        return zzlfVar.zzl && zzlfVar.zzn == 0;
    }

    private final void zzay(int i) throws IOException, zzib {
        zzlr zzlrVar = this.zzb[i];
        try {
            zzkp zzm = this.zzs.zzm();
            if (zzm == null) {
                throw null;
            }
            zzkp zzkpVar = zzm;
            zzlrVar.zzu(zzm);
        } catch (IOException | RuntimeException e) {
            zzlrVar.zze();
            throw e;
        }
    }

    private final boolean zzaz() {
        if (!this.zzy) {
            return false;
        }
        zzlr[] zzlrVarArr = this.zzb;
        for (int i = 0; i < 2; i++) {
            if (zzlrVarArr[i].zzc()) {
                return true;
            }
        }
        return false;
    }

    static int zzr(zzbe zzbeVar, zzbd zzbdVar, int i, boolean z, Object obj, zzbf zzbfVar, zzbf zzbfVar2) {
        Object obj2 = zzbfVar.zzb(zzbfVar.zzo(obj, zzbdVar).zzc, zzbeVar, 0L).zzb;
        for (int i2 = 0; i2 < zzbfVar2.zza(); i2++) {
            if (zzbfVar2.zzb(i2, zzbeVar, 0L).zzb.equals(obj2)) {
                return i2;
            }
        }
        int zze = zzbfVar.zze(obj);
        int zzc = zzbfVar.zzc();
        int i3 = zze;
        int i4 = 0;
        int i5 = -1;
        while (true) {
            if (i4 >= zzc || i5 != -1) {
                break;
            }
            i3 = zzbfVar.zzl(i3, zzbdVar, zzbeVar, i, z);
            if (i3 == -1) {
                i5 = -1;
                break;
            }
            i5 = zzbfVar2.zze(zzbfVar.zzf(i3));
            i4++;
        }
        if (i5 == -1) {
            return -1;
        }
        return zzbfVar2.zzd(i5, zzbdVar, false).zzc;
    }

    static final /* synthetic */ void zzz(zzlj zzljVar) {
        try {
            zzaE(zzljVar);
        } catch (zzib e) {
            zzdt.zzf("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:372|(5:376|(1:378)(2:383|(1:385))|379|(1:381)|382)|386|(1:388)(1:673)|389|390|(2:408|(2:410|(2:411|(3:413|(2:422|423)(2:419|420)|421)(17:424|425|(2:427|(1:429))|430|431|(16:557|(3:586|587|(1:589)(2:590|(2:592|(2:593|(2:595|(1:597)(1:598))(3:599|600|(7:614|615|616|(3:618|(9:620|(1:622)|632|(4:636|(4:639|(2:641|(2:645|646))(1:650)|648|637)|651|625)|652|(2:655|653)|656|657|(1:659))(1:660)|623)(1:661)|626|(3:629|630|627)|631))))))|559|560|561|(4:565|566|(4:569|(4:576|(1:583)(1:580)|581|582)|573|567)|585)|434|(3:517|518|(2:523|(3:524|525|(2:527|528)(2:529|(10:531|(4:533|534|(2:543|544)(4:538|539|540|541)|542)|549|550|437|(6:(1:452)|454|455|(12:457|(2:459|(2:461|(10:465|466|467|468|(3:472|(1:474)|475)|476|(1:478)|479|(2:480|(3:482|(2:484|485)(1:487)|486))|489)))|490|466|467|468|(4:470|472|(0)|475)|476|(0)|479|(3:480|(1:1)(0)|486)|489)(3:491|492|493)|438|439)|495|496|219|(5:221|(2:224|(1:226)(17:227|(2:229|(2:230|(3:232|(2:234|235)(7:237|(1:251)(1:241)|242|(1:250)(1:245)|(1:247)|248|249)|236)(1:252)))(1:366)|253|(4:261|(1:263)|264|(10:266|267|(2:269|(2:270|(3:272|(2:274|275)(1:277)|276)(3:278|279|(7:287|(1:289)(2:308|(1:310)(2:311|312))|290|(1:307)(1:294)|295|(1:306)|298))))|313|290|(1:292)|307|295|(1:297)(1:306)|298))|314|(2:316|(1:318)(1:(13:325|(7:327|(1:329)(1:345)|330|(1:344)(1:334)|335|(1:343)(1:339)|(1:342))|320|(1:322)|267|(0)|313|290|(0)|307|295|(0)(0)|298)(1:324)))|346|(4:348|(2:350|(4:352|353|(4:355|(4:357|(1:359)|360|361)|362|363)|364))(0)|12|13)|267|(0)|313|290|(0)|307|295|(0)(0)|298))(1:223)|182|12|13)(3:367|12|13))))))|436|437|(11:441|443|445|447|449|(0)|454|455|(0)(0)|438|439)|501|495|496|219|(0)(0))|433|434|(0)|436|437|(2:438|439)|501|495|496|219|(0)(0)))))|672|430|431|(0)|433|434|(0)|436|437|(2:438|439)|501|495|496|219|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x0a17, code lost:
    
        if (r1 != false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x0a45, code lost:
    
        if (r8 == false) goto L535;
     */
    /* JADX WARN: Code restructure failed: missing block: B:624:0x064e, code lost:
    
        if (r8.zza.zzh() != r7) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:670:0x06e9, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:671:0x079b, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0bb1  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0bca  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0c0a A[ADDED_TO_REGION, LOOP:4: B:174:0x0c0a->B:177:0x0c12, LOOP_START, PHI: r2
      0x0c0a: PHI (r2v36 com.google.android.gms.internal.ads.zzkp) = (r2v32 com.google.android.gms.internal.ads.zzkp), (r2v37 com.google.android.gms.internal.ads.zzkp) binds: [B:173:0x0c07, B:177:0x0c12] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0c21  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0c30  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0c3b  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0c79  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x08b8  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0a80  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0ae9 A[Catch: RuntimeException -> 0x0b34, zzib -> 0x0b36, IOException -> 0x0b6c, zztu -> 0x0b74, zzgc -> 0x0b7c, zzat -> 0x0b84, zzrr -> 0x0b9b, TryCatch #32 {zzib -> 0x0b36, RuntimeException -> 0x0b34, blocks: (B:496:0x088b, B:219:0x08b1, B:224:0x08bd, B:226:0x08c5, B:227:0x08cc, B:229:0x08da, B:230:0x08f4, B:232:0x08f8, B:234:0x0900, B:236:0x092a, B:237:0x0904, B:239:0x090d, B:242:0x0916, B:247:0x0926, B:253:0x0937, B:255:0x093d, B:259:0x094a, B:261:0x0952, B:263:0x0956, B:264:0x0961, B:266:0x0967, B:267:0x0a79, B:270:0x0a81, B:272:0x0a85, B:274:0x0a8d, B:276:0x0a90, B:279:0x0a94, B:281:0x0a9a, B:283:0x0aa3, B:285:0x0aad, B:287:0x0ab3, B:289:0x0abe, B:290:0x0ae3, B:292:0x0ae9, B:295:0x0af3, B:298:0x0b0e, B:304:0x0b07, B:306:0x0b0b, B:308:0x0ac5, B:311:0x0ad3, B:312:0x0adb, B:313:0x0adc, B:314:0x0970, B:316:0x0976, B:318:0x097a, B:320:0x0a19, B:322:0x0a26, B:325:0x0984, B:327:0x0988, B:329:0x099a, B:330:0x09a8, B:332:0x09b2, B:335:0x09bb, B:337:0x09c5, B:342:0x09d0, B:346:0x0a33, B:348:0x0a3a, B:350:0x0a3e, B:353:0x0a47, B:355:0x0a57, B:357:0x0a5d, B:359:0x0a67, B:361:0x0a6c, B:363:0x0a71, B:364:0x0a76, B:366:0x0930, B:468:0x082e, B:470:0x0840, B:472:0x0846, B:474:0x084b, B:476:0x0853, B:478:0x085a, B:479:0x085d, B:480:0x0866, B:482:0x086a, B:484:0x0870, B:486:0x0875, B:493:0x088a, B:679:0x0b1c, B:682:0x0b27), top: B:5:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0afe A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0aff A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0b13  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x07b9 A[Catch: zzib -> 0x0890, RuntimeException -> 0x0897, IOException -> 0x0b6c, zztu -> 0x0b74, zzgc -> 0x0b7c, zzat -> 0x0b84, zzrr -> 0x0b9b, TryCatch #1 {RuntimeException -> 0x0897, blocks: (B:434:0x071c, B:439:0x07ab, B:441:0x07b9, B:443:0x07bd, B:445:0x07c3, B:447:0x07c9, B:449:0x07d3, B:455:0x07dd, B:457:0x07e5, B:466:0x0813, B:561:0x06de, B:565:0x06ec), top: B:560:0x06de }] */
    /* JADX WARN: Removed duplicated region for block: B:452:0x07d9 A[Catch: zzib -> 0x06e9, RuntimeException -> 0x079b, IOException -> 0x0b6c, zztu -> 0x0b74, zzgc -> 0x0b7c, zzat -> 0x0b84, zzrr -> 0x0b9b, TRY_ENTER, TRY_LEAVE, TryCatch #6 {zzib -> 0x06e9, blocks: (B:527:0x073d, B:540:0x0780, B:542:0x0788, B:550:0x0791, B:452:0x07d9, B:459:0x07fa, B:461:0x0802, B:463:0x080a, B:616:0x062a, B:618:0x0631, B:620:0x0635, B:623:0x0646, B:629:0x06bf, B:632:0x0650, B:634:0x0654, B:639:0x065c, B:641:0x0664, B:643:0x0681, B:648:0x068a, B:652:0x068f, B:655:0x0697, B:657:0x069f, B:659:0x06a5, B:563:0x06e4, B:569:0x06f2, B:574:0x06fb, B:576:0x0701, B:580:0x070f, B:581:0x0716), top: B:431:0x0592 }] */
    /* JADX WARN: Removed duplicated region for block: B:457:0x07e5 A[Catch: zzib -> 0x0890, RuntimeException -> 0x0897, IOException -> 0x0b6c, zztu -> 0x0b74, zzgc -> 0x0b7c, zzat -> 0x0b84, zzrr -> 0x0b9b, TRY_LEAVE, TryCatch #1 {RuntimeException -> 0x0897, blocks: (B:434:0x071c, B:439:0x07ab, B:441:0x07b9, B:443:0x07bd, B:445:0x07c3, B:447:0x07c9, B:449:0x07d3, B:455:0x07dd, B:457:0x07e5, B:466:0x0813, B:561:0x06de, B:565:0x06ec), top: B:560:0x06de }] */
    /* JADX WARN: Removed duplicated region for block: B:474:0x084b A[Catch: RuntimeException -> 0x0b34, zzib -> 0x0b36, IOException -> 0x0b6c, zztu -> 0x0b74, zzgc -> 0x0b7c, zzat -> 0x0b84, zzrr -> 0x0b9b, LOOP:12: B:473:0x0849->B:474:0x084b, LOOP_END, TryCatch #32 {zzib -> 0x0b36, RuntimeException -> 0x0b34, blocks: (B:496:0x088b, B:219:0x08b1, B:224:0x08bd, B:226:0x08c5, B:227:0x08cc, B:229:0x08da, B:230:0x08f4, B:232:0x08f8, B:234:0x0900, B:236:0x092a, B:237:0x0904, B:239:0x090d, B:242:0x0916, B:247:0x0926, B:253:0x0937, B:255:0x093d, B:259:0x094a, B:261:0x0952, B:263:0x0956, B:264:0x0961, B:266:0x0967, B:267:0x0a79, B:270:0x0a81, B:272:0x0a85, B:274:0x0a8d, B:276:0x0a90, B:279:0x0a94, B:281:0x0a9a, B:283:0x0aa3, B:285:0x0aad, B:287:0x0ab3, B:289:0x0abe, B:290:0x0ae3, B:292:0x0ae9, B:295:0x0af3, B:298:0x0b0e, B:304:0x0b07, B:306:0x0b0b, B:308:0x0ac5, B:311:0x0ad3, B:312:0x0adb, B:313:0x0adc, B:314:0x0970, B:316:0x0976, B:318:0x097a, B:320:0x0a19, B:322:0x0a26, B:325:0x0984, B:327:0x0988, B:329:0x099a, B:330:0x09a8, B:332:0x09b2, B:335:0x09bb, B:337:0x09c5, B:342:0x09d0, B:346:0x0a33, B:348:0x0a3a, B:350:0x0a3e, B:353:0x0a47, B:355:0x0a57, B:357:0x0a5d, B:359:0x0a67, B:361:0x0a6c, B:363:0x0a71, B:364:0x0a76, B:366:0x0930, B:468:0x082e, B:470:0x0840, B:472:0x0846, B:474:0x084b, B:476:0x0853, B:478:0x085a, B:479:0x085d, B:480:0x0866, B:482:0x086a, B:484:0x0870, B:486:0x0875, B:493:0x088a, B:679:0x0b1c, B:682:0x0b27), top: B:5:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:478:0x085a A[Catch: RuntimeException -> 0x0b34, zzib -> 0x0b36, IOException -> 0x0b6c, zztu -> 0x0b74, zzgc -> 0x0b7c, zzat -> 0x0b84, zzrr -> 0x0b9b, TryCatch #32 {zzib -> 0x0b36, RuntimeException -> 0x0b34, blocks: (B:496:0x088b, B:219:0x08b1, B:224:0x08bd, B:226:0x08c5, B:227:0x08cc, B:229:0x08da, B:230:0x08f4, B:232:0x08f8, B:234:0x0900, B:236:0x092a, B:237:0x0904, B:239:0x090d, B:242:0x0916, B:247:0x0926, B:253:0x0937, B:255:0x093d, B:259:0x094a, B:261:0x0952, B:263:0x0956, B:264:0x0961, B:266:0x0967, B:267:0x0a79, B:270:0x0a81, B:272:0x0a85, B:274:0x0a8d, B:276:0x0a90, B:279:0x0a94, B:281:0x0a9a, B:283:0x0aa3, B:285:0x0aad, B:287:0x0ab3, B:289:0x0abe, B:290:0x0ae3, B:292:0x0ae9, B:295:0x0af3, B:298:0x0b0e, B:304:0x0b07, B:306:0x0b0b, B:308:0x0ac5, B:311:0x0ad3, B:312:0x0adb, B:313:0x0adc, B:314:0x0970, B:316:0x0976, B:318:0x097a, B:320:0x0a19, B:322:0x0a26, B:325:0x0984, B:327:0x0988, B:329:0x099a, B:330:0x09a8, B:332:0x09b2, B:335:0x09bb, B:337:0x09c5, B:342:0x09d0, B:346:0x0a33, B:348:0x0a3a, B:350:0x0a3e, B:353:0x0a47, B:355:0x0a57, B:357:0x0a5d, B:359:0x0a67, B:361:0x0a6c, B:363:0x0a71, B:364:0x0a76, B:366:0x0930, B:468:0x082e, B:470:0x0840, B:472:0x0846, B:474:0x084b, B:476:0x0853, B:478:0x085a, B:479:0x085d, B:480:0x0866, B:482:0x086a, B:484:0x0870, B:486:0x0875, B:493:0x088a, B:679:0x0b1c, B:682:0x0b27), top: B:5:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:482:0x086a A[Catch: RuntimeException -> 0x0b34, zzib -> 0x0b36, IOException -> 0x0b6c, zztu -> 0x0b74, zzgc -> 0x0b7c, zzat -> 0x0b84, zzrr -> 0x0b9b, TryCatch #32 {zzib -> 0x0b36, RuntimeException -> 0x0b34, blocks: (B:496:0x088b, B:219:0x08b1, B:224:0x08bd, B:226:0x08c5, B:227:0x08cc, B:229:0x08da, B:230:0x08f4, B:232:0x08f8, B:234:0x0900, B:236:0x092a, B:237:0x0904, B:239:0x090d, B:242:0x0916, B:247:0x0926, B:253:0x0937, B:255:0x093d, B:259:0x094a, B:261:0x0952, B:263:0x0956, B:264:0x0961, B:266:0x0967, B:267:0x0a79, B:270:0x0a81, B:272:0x0a85, B:274:0x0a8d, B:276:0x0a90, B:279:0x0a94, B:281:0x0a9a, B:283:0x0aa3, B:285:0x0aad, B:287:0x0ab3, B:289:0x0abe, B:290:0x0ae3, B:292:0x0ae9, B:295:0x0af3, B:298:0x0b0e, B:304:0x0b07, B:306:0x0b0b, B:308:0x0ac5, B:311:0x0ad3, B:312:0x0adb, B:313:0x0adc, B:314:0x0970, B:316:0x0976, B:318:0x097a, B:320:0x0a19, B:322:0x0a26, B:325:0x0984, B:327:0x0988, B:329:0x099a, B:330:0x09a8, B:332:0x09b2, B:335:0x09bb, B:337:0x09c5, B:342:0x09d0, B:346:0x0a33, B:348:0x0a3a, B:350:0x0a3e, B:353:0x0a47, B:355:0x0a57, B:357:0x0a5d, B:359:0x0a67, B:361:0x0a6c, B:363:0x0a71, B:364:0x0a76, B:366:0x0930, B:468:0x082e, B:470:0x0840, B:472:0x0846, B:474:0x084b, B:476:0x0853, B:478:0x085a, B:479:0x085d, B:480:0x0866, B:482:0x086a, B:484:0x0870, B:486:0x0875, B:493:0x088a, B:679:0x0b1c, B:682:0x0b27), top: B:5:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0885 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:509:0x0b4a  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0722 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:557:0x059f A[Catch: zzib -> 0x08a0, RuntimeException -> 0x0b3e, IOException -> 0x0b6c, zztu -> 0x0b74, zzgc -> 0x0b7c, zzat -> 0x0b84, zzrr -> 0x0b9b, TRY_LEAVE, TryCatch #10 {zzib -> 0x08a0, blocks: (B:369:0x0478, B:372:0x0482, B:386:0x04c4, B:389:0x04d9, B:430:0x058e, B:557:0x059f, B:673:0x04d6), top: B:368:0x0478 }] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r48) {
        /*
            Method dump skipped, instructions count: 3332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkh.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    public final void zza(float f) {
        this.zzi.zzh(34);
    }

    @Override // com.google.android.gms.internal.ads.zzhp
    public final void zzb(int i) {
        this.zzi.zze(33, i, 0).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzc(zzav zzavVar) {
        this.zzi.zzd(16, zzavVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final void zzcS(long j, long j2, zzv zzvVar, MediaFormat mediaFormat) {
        if (this.zzD) {
            this.zzi.zzc(37).zza();
        }
    }

    public final void zzd() {
        this.zzi.zzc(29).zza();
    }

    public final void zze(boolean z, int i, int i2) {
        this.zzi.zze(1, z ? 1 : 0, (i2 << 4) | 1).zza();
    }

    public final void zzf(zzbf zzbfVar, int i, long j) {
        this.zzi.zzd(3, new zzkg(zzbfVar, i, j)).zza();
    }

    public final void zzg(zzlu zzluVar) {
        this.zzi.zzd(38, zzluVar).zza();
    }

    public final void zzh() {
        this.zzi.zzc(6).zza();
    }

    public final void zzi(zzd zzdVar, boolean z) {
        this.zzi.zzf(31, 0, 0, zzdVar).zza();
    }

    public final void zzj(float f) {
        this.zzi.zzd(32, Float.valueOf(f)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zzk(zzlj zzljVar) {
        if (!this.zzI && this.zzk.getThread().isAlive()) {
            this.zzi.zzd(14, zzljVar).zza();
        } else {
            zzdt.zzc("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            zzljVar.zzi(false);
        }
    }

    public final boolean zzl(Object obj, long j) {
        if (this.zzI || !this.zzk.getThread().isAlive()) {
            return true;
        }
        zzdf zzdfVar = new zzdf(this.zzq);
        this.zzi.zzd(30, new Pair(obj, zzdfVar)).zza();
        if (j != C.TIME_UNSET) {
            return zzdfVar.zze(j);
        }
        return true;
    }

    public final boolean zzm() {
        if (this.zzI || !this.zzk.getThread().isAlive()) {
            return true;
        }
        this.zzI = true;
        zzdf zzdfVar = new zzdf(this.zzq);
        this.zzi.zzd(7, zzdfVar).zza();
        return zzdfVar.zze(this.zzu);
    }

    public final Looper zzn() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zzo() {
        zzdm zzdmVar = this.zzi;
        zzdmVar.zzk(2);
        zzdmVar.zzh(22);
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void zzp(zzus zzusVar) {
        this.zzi.zzd(8, zzusVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyq
    public final void zzq() {
        this.zzi.zzh(10);
    }

    @Override // com.google.android.gms.internal.ads.zzwl
    public final /* bridge */ /* synthetic */ void zzs(zzwm zzwmVar) {
        this.zzi.zzd(9, (zzus) zzwmVar).zza();
    }

    final /* synthetic */ zzkp zzt(zzkq zzkqVar, long j) {
        zzyv zze = this.zzg.zze(this.zzv);
        long j2 = this.zzZ.zzb;
        zzys zzysVar = this.zzf;
        zzle zzleVar = this.zzt;
        return new zzkp(this.zzc, j, this.zze, zze, zzleVar, zzkqVar, zzysVar, C.TIME_UNSET);
    }

    final /* synthetic */ void zzu(int i, boolean z) {
        this.zzw.zzB(i, this.zzb[i].zze(), z);
    }

    final /* synthetic */ void zzv(int i) {
        this.zzw.zzW(i);
    }

    final /* synthetic */ zzdm zzx() {
        return this.zzi;
    }

    public final void zzy(List list, int i, long j, zzwn zzwnVar) {
        this.zzi.zzd(17, new zzkb(list, zzwnVar, i, j, null)).zza();
    }
}
