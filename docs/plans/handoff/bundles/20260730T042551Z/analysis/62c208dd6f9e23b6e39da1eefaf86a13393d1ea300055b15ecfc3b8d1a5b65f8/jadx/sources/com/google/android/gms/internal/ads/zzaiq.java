package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import j$.util.DesugarCollections;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaiq implements zzacn {
    private static final byte[] zza = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzab zzb;
    private long zzA;
    private zzaip zzB;
    private int zzC;
    private int zzD;
    private int zzE;
    private boolean zzF;
    private boolean zzG;
    private zzacq zzH;
    private zzadt[] zzI;
    private zzadt[] zzJ;
    private boolean zzK;
    private final zzakd zzc;
    private final int zzd;
    private final List zze;
    private final SparseArray zzf;
    private final zzdy zzg;
    private final zzdy zzh;
    private final zzdy zzi;
    private final byte[] zzj;
    private final zzdy zzk;
    private final zzafl zzl;
    private final zzdy zzm;
    private final ArrayDeque zzn;
    private final ArrayDeque zzo;
    private final zzfo zzp;
    private zzfxn zzq;
    private int zzr;
    private int zzs;
    private long zzt;
    private int zzu;
    private zzdy zzv;
    private long zzw;
    private int zzx;
    private long zzy;
    private long zzz;

    static {
        zzz zzzVar = new zzz();
        zzzVar.zzaa("application/x-emsg");
        zzb = zzzVar.zzag();
    }

    @Deprecated
    public zzaiq() {
        this(zzakd.zza, 32, null, null, zzfxn.zzn(), null);
    }

    private static int zzg(int i) {
        if (i >= 0) {
            return i;
        }
        throw zzbc.zza("Unexpected negative value: " + i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzu zzh(java.util.List r17) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiq.zzh(java.util.List):com.google.android.gms.internal.ads.zzu");
    }

    private final void zzj() {
        this.zzr = 0;
        this.zzu = 0;
    }

    private static void zzk(zzdy zzdyVar, int i, zzajd zzajdVar) {
        zzdyVar.zzL(i + 8);
        int zzg = zzdyVar.zzg();
        int i2 = zzaik.zza;
        int i3 = zzg & 16777215;
        if ((i3 & 1) != 0) {
            throw zzbc.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (i3 & 2) != 0;
        int zzp = zzdyVar.zzp();
        if (zzp == 0) {
            Arrays.fill(zzajdVar.zzl, 0, zzajdVar.zze, false);
            return;
        }
        int i4 = zzajdVar.zze;
        if (zzp != i4) {
            throw zzbc.zza("Senc sample count " + zzp + " is different from fragment sample count" + i4, null);
        }
        Arrays.fill(zzajdVar.zzl, 0, zzp, z);
        zzajdVar.zza(zzdyVar.zzb());
        zzdy zzdyVar2 = zzajdVar.zzn;
        zzdyVar.zzH(zzdyVar2.zzN(), 0, zzdyVar2.zze());
        zzajdVar.zzn.zzL(0);
        zzajdVar.zzo = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x033f, code lost:
    
        if ((com.google.android.gms.internal.ads.zzei.zzu(r35, 1000000, r5.zzd, java.math.RoundingMode.DOWN) + com.google.android.gms.internal.ads.zzei.zzu(r5.zzj[0], 1000000, r5.zzc, java.math.RoundingMode.DOWN)) < r5.zze) goto L126;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzl(long r53) {
        /*
            Method dump skipped, instructions count: 1856
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiq.zzl(long):void");
    }

    private static final zzail zzm(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (zzail) sparseArray.valueAt(0);
        }
        zzail zzailVar = (zzail) sparseArray.get(i);
        zzailVar.getClass();
        return zzailVar;
    }

    public final /* synthetic */ void zza(long j, zzdy zzdyVar) {
        zzabz.zza(j, zzdyVar, this.zzJ);
    }

    /* JADX WARN: Code restructure failed: missing block: B:308:0x0091, code lost:
    
        r4 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0094, code lost:
    
        if (r26.zzr != 3) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0096, code lost:
    
        r3 = r2.zzb();
        r26.zzC = r3;
        r26.zzF = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x00a2, code lost:
    
        if (r2.zzf >= r2.zzi) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x00a4, code lost:
    
        r27.zzk(r3);
        r1 = r2.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x00ab, code lost:
    
        if (r1 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x00ae, code lost:
    
        r3 = r2.zzb.zzn;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x00b4, code lost:
    
        if (r1 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x00b6, code lost:
    
        r3.zzM(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x00c1, code lost:
    
        if (r2.zzb.zzb(r2.zzf) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x00c3, code lost:
    
        r3.zzM(r3.zzq() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x00d0, code lost:
    
        if (r2.zzk() != false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x00d2, code lost:
    
        r26.zzB = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x02c0, code lost:
    
        r26.zzr = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x02c4, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x00dc, code lost:
    
        if (r2.zzd.zza.zzh != 1) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x00de, code lost:
    
        r26.zzC = r3 - 8;
        r27.zzk(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x00f3, code lost:
    
        if ("audio/ac4".equals(r2.zzd.zza.zzg.zzo) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x00f5, code lost:
    
        r26.zzD = r2.zzc(r26.zzC, 7);
        com.google.android.gms.internal.ads.zzabq.zzb(r26.zzC, r26.zzk);
        r2.zza.zzr(r26.zzk, 7);
        r3 = r26.zzD + 7;
        r26.zzD = r3;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x011c, code lost:
    
        r26.zzC += r3;
        r26.zzr = 4;
        r26.zzE = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0113, code lost:
    
        r5 = 0;
        r3 = r2.zzc(r26.zzC, 0);
        r26.zzD = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0126, code lost:
    
        r3 = r2.zzd.zza;
        r9 = r2.zza;
        r5 = r2.zze();
        r7 = r3.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0132, code lost:
    
        if (r7 != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0134, code lost:
    
        r3 = r26.zzD;
        r4 = r26.zzC;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0138, code lost:
    
        if (r3 >= r4) goto L401;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x013a, code lost:
    
        r26.zzD += r9.zzf(r27, r4 - r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0268, code lost:
    
        r12 = r2.zza();
        r1 = r2.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0270, code lost:
    
        if (r1 == null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0272, code lost:
    
        r1 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0276, code lost:
    
        r9.zzt(r5, r12, r26.zzC, 0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0284, code lost:
    
        if (r26.zzo.isEmpty() != false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x0286, code lost:
    
        r1 = (com.google.android.gms.internal.ads.zzaio) r26.zzo.removeFirst();
        r26.zzx -= r1.zzc;
        r3 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0299, code lost:
    
        if (r1.zzb == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x029b, code lost:
    
        r3 = r3 + r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x029c, code lost:
    
        r14 = r26.zzI;
        r15 = r14.length;
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x02a1, code lost:
    
        if (r13 >= r15) goto L405;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x02a3, code lost:
    
        r14[r13].zzt(r3, 1, r1.zzc, r26.zzx, null);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x02bb, code lost:
    
        if (r2.zzk() != false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x02bd, code lost:
    
        r26.zzB = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0275, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0146, code lost:
    
        r10 = 0;
        r11 = r26.zzh.zzN();
        r11[0] = 0;
        r11[1] = 0;
        r11[2] = 0;
        r12 = r7 + 1;
        r7 = 4 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x015c, code lost:
    
        if (r26.zzD >= r26.zzC) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x015e, code lost:
    
        r13 = r26.zzE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0162, code lost:
    
        if (r13 != 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0164, code lost:
    
        r27.zzi(r11, r7, r12);
        r26.zzh.zzL(r10);
        r13 = r26.zzh.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x0172, code lost:
    
        if (r13 <= 0) goto L407;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0174, code lost:
    
        r26.zzE = r13 - 1;
        r26.zzg.zzL(r10);
        r9.zzr(r26.zzg, 4);
        r9.zzr(r26.zzh, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x018d, code lost:
    
        if (r26.zzJ.length <= 0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x018f, code lost:
    
        r10 = r3.zzg;
        r13 = r11[4];
        r16 = com.google.android.gms.internal.ads.zzfk.zza;
        r10 = r10.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x019b, code lost:
    
        if ("video/avc".equals(r10) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x019f, code lost:
    
        if ((r13 & 31) == r4) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x01af, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x01b2, code lost:
    
        r26.zzG = r8;
        r26.zzD += 5;
        r26.zzC += r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x01c1, code lost:
    
        if (r26.zzF != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x01cf, code lost:
    
        if (j$.util.Objects.equals(r2.zzd.zza.zzg.zzo, "video/avc") == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x01d8, code lost:
    
        if (com.google.android.gms.internal.ads.zzfk.zzi(r11[4]) == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x01da, code lost:
    
        r8 = 1;
        r26.zzF = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0265, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x01df, code lost:
    
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x01a5, code lost:
    
        if ("video/hevc".equals(r10) == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x01ad, code lost:
    
        if (((r13 & 126) >> 1) != 39) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x01b1, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x01e9, code lost:
    
        throw com.google.android.gms.internal.ads.zzbc.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x01ec, code lost:
    
        if (r26.zzG == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x01ee, code lost:
    
        r26.zzi.zzI(r13);
        r27.zzi(r26.zzi.zzN(), 0, r26.zzE);
        r9.zzr(r26.zzi, r26.zzE);
        r4 = r26.zzE;
        r10 = r26.zzi;
        r10 = com.google.android.gms.internal.ads.zzfk.zzb(r10.zzN(), r10.zze());
        r26.zzi.zzL("video/hevc".equals(r3.zzg.zzo) ? 1 : 0);
        r26.zzi.zzK(r10);
        r10 = r3.zzg.zzq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x022d, code lost:
    
        if (r10 == (-1)) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0235, code lost:
    
        if (r10 == r26.zzp.zza()) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0237, code lost:
    
        r26.zzp.zzd(r3.zzg.zzq);
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x0240, code lost:
    
        r26.zzp.zzb(r5, r26.zzi);
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x024d, code lost:
    
        if ((r2.zza() & 5) == 0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x024f, code lost:
    
        r26.zzp.zzc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x025a, code lost:
    
        r26.zzD += r4;
        r26.zzE -= r4;
        r4 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x0255, code lost:
    
        r4 = r9.zzf(r27, r13, false);
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzacn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzaco r27, com.google.android.gms.internal.ads.zzadj r28) {
        /*
            Method dump skipped, instructions count: 1884
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiq.zzb(com.google.android.gms.internal.ads.zzaco, com.google.android.gms.internal.ads.zzadj):int");
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ zzacn zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ List zzd() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zze(zzacq zzacqVar) {
        int i;
        if ((this.zzd & 32) == 0) {
            zzacqVar = new zzakg(zzacqVar, this.zzc);
        }
        this.zzH = zzacqVar;
        zzj();
        zzadt[] zzadtVarArr = new zzadt[2];
        this.zzI = zzadtVarArr;
        int i2 = 100;
        int i3 = 0;
        if ((this.zzd & 4) != 0) {
            zzadtVarArr[0] = this.zzH.zzw(100, 5);
            i = 1;
            i2 = FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS;
        } else {
            i = 0;
        }
        zzadt[] zzadtVarArr2 = (zzadt[]) zzei.zzN(this.zzI, i);
        this.zzI = zzadtVarArr2;
        for (zzadt zzadtVar : zzadtVarArr2) {
            zzadtVar.zzm(zzb);
        }
        this.zzJ = new zzadt[this.zze.size()];
        while (i3 < this.zzJ.length) {
            zzadt zzw = this.zzH.zzw(i2, 3);
            zzw.zzm((zzab) this.zze.get(i3));
            this.zzJ[i3] = zzw;
            i3++;
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        int size = this.zzf.size();
        for (int i = 0; i < size; i++) {
            ((zzaip) this.zzf.valueAt(i)).zzi();
        }
        this.zzo.clear();
        this.zzx = 0;
        this.zzp.zzc();
        this.zzy = j2;
        this.zzn.clear();
        zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        zzadq zza2 = zzaja.zza(zzacoVar);
        this.zzq = zza2 != null ? zzfxn.zzo(zza2) : zzfxn.zzn();
        return zza2 == null;
    }

    public zzaiq(zzakd zzakdVar, int i, zzef zzefVar, zzajb zzajbVar, List list, zzadt zzadtVar) {
        this.zzc = zzakdVar;
        this.zzd = i;
        this.zze = DesugarCollections.unmodifiableList(list);
        this.zzl = new zzafl();
        this.zzm = new zzdy(16);
        this.zzg = new zzdy(zzfk.zza);
        this.zzh = new zzdy(5);
        this.zzi = new zzdy();
        byte[] bArr = new byte[16];
        this.zzj = bArr;
        this.zzk = new zzdy(bArr);
        this.zzn = new ArrayDeque();
        this.zzo = new ArrayDeque();
        this.zzf = new SparseArray();
        this.zzq = zzfxn.zzn();
        this.zzz = -9223372036854775807L;
        this.zzy = -9223372036854775807L;
        this.zzA = -9223372036854775807L;
        this.zzH = zzacq.zza;
        this.zzI = new zzadt[0];
        this.zzJ = new zzadt[0];
        this.zzp = new zzfo(new zzfm() { // from class: com.google.android.gms.internal.ads.zzain
            @Override // com.google.android.gms.internal.ads.zzfm
            public final void zza(long j, zzdy zzdyVar) {
                zzaiq.this.zza(j, zzdyVar);
            }
        });
    }
}
