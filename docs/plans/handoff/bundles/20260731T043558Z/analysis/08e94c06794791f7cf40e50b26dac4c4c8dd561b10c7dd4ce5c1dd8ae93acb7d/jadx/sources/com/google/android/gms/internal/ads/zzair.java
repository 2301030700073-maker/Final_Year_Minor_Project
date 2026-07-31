package com.google.android.gms.internal.ads;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzair implements zzada {
    private static final byte[] zza;
    private static final zzv zzb;
    private long zzA;
    private long zzB;
    private zzaiq zzC;
    private int zzD;
    private int zzE;
    private int zzF;
    private boolean zzG;
    private boolean zzH;
    private zzadd zzI;
    private zzaem[] zzJ;
    private zzaem[] zzK;
    private boolean zzL;
    private long zzM;
    private final zzakg zzc;
    private final int zzd;
    private final List zze;
    private final SparseArray zzf;
    private final zzeg zzg;
    private final zzeg zzh;
    private final zzeg zzi;
    private final byte[] zzj;
    private final zzeg zzk;
    private final zzagc zzl;
    private final zzeg zzm;
    private final ArrayDeque zzn;
    private final ArrayDeque zzo;
    private final zzfq zzp;
    private final zzacp zzq;
    private zzgpe zzr;
    private int zzs;
    private int zzt;
    private long zzu;
    private int zzv;
    private zzeg zzw;
    private long zzx;
    private int zzy;
    private long zzz;

    static {
        int i = zzain.zza;
        zza = new byte[]{-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
        zzt zztVar = new zzt();
        zztVar.zzm(MimeTypes.APPLICATION_EMSG);
        zzb = zztVar.zzM();
    }

    @Deprecated
    public zzair() {
        this(zzakg.zza, 32, null, null, zzgpe.zzi(), null);
    }

    private final void zzh() {
        this.zzs = 0;
        this.zzv = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x03ce, code lost:
    
        if ((com.google.android.gms.internal.ads.zzep.zzt(r41, 1000000, r11.zzd, java.math.RoundingMode.DOWN) + com.google.android.gms.internal.ads.zzep.zzt(r0[0], 1000000, r11.zzc, java.math.RoundingMode.DOWN)) < r11.zze) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x07e1, code lost:
    
        zzh();
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x07e4, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:89:0x040d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzi(long r60) throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 2021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzair.zzi(long):void");
    }

    private static int zzj(int i) throws zzat {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 27);
        sb.append("Unexpected negative value: ");
        sb.append(i);
        throw zzat.zzb(sb.toString(), null);
    }

    private static void zzk(zzeg zzegVar, int i, zzajh zzajhVar) throws zzat {
        zzegVar.zzh(i + 8);
        int zzB = zzegVar.zzB();
        int i2 = zzaik.zza;
        if ((zzB & 1) != 0) {
            throw zzat.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (zzB & 2) != 0;
        int zzH = zzegVar.zzH();
        if (zzH == 0) {
            Arrays.fill(zzajhVar.zzl, 0, zzajhVar.zze, false);
            return;
        }
        int i3 = zzajhVar.zze;
        if (zzH != i3) {
            StringBuilder sb = new StringBuilder(String.valueOf(zzH).length() + 58 + String.valueOf(i3).length());
            sb.append("Senc sample count ");
            sb.append(zzH);
            sb.append(" is different from fragment sample count");
            sb.append(i3);
            throw zzat.zzb(sb.toString(), null);
        }
        Arrays.fill(zzajhVar.zzl, 0, zzH, z);
        zzajhVar.zza(zzegVar.zzd());
        zzeg zzegVar2 = zzajhVar.zzn;
        zzegVar.zzm(zzegVar2.zzi(), 0, zzegVar2.zze());
        zzegVar2.zzh(0);
        zzajhVar.zzo = false;
    }

    private static Pair zzl(zzeg zzegVar, long j) throws zzat {
        long zzJ;
        long zzJ2;
        zzegVar.zzh(8);
        int zza2 = zzaik.zza(zzegVar.zzB());
        zzegVar.zzk(4);
        long zzz = zzegVar.zzz();
        if (zza2 == 0) {
            zzJ = zzegVar.zzz();
            zzJ2 = zzegVar.zzz();
        } else {
            zzJ = zzegVar.zzJ();
            zzJ2 = zzegVar.zzJ();
        }
        long j2 = zzJ;
        long j3 = j + zzJ2;
        long zzt = zzep.zzt(j2, 1000000L, zzz, RoundingMode.DOWN);
        zzegVar.zzk(2);
        int zzt2 = zzegVar.zzt();
        int[] iArr = new int[zzt2];
        long[] jArr = new long[zzt2];
        long[] jArr2 = new long[zzt2];
        long[] jArr3 = new long[zzt2];
        long j4 = zzt;
        int i = 0;
        long j5 = j2;
        while (i < zzt2) {
            int zzB = zzegVar.zzB();
            if ((Integer.MIN_VALUE & zzB) != 0) {
                throw zzat.zzb("Unhandled indirect reference", null);
            }
            long zzz2 = zzegVar.zzz();
            iArr[i] = zzB & Integer.MAX_VALUE;
            jArr[i] = j3;
            jArr3[i] = j4;
            long j6 = j5 + zzz2;
            long[] jArr4 = jArr3;
            long[] jArr5 = jArr2;
            int i2 = zzt2;
            long zzt3 = zzep.zzt(j6, 1000000L, zzz, RoundingMode.DOWN);
            jArr5[i] = zzt3 - jArr4[i];
            zzegVar.zzk(4);
            j3 += r1[i];
            i++;
            iArr = iArr;
            jArr2 = jArr5;
            jArr = jArr;
            zzt2 = i2;
            jArr3 = jArr4;
            j5 = j6;
            j4 = zzt3;
        }
        return Pair.create(Long.valueOf(zzt), new zzaco(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzq zzm(java.util.List r18) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzair.zzm(java.util.List):com.google.android.gms.internal.ads.zzq");
    }

    private static final zzail zzn(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (zzail) sparseArray.valueAt(0);
        }
        zzail zzailVar = (zzail) sparseArray.get(i);
        zzailVar.getClass();
        return zzailVar;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        zzaeh zza2 = zzaje.zza(zzadbVar);
        this.zzr = zza2 != null ? zzgpe.zzj(zza2) : zzgpe.zzi();
        return zza2 == null;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final /* synthetic */ List zzb() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        int i;
        int i2 = this.zzd;
        if ((i2 & 32) == 0) {
            zzaddVar = new zzakj(zzaddVar, this.zzc);
        }
        this.zzI = zzaddVar;
        zzh();
        zzaem[] zzaemVarArr = new zzaem[2];
        this.zzJ = zzaemVarArr;
        int i3 = 100;
        int i4 = 0;
        if ((i2 & 4) != 0) {
            zzaemVarArr[0] = this.zzI.zzu(100, 5);
            i = 1;
            i3 = 101;
        } else {
            i = 0;
        }
        zzaem[] zzaemVarArr2 = (zzaem[]) zzep.zzb(this.zzJ, i);
        this.zzJ = zzaemVarArr2;
        for (zzaem zzaemVar : zzaemVarArr2) {
            zzaemVar.zzu(zzb);
        }
        List list = this.zze;
        this.zzK = new zzaem[list.size()];
        while (i4 < this.zzK.length) {
            zzaem zzu = this.zzI.zzu(i3, 3);
            zzu.zzu((zzv) list.get(i4));
            this.zzK[i4] = zzu;
            i4++;
            i3++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:332:0x0094, code lost:
    
        r4 = r27.zzs;
        r10 = androidx.media3.common.MimeTypes.VIDEO_H264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x009c, code lost:
    
        if (r4 != 3) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x009e, code lost:
    
        r27.zzD = r2.zzf();
        r4 = r2.zzd.zza.zzg.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x00b0, code lost:
    
        if (java.util.Objects.equals(r4, androidx.media3.common.MimeTypes.VIDEO_H264) != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x00b2, code lost:
    
        java.util.Objects.equals(r4, androidx.media3.common.MimeTypes.VIDEO_H265);
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x00b5, code lost:
    
        r27.zzG = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x00bb, code lost:
    
        if (r2.zzf >= r2.zzi) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x00bd, code lost:
    
        r28.zzf(r27.zzD);
        r1 = r2.zzj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x00c6, code lost:
    
        if (r1 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x00c9, code lost:
    
        r4 = r2.zzb;
        r6 = r4.zzn;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x00cf, code lost:
    
        if (r1 == 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x00d1, code lost:
    
        r6.zzk(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x00da, code lost:
    
        if (r4.zzb(r2.zzf) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x00dc, code lost:
    
        r6.zzk(r6.zzt() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x00e8, code lost:
    
        if (r2.zzh() != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x00ea, code lost:
    
        r27.zzC = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x00ec, code lost:
    
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0311, code lost:
    
        r27.zzs = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0314, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x00f5, code lost:
    
        if (r2.zzd.zza.zzh != 1) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x00f7, code lost:
    
        r27.zzD -= 8;
        r28.zzf(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x010e, code lost:
    
        if (androidx.media3.common.MimeTypes.AUDIO_AC4.equals(r2.zzd.zza.zzg.zzo) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0110, code lost:
    
        r27.zzE = r2.zzi(r27.zzD, 7);
        r4 = r27.zzD;
        r12 = r27.zzk;
        com.google.android.gms.internal.ads.zzace.zzc(r4, r12);
        r2.zza.zzz(r12, 7);
        r4 = r27.zzE + 7;
        r27.zzE = r4;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0135, code lost:
    
        r27.zzD += r4;
        r27.zzs = 4;
        r27.zzF = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x012c, code lost:
    
        r8 = 0;
        r4 = r2.zzi(r27.zzD, 0);
        r27.zzE = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x013e, code lost:
    
        r4 = r2.zzd.zza;
        r8 = r2.zza;
        r12 = r2.zzd();
        r14 = r4.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x014a, code lost:
    
        if (r14 != 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x014c, code lost:
    
        r4 = r27.zzE;
        r5 = r27.zzD;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0150, code lost:
    
        if (r4 >= r5) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x0152, code lost:
    
        r27.zzE += r8.zzy(r28, r5 - r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x02aa, code lost:
    
        r1 = r2.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x02b0, code lost:
    
        if (r27.zzG != false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x02b2, code lost:
    
        r1 = r1 | androidx.core.view.accessibility.AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x02b5, code lost:
    
        r21 = r1;
        r1 = r2.zzj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x02bb, code lost:
    
        if (r1 == null) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x02bd, code lost:
    
        r24 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x02c4, code lost:
    
        r8.zzx(r12, r21, r27.zzD, 0, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x02d1, code lost:
    
        r1 = r27.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x02d7, code lost:
    
        if (r1.isEmpty() != false) goto L453;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x02d9, code lost:
    
        r1 = (com.google.android.gms.internal.ads.zzaip) r1.removeFirst();
        r3 = r27.zzy;
        r11 = r1.zzc;
        r27.zzy = r3 - r11;
        r3 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x02ea, code lost:
    
        if (r1.zzb == false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x02ec, code lost:
    
        r3 = r3 + r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x02ed, code lost:
    
        r14 = r3;
        r1 = r27.zzJ;
        r3 = r1.length;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x02f2, code lost:
    
        if (r10 >= r3) goto L456;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x02f4, code lost:
    
        r1[r10].zzx(r14, 1, r11, r27.zzy, null);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x030b, code lost:
    
        if (r2.zzh() != false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x030d, code lost:
    
        r27.zzC = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0310, code lost:
    
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x02c2, code lost:
    
        r24 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x015e, code lost:
    
        r3 = r27.zzh;
        r7 = r3.zzi();
        r7[0] = 0;
        r7[1] = 0;
        r7[2] = 0;
        r15 = 4 - r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0173, code lost:
    
        if (r27.zzE >= r27.zzD) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0175, code lost:
    
        r5 = r27.zzF;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0177, code lost:
    
        if (r5 != 0) goto L459;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0233, code lost:
    
        r21 = r10;
        r20 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x023a, code lost:
    
        if (r27.zzH == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x023c, code lost:
    
        r9 = r27.zzi;
        r9.zza(r5);
        r28.zzc(r9.zzi(), 0, r27.zzF);
        r8.zzz(r9, r27.zzF);
        r5 = r27.zzF;
        r10 = com.google.android.gms.internal.ads.zzfm.zza(r9.zzi(), r9.zze());
        r9.zzh(0);
        r9.zzf(r10);
        r10 = r4.zzg.zzq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0269, code lost:
    
        if (r10 != (-1)) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x026b, code lost:
    
        r10 = r27.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0271, code lost:
    
        if (r10.zzb() == 0) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x0273, code lost:
    
        r10.zza(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x0282, code lost:
    
        r10 = r27.zzp;
        r10.zzc(r12, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x028d, code lost:
    
        if ((r2.zzg() & 4) == 0) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x028f, code lost:
    
        r10.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x0299, code lost:
    
        r27.zzE += r5;
        r27.zzF -= r5;
        r14 = r20;
        r10 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0277, code lost:
    
        r11 = r27.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x027d, code lost:
    
        if (r11.zzb() == r10) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x027f, code lost:
    
        r11.zza(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x0293, code lost:
    
        r5 = r8.zzy(r28, r5, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x017c, code lost:
    
        if (r27.zzK.length > 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x0180, code lost:
    
        if (r27.zzG != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0193, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0197, code lost:
    
        r28.zzc(r7, r15, r14 + r5);
        r3.zzh(0);
        r11 = r3.zzB();
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x01a4, code lost:
    
        if (r11 < 0) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x01a6, code lost:
    
        r27.zzF = r11 - r5;
        r11 = r27.zzg;
        r11.zzh(0);
        r8.zzz(r11, 4);
        r27.zzE += 4;
        r27.zzD += r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x01bf, code lost:
    
        if (r27.zzK.length <= 0) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x01c1, code lost:
    
        if (r5 <= 0) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x01c3, code lost:
    
        r11 = r4.zzg;
        r19 = r7[4];
        r9 = com.google.android.gms.internal.ads.zzfm.zza;
        r9 = r11.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x01cf, code lost:
    
        if (java.util.Objects.equals(r9, r10) != false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x01d1, code lost:
    
        r20 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x01d9, code lost:
    
        if (com.google.android.gms.internal.ads.zzas.zze(r11.zzk, r10) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x01dc, code lost:
    
        r21 = r10;
        r10 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x01ed, code lost:
    
        if (java.util.Objects.equals(r9, androidx.media3.common.MimeTypes.VIDEO_H265) != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x01f5, code lost:
    
        if (com.google.android.gms.internal.ads.zzas.zze(r11.zzk, androidx.media3.common.MimeTypes.VIDEO_H265) == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x0206, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x0207, code lost:
    
        r27.zzH = r9;
        r8.zzz(r3, r5);
        r27.zzE += r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x0211, code lost:
    
        if (r5 <= 0) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0215, code lost:
    
        if (r27.zzG != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x021e, code lost:
    
        if (com.google.android.gms.internal.ads.zzfm.zzc(r7, 4, r5, r4.zzg) == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x0220, code lost:
    
        r27.zzG = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x0223, code lost:
    
        r14 = r20;
        r10 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x01fd, code lost:
    
        if (((r19 & 126) >> 1) != 39) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x01ff, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x01e2, code lost:
    
        r21 = r10;
        r10 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x01e7, code lost:
    
        if ((r19 & com.google.common.base.Ascii.US) == 6) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x01e0, code lost:
    
        r20 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x0201, code lost:
    
        r21 = r10;
        r20 = r14;
        r10 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x0232, code lost:
    
        throw com.google.android.gms.internal.ads.zzat.zzb("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x0182, code lost:
    
        r5 = com.google.android.gms.internal.ads.zzfm.zzb(r4.zzg);
     */
    /* JADX WARN: Code restructure failed: missing block: B:455:0x0191, code lost:
    
        if ((r14 + r5) <= (r27.zzD - r27.zzE)) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0195, code lost:
    
        r5 = r5;
     */
    @Override // com.google.android.gms.internal.ads.zzada
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzd(com.google.android.gms.internal.ads.zzadb r28, com.google.android.gms.internal.ads.zzaea r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2002
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzair.zzd(com.google.android.gms.internal.ads.zzadb, com.google.android.gms.internal.ads.zzaea):int");
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        SparseArray sparseArray = this.zzf;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            ((zzaiq) sparseArray.valueAt(i)).zzc();
        }
        this.zzo.clear();
        this.zzy = 0;
        this.zzp.zzd();
        this.zzz = j2;
        this.zzn.clear();
        zzh();
    }

    final /* synthetic */ void zzg(long j, zzeg zzegVar) {
        zzacn.zza(j, zzegVar, this.zzK);
    }

    public zzair(zzakg zzakgVar, int i, zzem zzemVar, zzajf zzajfVar, List list, zzaem zzaemVar) {
        this.zzc = zzakgVar;
        this.zzd = i;
        this.zze = Collections.unmodifiableList(list);
        this.zzl = new zzagc();
        this.zzm = new zzeg(16);
        this.zzg = new zzeg(zzfm.zza);
        this.zzh = new zzeg(6);
        this.zzi = new zzeg();
        byte[] bArr = new byte[16];
        this.zzj = bArr;
        this.zzk = new zzeg(bArr);
        this.zzn = new ArrayDeque();
        this.zzo = new ArrayDeque();
        this.zzf = new SparseArray();
        this.zzr = zzgpe.zzi();
        this.zzA = C.TIME_UNSET;
        this.zzz = C.TIME_UNSET;
        this.zzB = C.TIME_UNSET;
        this.zzI = zzadd.zza;
        this.zzJ = new zzaem[0];
        this.zzK = new zzaem[0];
        this.zzp = new zzfq(new zzfp() { // from class: com.google.android.gms.internal.ads.zzaio
            @Override // com.google.android.gms.internal.ads.zzfp
            public final /* synthetic */ void zza(long j, zzeg zzegVar) {
                zzair.this.zzg(j, zzegVar);
            }
        });
        this.zzq = new zzacp();
        this.zzM = -1L;
    }
}
