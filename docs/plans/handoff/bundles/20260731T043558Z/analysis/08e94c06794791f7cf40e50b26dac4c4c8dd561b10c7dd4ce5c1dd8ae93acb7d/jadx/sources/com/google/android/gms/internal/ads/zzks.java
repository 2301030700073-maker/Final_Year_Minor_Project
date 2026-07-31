package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzks {
    private final zzmi zzc;
    private final zzdm zzd;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zzil zzh;
    private zzkp zzi;
    private zzkp zzj;
    private zzkp zzk;
    private zzkp zzl;
    private zzkp zzm;
    private int zzn;
    private Object zzo;
    private long zzp;
    private final zzka zzr;
    private final zzbd zza = new zzbd();
    private final zzbe zzb = new zzbe();
    private List zzq = new ArrayList();

    public zzks(zzmi zzmiVar, zzdm zzdmVar, zzka zzkaVar, zzil zzilVar) {
        this.zzc = zzmiVar;
        this.zzd = zzdmVar;
        this.zzr = zzkaVar;
        this.zzh = zzilVar;
    }

    private static zzuu zzA(zzbf zzbfVar, Object obj, long j, long j2, zzbe zzbeVar, zzbd zzbdVar) {
        zzbfVar.zzo(obj, zzbdVar);
        zzbfVar.zzb(zzbdVar.zzc, zzbeVar, 0L);
        zzbfVar.zze(obj);
        zzbdVar.zzb();
        zzbfVar.zzo(obj, zzbdVar);
        int zze = zzbdVar.zze(j);
        return zze == -1 ? new zzuu(obj, j2, zzbdVar.zzf(j)) : new zzuu(obj, zze, zzbdVar.zzd(zze), j2);
    }

    private final void zzB() {
        int i = zzgpe.zzd;
        final zzgpb zzgpbVar = new zzgpb();
        for (zzkp zzkpVar = this.zzi; zzkpVar != null; zzkpVar = zzkpVar.zzp()) {
            zzgpbVar.zzf(zzkpVar.zzg.zza);
        }
        zzkp zzkpVar2 = this.zzj;
        final zzuu zzuuVar = zzkpVar2 == null ? null : zzkpVar2.zzg.zza;
        this.zzd.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkr
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzks.this.zzz(zzgpbVar, zzuuVar);
            }
        });
    }

    private final long zzC(Object obj) {
        for (int i = 0; i < this.zzq.size(); i++) {
            zzkp zzkpVar = (zzkp) this.zzq.get(i);
            if (zzkpVar.zzb.equals(obj)) {
                return zzkpVar.zzg.zza.zzd;
            }
        }
        return -1L;
    }

    private final int zzD(zzbf zzbfVar) {
        zzkp zzkpVar = this.zzi;
        if (zzkpVar == null) {
            return 0;
        }
        int zze = zzbfVar.zze(zzkpVar.zzb);
        while (true) {
            zze = zzbfVar.zzl(zze, this.zza, this.zzb, this.zzf, this.zzg);
            while (true) {
                zzkpVar.getClass();
                if (zzkpVar.zzp() == null || zzkpVar.zzg.zzh) {
                    break;
                }
                zzkpVar = zzkpVar.zzp();
            }
            zzkp zzp = zzkpVar.zzp();
            if (zze == -1 || zzp == null || zzbfVar.zze(zzp.zzb) != zze) {
                break;
            }
            zzkpVar = zzp;
        }
        int zzs = zzs(zzkpVar);
        zzkpVar.zzg = zzx(zzbfVar, zzkpVar.zzg);
        return zzs;
    }

    private final zzkq zzE(zzbf zzbfVar, zzkp zzkpVar, long j) {
        Object obj;
        int i;
        long j2;
        long j3;
        long j4;
        zzkq zzkqVar = zzkpVar.zzg;
        long zza = zzkpVar.zza();
        long j5 = zzkqVar.zze;
        long j6 = (zza + j5) - j;
        if (zzkqVar.zzh) {
            zzuu zzuuVar = zzkqVar.zza;
            Object obj2 = zzuuVar.zza;
            int zze = zzbfVar.zze(obj2);
            int i2 = this.zzf;
            boolean z = this.zzg;
            zzbe zzbeVar = this.zzb;
            zzbd zzbdVar = this.zza;
            int zzl = zzbfVar.zzl(zze, zzbdVar, zzbeVar, i2, z);
            if (zzl != -1) {
                int i3 = zzbfVar.zzd(zzl, zzbdVar, true).zzc;
                Object obj3 = zzbdVar.zzb;
                obj3.getClass();
                long j7 = zzuuVar.zzd;
                if (zzbfVar.zzb(i3, zzbeVar, 0L).zzn == zzl) {
                    Pair zzn = zzbfVar.zzn(zzbeVar, zzbdVar, i3, C.TIME_UNSET, Math.max(0L, j6));
                    if (zzn != null) {
                        obj3 = zzn.first;
                        long longValue = ((Long) zzn.second).longValue();
                        zzkp zzp = zzkpVar.zzp();
                        if (zzp == null || !zzp.zzb.equals(obj3)) {
                            j7 = zzC(obj3);
                            if (j7 == -1) {
                                j7 = this.zze;
                                this.zze = 1 + j7;
                            }
                        } else {
                            j7 = zzp.zzg.zza.zzd;
                        }
                        j4 = longValue;
                        j3 = C.TIME_UNSET;
                    }
                } else {
                    j3 = 0;
                    j4 = 0;
                }
                zzuu zzA = zzA(zzbfVar, obj3, j4, j7, zzbeVar, zzbdVar);
                if (j3 != C.TIME_UNSET && zzkqVar.zzc != C.TIME_UNSET) {
                    zzbfVar.zzo(obj2, zzbdVar).zzb();
                    int i4 = zzbdVar.zzg.zzd;
                }
                return zzF(zzbfVar, zzA, j3, j4);
            }
        } else {
            zzuu zzuuVar2 = zzkqVar.zza;
            Object obj4 = zzuuVar2.zza;
            zzbd zzbdVar2 = this.zza;
            zzbfVar.zzo(obj4, zzbdVar2);
            boolean z2 = zzkqVar.zzg;
            if (!zzuuVar2.zzb()) {
                int i5 = zzuuVar2.zze;
                if (i5 != -1) {
                    zzbdVar2.zzi(i5);
                }
                int zzd = zzbdVar2.zzd(i5);
                zzbdVar2.zzk(i5);
                if (zzd != zzbdVar2.zzg(i5)) {
                    return zzG(zzbfVar, obj4, i5, zzd, j5, zzuuVar2.zzd, false);
                }
                zzK(zzbfVar, obj4, i5);
                return zzH(zzbfVar, obj4, 0L, j5, zzuuVar2.zzd, false);
            }
            int i6 = zzuuVar2.zzb;
            if (zzbdVar2.zzg(i6) != -1) {
                int zza2 = zzbdVar2.zzg.zza(i6).zza(zzuuVar2.zzc);
                if (zza2 < 0) {
                    return zzG(zzbfVar, obj4, i6, zza2, zzkqVar.zzc, zzuuVar2.zzd, false);
                }
                long j8 = zzkqVar.zzc;
                if (j8 == C.TIME_UNSET) {
                    obj = obj4;
                    i = i6;
                    Pair zzn2 = zzbfVar.zzn(this.zzb, zzbdVar2, zzbdVar2.zzc, C.TIME_UNSET, Math.max(0L, j6));
                    if (zzn2 != null) {
                        j8 = ((Long) zzn2.second).longValue();
                        j2 = -9223372036854775807L;
                    }
                } else {
                    obj = obj4;
                    i = i6;
                    j2 = j8;
                }
                zzK(zzbfVar, obj, i);
                return zzH(zzbfVar, obj, Math.max(0L, j8), j2, zzuuVar2.zzd, false);
            }
        }
        return null;
    }

    private final zzkq zzF(zzbf zzbfVar, zzuu zzuuVar, long j, long j2) {
        Object obj = zzuuVar.zza;
        zzbfVar.zzo(obj, this.zza);
        return zzuuVar.zzb() ? zzG(zzbfVar, obj, zzuuVar.zzb, zzuuVar.zzc, j, zzuuVar.zzd, false) : zzH(zzbfVar, obj, j2, j, zzuuVar.zzd, false);
    }

    private final zzkq zzG(zzbf zzbfVar, Object obj, int i, int i2, long j, long j2, boolean z) {
        zzuu zzuuVar = new zzuu(obj, i, i2, j2);
        Object obj2 = zzuuVar.zza;
        int i3 = zzuuVar.zzb;
        int i4 = zzuuVar.zzc;
        zzbd zzbdVar = this.zza;
        long zzh = zzbfVar.zzo(obj2, zzbdVar).zzh(i3, i4);
        if (i2 == zzbdVar.zzd(i)) {
            zzbdVar.zzj();
        }
        zzbdVar.zzk(i3);
        return new zzkq(zzuuVar, (zzh == C.TIME_UNSET || zzh > 0) ? 0L : Math.max(0L, (-1) + zzh), j, C.TIME_UNSET, zzh, false, false, false, false, false);
    }

    private final zzkq zzH(zzbf zzbfVar, Object obj, long j, long j2, long j3, boolean z) {
        long j4;
        long j5;
        long j6;
        long j7 = j;
        zzbd zzbdVar = this.zza;
        zzbfVar.zzo(obj, zzbdVar);
        int zzf = zzbdVar.zzf(j7);
        if (zzf == -1) {
            zzbdVar.zzb();
        } else {
            zzbdVar.zzk(zzf);
        }
        zzuu zzuuVar = new zzuu(obj, j3, zzf);
        boolean zzL = zzL(zzuuVar);
        boolean zzI = zzI(zzbfVar, zzuuVar);
        boolean zzJ = zzJ(zzbfVar, zzuuVar, zzL);
        if (zzf != -1) {
            zzbdVar.zzk(zzf);
        }
        if (zzf != -1) {
            zzbdVar.zzi(zzf);
        }
        if (zzf != -1) {
            zzbdVar.zzc(zzf);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != C.TIME_UNSET) {
            j6 = j4;
            j5 = j6;
        } else {
            j5 = zzbdVar.zzd;
            j6 = -9223372036854775807L;
        }
        if (j5 != C.TIME_UNSET && j7 >= j5) {
            j7 = Math.max(0L, j5 - 1);
        }
        return new zzkq(zzuuVar, j7, j2, j6, j5, false, false, zzL, zzI, zzJ);
    }

    private final boolean zzI(zzbf zzbfVar, zzuu zzuuVar) {
        if (!zzL(zzuuVar)) {
            return false;
        }
        Object obj = zzuuVar.zza;
        return zzbfVar.zzb(zzbfVar.zzo(obj, this.zza).zzc, this.zzb, 0L).zzo == zzbfVar.zze(obj);
    }

    private final boolean zzJ(zzbf zzbfVar, zzuu zzuuVar, boolean z) {
        int zze = zzbfVar.zze(zzuuVar.zza);
        zzbd zzbdVar = this.zza;
        int i = zzbfVar.zzd(zze, zzbdVar, false).zzc;
        zzbe zzbeVar = this.zzb;
        return !zzbfVar.zzb(i, zzbeVar, 0L).zzi && zzbfVar.zzl(zze, zzbdVar, zzbeVar, this.zzf, this.zzg) == -1 && z;
    }

    private final long zzK(zzbf zzbfVar, Object obj, int i) {
        zzbd zzbdVar = this.zza;
        zzbfVar.zzo(obj, zzbdVar);
        zzbdVar.zzc(i);
        long j = zzbdVar.zzg.zza(i).zzi;
        return 0L;
    }

    private static final boolean zzL(zzuu zzuuVar) {
        return !zzuuVar.zzb() && zzuuVar.zze == -1;
    }

    public final int zza(zzbf zzbfVar, int i) {
        this.zzf = i;
        return zzD(zzbfVar);
    }

    public final int zzb(zzbf zzbfVar, boolean z) {
        this.zzg = z;
        return zzD(zzbfVar);
    }

    public final void zzc(zzbf zzbfVar, zzil zzilVar) {
        this.zzh = zzilVar;
        long j = zzilVar.zzb;
        zzj();
    }

    public final boolean zzd(zzus zzusVar) {
        zzkp zzkpVar = this.zzl;
        return zzkpVar != null && zzkpVar.zza == zzusVar;
    }

    public final boolean zze(zzus zzusVar) {
        zzkp zzkpVar = this.zzm;
        return zzkpVar != null && zzkpVar.zza == zzusVar;
    }

    public final void zzf(long j) {
        zzkp zzkpVar = this.zzl;
        if (zzkpVar != null) {
            zzkpVar.zzi(j);
        }
    }

    public final boolean zzg() {
        zzkp zzkpVar = this.zzl;
        if (zzkpVar == null) {
            return true;
        }
        if (zzkpVar.zzg.zzj || !zzkpVar.zzd() || this.zzl.zzg.zze == C.TIME_UNSET) {
            return false;
        }
        return this.zzn < 100;
    }

    public final zzkq zzh(long j, zzlf zzlfVar) {
        zzkp zzkpVar = this.zzl;
        return zzkpVar == null ? zzF(zzlfVar.zza, zzlfVar.zzb, zzlfVar.zzc, zzlfVar.zzs) : zzE(zzlfVar.zza, zzkpVar, j);
    }

    public final void zzj() {
        if (this.zzq.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.zzq.size(); i++) {
            ((zzkp) this.zzq.get(i)).zzn();
        }
        this.zzq = arrayList;
        this.zzm = null;
        zzt();
    }

    public final zzkp zzk() {
        return this.zzl;
    }

    public final zzkp zzl() {
        return this.zzm;
    }

    public final zzkp zzm() {
        return this.zzi;
    }

    public final zzkp zzn() {
        return this.zzj;
    }

    public final zzkp zzo() {
        return this.zzk;
    }

    public final zzkp zzp() {
        zzkp zzkpVar = this.zzk;
        zzkp zzkpVar2 = this.zzj;
        if (zzkpVar == zzkpVar2) {
            zzkpVar2.getClass();
            this.zzk = zzkpVar2.zzp();
        }
        zzkpVar2.getClass();
        this.zzj = zzkpVar2.zzp();
        zzB();
        zzkp zzkpVar3 = this.zzj;
        zzkpVar3.getClass();
        return zzkpVar3;
    }

    public final zzkp zzq() {
        zzkp zzkpVar = this.zzk;
        zzkpVar.getClass();
        this.zzk = zzkpVar.zzp();
        zzB();
        zzkp zzkpVar2 = this.zzk;
        zzkpVar2.getClass();
        return zzkpVar2;
    }

    public final zzkp zzr() {
        zzkp zzkpVar = this.zzi;
        if (zzkpVar == null) {
            return null;
        }
        if (zzkpVar == this.zzj) {
            this.zzj = zzkpVar.zzp();
        }
        if (zzkpVar == this.zzk) {
            this.zzk = zzkpVar.zzp();
        }
        zzkpVar.zzn();
        int i = this.zzn - 1;
        this.zzn = i;
        if (i == 0) {
            this.zzl = null;
            zzkp zzkpVar2 = this.zzi;
            this.zzo = zzkpVar2.zzb;
            this.zzp = zzkpVar2.zzg.zza.zzd;
        }
        this.zzi = this.zzi.zzp();
        zzB();
        return this.zzi;
    }

    public final void zzt() {
        zzkp zzkpVar = this.zzm;
        if (zzkpVar == null || zzkpVar.zze()) {
            this.zzm = null;
            for (int i = 0; i < this.zzq.size(); i++) {
                zzkp zzkpVar2 = (zzkp) this.zzq.get(i);
                if (!zzkpVar2.zze()) {
                    this.zzm = zzkpVar2;
                    return;
                }
            }
        }
    }

    public final zzkp zzu(zzus zzusVar) {
        for (int i = 0; i < this.zzq.size(); i++) {
            zzkp zzkpVar = (zzkp) this.zzq.get(i);
            if (zzkpVar.zza == zzusVar) {
                return zzkpVar;
            }
        }
        return null;
    }

    public final void zzv() {
        if (this.zzn == 0) {
            return;
        }
        zzkp zzkpVar = this.zzi;
        zzkpVar.getClass();
        this.zzo = zzkpVar.zzb;
        this.zzp = zzkpVar.zzg.zza.zzd;
        while (zzkpVar != null) {
            zzkpVar.zzn();
            zzkpVar = zzkpVar.zzp();
        }
        this.zzi = null;
        this.zzl = null;
        this.zzj = null;
        this.zzk = null;
        this.zzn = 0;
        zzB();
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a5, code lost:
    
        return zzs(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzw(com.google.android.gms.internal.ads.zzbf r17, long r18, long r20, long r22) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            com.google.android.gms.internal.ads.zzkp r2 = r0.zzi
            r3 = 0
        L7:
            r4 = 0
            if (r2 == 0) goto La6
            com.google.android.gms.internal.ads.zzkq r5 = r2.zzg
            if (r3 != 0) goto L15
            com.google.android.gms.internal.ads.zzkq r3 = r0.zzx(r1, r5)
            r6 = r18
            goto L30
        L15:
            r6 = r18
            com.google.android.gms.internal.ads.zzkq r8 = r0.zzE(r1, r3, r6)
            if (r8 == 0) goto La1
            long r9 = r5.zzb
            long r11 = r8.zzb
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto La1
            com.google.android.gms.internal.ads.zzuu r9 = r5.zza
            com.google.android.gms.internal.ads.zzuu r10 = r8.zza
            boolean r9 = r9.equals(r10)
            if (r9 == 0) goto La1
            r3 = r8
        L30:
            long r8 = r5.zzc
            com.google.android.gms.internal.ads.zzkq r8 = r3.zzb(r8)
            r2.zzg = r8
            long r8 = r5.zze
            long r10 = r3.zze
            int r3 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r3 == 0) goto L98
            r2.zzs()
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r1 != 0) goto L52
            r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L57
        L52:
            long r12 = r2.zza()
            long r10 = r10 + r12
        L57:
            com.google.android.gms.internal.ads.zzkp r1 = r0.zzj
            r12 = -9223372036854775808
            r3 = 1
            if (r2 != r1) goto L6c
            com.google.android.gms.internal.ads.zzkq r1 = r2.zzg
            boolean r1 = r1.zzg
            int r1 = (r20 > r12 ? 1 : (r20 == r12 ? 0 : -1))
            if (r1 == 0) goto L6a
            int r1 = (r20 > r10 ? 1 : (r20 == r10 ? 0 : -1))
            if (r1 < 0) goto L6c
        L6a:
            r1 = r3
            goto L6d
        L6c:
            r1 = r4
        L6d:
            com.google.android.gms.internal.ads.zzkp r14 = r0.zzk
            if (r2 != r14) goto L7b
            int r12 = (r22 > r12 ? 1 : (r22 == r12 ? 0 : -1))
            if (r12 == 0) goto L79
            int r10 = (r22 > r10 ? 1 : (r22 == r10 ? 0 : -1))
            if (r10 < 0) goto L7b
        L79:
            r10 = r3
            goto L7c
        L7b:
            r10 = r4
        L7c:
            int r2 = r0.zzs(r2)
            if (r2 == 0) goto L83
            return r2
        L83:
            int r2 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r2 != 0) goto L8a
            long r8 = r5.zzd
            r8 = r6
        L8a:
            if (r1 == 0) goto L92
            int r1 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r1 != 0) goto L91
            goto L92
        L91:
            r4 = r3
        L92:
            if (r10 == 0) goto L97
            r1 = r4 | 2
            return r1
        L97:
            return r4
        L98:
            com.google.android.gms.internal.ads.zzkp r3 = r2.zzp()
            r15 = r3
            r3 = r2
            r2 = r15
            goto L7
        La1:
            int r1 = r0.zzs(r3)
            return r1
        La6:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzks.zzw(com.google.android.gms.internal.ads.zzbf, long, long, long):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzkq zzx(com.google.android.gms.internal.ads.zzbf r22, com.google.android.gms.internal.ads.zzkq r23) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            r2 = r23
            com.google.android.gms.internal.ads.zzuu r3 = r2.zza
            boolean r13 = zzL(r3)
            boolean r14 = r0.zzI(r1, r3)
            boolean r15 = r0.zzJ(r1, r3, r13)
            java.lang.Object r4 = r3.zza
            com.google.android.gms.internal.ads.zzbd r5 = r0.zza
            r1.zzo(r4, r5)
            boolean r1 = r3.zzb()
            r4 = -1
            r6 = 0
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L33
            int r1 = r3.zze
            if (r1 != r4) goto L2e
            goto L33
        L2e:
            r5.zzc(r1)
            r10 = r6
            goto L34
        L33:
            r10 = r8
        L34:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L48
            int r1 = r3.zzb
            int r6 = r3.zzc
            long r6 = r5.zzh(r1, r6)
        L42:
            r19 = r6
            r7 = r10
            r9 = r19
            goto L52
        L48:
            int r1 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r1 == 0) goto L4f
            r9 = r6
            r7 = r9
            goto L52
        L4f:
            long r6 = r5.zzd
            goto L42
        L52:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L5e
            int r1 = r3.zzb
            r5.zzk(r1)
            goto L65
        L5e:
            int r1 = r3.zze
            if (r1 == r4) goto L65
            r5.zzk(r1)
        L65:
            com.google.android.gms.internal.ads.zzkq r16 = new com.google.android.gms.internal.ads.zzkq
            long r4 = r2.zzb
            long r11 = r2.zzc
            boolean r1 = r2.zzf
            r17 = 0
            r18 = 0
            r1 = r16
            r2 = r3
            r3 = r4
            r5 = r11
            r11 = r17
            r12 = r18
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14, r15)
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzks.zzx(com.google.android.gms.internal.ads.zzbf, com.google.android.gms.internal.ads.zzkq):com.google.android.gms.internal.ads.zzkq");
    }

    public final zzuu zzy(zzbf zzbfVar, Object obj, long j) {
        long zzC;
        int zze;
        zzbd zzbdVar = this.zza;
        int i = zzbfVar.zzo(obj, zzbdVar).zzc;
        Object obj2 = this.zzo;
        if (obj2 == null || (zze = zzbfVar.zze(obj2)) == -1 || zzbfVar.zzd(zze, zzbdVar, false).zzc != i) {
            zzkp zzkpVar = this.zzi;
            while (true) {
                if (zzkpVar == null) {
                    zzkp zzkpVar2 = this.zzi;
                    while (true) {
                        if (zzkpVar2 != null) {
                            int zze2 = zzbfVar.zze(zzkpVar2.zzb);
                            if (zze2 != -1 && zzbfVar.zzd(zze2, zzbdVar, false).zzc == i) {
                                zzC = zzkpVar2.zzg.zza.zzd;
                                break;
                            }
                            zzkpVar2 = zzkpVar2.zzp();
                        } else {
                            zzC = zzC(obj);
                            if (zzC == -1) {
                                zzC = this.zze;
                                this.zze = 1 + zzC;
                                if (this.zzi == null) {
                                    this.zzo = obj;
                                    this.zzp = zzC;
                                }
                            }
                        }
                    }
                } else {
                    if (zzkpVar.zzb.equals(obj)) {
                        zzC = zzkpVar.zzg.zza.zzd;
                        break;
                    }
                    zzkpVar = zzkpVar.zzp();
                }
            }
        } else {
            zzC = this.zzp;
        }
        long j2 = zzC;
        zzbfVar.zzo(obj, zzbdVar);
        int i2 = zzbdVar.zzc;
        zzbe zzbeVar = this.zzb;
        zzbfVar.zzb(i2, zzbeVar, 0L);
        Object obj3 = obj;
        for (int zze3 = zzbfVar.zze(obj); zze3 >= zzbeVar.zzn; zze3--) {
            zzbfVar.zzd(zze3, zzbdVar, true);
            zzbdVar.zzb();
            if (zzbdVar.zze(zzbdVar.zzd) != -1) {
                Object obj4 = zzbdVar.zzb;
                obj4.getClass();
                obj3 = obj4;
            }
        }
        return zzA(zzbfVar, obj3, j, j2, zzbeVar, zzbdVar);
    }

    final /* synthetic */ void zzz(zzgpb zzgpbVar, zzuu zzuuVar) {
        this.zzc.zzz(zzgpbVar.zzi(), zzuuVar);
    }

    public final zzkp zzi(zzkq zzkqVar) {
        zzkp zzkpVar;
        zzkp zzkpVar2 = this.zzl;
        long zza = zzkpVar2 == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : (zzkpVar2.zza() + zzkpVar2.zzg.zze) - zzkqVar.zzb;
        int i = 0;
        while (true) {
            if (i >= this.zzq.size()) {
                zzkpVar = null;
                break;
            }
            zzkq zzkqVar2 = ((zzkp) this.zzq.get(i)).zzg;
            long j = zzkqVar2.zze;
            long j2 = zzkqVar.zze;
            if ((j == C.TIME_UNSET || j == j2) && zzkqVar2.zzb == zzkqVar.zzb && zzkqVar2.zza.equals(zzkqVar.zza)) {
                zzkpVar = (zzkp) this.zzq.remove(i);
                break;
            }
            i++;
        }
        if (zzkpVar == null) {
            zzkpVar = this.zzr.zza(zzkqVar, zza);
        } else {
            zzkpVar.zzg = zzkqVar;
            zzkpVar.zzb(zza);
        }
        zzkp zzkpVar3 = this.zzl;
        if (zzkpVar3 != null) {
            zzkpVar3.zzo(zzkpVar);
        } else {
            this.zzi = zzkpVar;
            this.zzj = zzkpVar;
            this.zzk = zzkpVar;
        }
        this.zzo = null;
        this.zzl = zzkpVar;
        this.zzn++;
        zzB();
        return zzkpVar;
    }

    public final int zzs(zzkp zzkpVar) {
        zzkpVar.getClass();
        int i = 0;
        if (zzkpVar.equals(this.zzl)) {
            return 0;
        }
        this.zzl = zzkpVar;
        while (zzkpVar.zzp() != null) {
            zzkpVar = zzkpVar.zzp();
            zzkpVar.getClass();
            if (zzkpVar == this.zzj) {
                zzkp zzkpVar2 = this.zzi;
                this.zzj = zzkpVar2;
                this.zzk = zzkpVar2;
                i = 3;
            }
            if (zzkpVar == this.zzk) {
                this.zzk = this.zzj;
                i |= 2;
            }
            zzkpVar.zzn();
            this.zzn--;
        }
        zzkp zzkpVar3 = this.zzl;
        zzkpVar3.getClass();
        zzkpVar3.zzo(null);
        zzB();
        return i;
    }
}
