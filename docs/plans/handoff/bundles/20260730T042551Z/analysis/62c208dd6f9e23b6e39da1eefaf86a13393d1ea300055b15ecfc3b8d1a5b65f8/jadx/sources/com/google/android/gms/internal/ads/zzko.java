package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class zzko {
    private final zzlt zzc;
    private final zzdh zzd;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zzil zzh;
    private zzkl zzi;
    private zzkl zzj;
    private zzkl zzk;
    private zzkl zzl;
    private int zzm;
    private Object zzn;
    private long zzo;
    private final zzjs zzq;
    private final zzbo zza = new zzbo();
    private final zzbp zzb = new zzbp();
    private List zzp = new ArrayList();

    public zzko(zzlt zzltVar, zzdh zzdhVar, zzjs zzjsVar, zzil zzilVar) {
        this.zzc = zzltVar;
        this.zzd = zzdhVar;
        this.zzq = zzjsVar;
        this.zzh = zzilVar;
    }

    private final long zzA(Object obj) {
        for (int i = 0; i < this.zzp.size(); i++) {
            zzkl zzklVar = (zzkl) this.zzp.get(i);
            if (zzklVar.zzb.equals(obj)) {
                return zzklVar.zzg.zza.zzd;
            }
        }
        return -1L;
    }

    private final zzkm zzB(zzbq zzbqVar, zzkl zzklVar, long j) {
        long j2;
        zzkm zzkmVar = zzklVar.zzg;
        long zze = (zzklVar.zze() + zzkmVar.zze) - j;
        if (zzkmVar.zzg) {
            long j3 = 0;
            int zzi = zzbqVar.zzi(zzbqVar.zza(zzkmVar.zza.zza), this.zza, this.zzb, this.zzf, this.zzg);
            if (zzi != -1) {
                int i = zzbqVar.zzd(zzi, this.zza, true).zzc;
                Object obj = this.zza.zzb;
                obj.getClass();
                long j4 = zzkmVar.zza.zzd;
                if (zzbqVar.zze(i, this.zzb, 0L).zzn == zzi) {
                    Pair zzm = zzbqVar.zzm(this.zzb, this.zza, i, -9223372036854775807L, Math.max(0L, zze));
                    if (zzm != null) {
                        obj = zzm.first;
                        long longValue = ((Long) zzm.second).longValue();
                        zzkl zzg = zzklVar.zzg();
                        if (zzg == null || !zzg.zzb.equals(obj)) {
                            j4 = zzA(obj);
                            if (j4 == -1) {
                                j4 = this.zze;
                                this.zze = 1 + j4;
                            }
                        } else {
                            j4 = zzg.zzg.zza.zzd;
                        }
                        j2 = longValue;
                        j3 = -9223372036854775807L;
                    }
                } else {
                    j2 = 0;
                }
                zzug zzF = zzF(zzbqVar, obj, j2, j4, this.zzb, this.zza);
                if (j3 != -9223372036854775807L && zzkmVar.zzc != -9223372036854775807L) {
                    zzbqVar.zzn(zzkmVar.zza.zza, this.zza).zzb();
                    int i2 = this.zza.zzg.zzd;
                }
                return zzC(zzbqVar, zzF, j3, j2);
            }
        } else {
            zzug zzugVar = zzkmVar.zza;
            zzbqVar.zzn(zzugVar.zza, this.zza);
            if (!zzugVar.zzb()) {
                int i3 = zzugVar.zze;
                if (i3 != -1) {
                    this.zza.zzj(i3);
                }
                zzbo zzboVar = this.zza;
                int i4 = zzugVar.zze;
                int zze2 = zzboVar.zze(i4);
                zzboVar.zzk(i4);
                if (zze2 != this.zza.zza(zzugVar.zze)) {
                    return zzD(zzbqVar, zzugVar.zza, zzugVar.zze, zze2, zzkmVar.zze, zzugVar.zzd);
                }
                zzz(zzbqVar, zzugVar.zza, zzugVar.zze);
                return zzE(zzbqVar, zzugVar.zza, 0L, zzkmVar.zze, zzugVar.zzd);
            }
            int i5 = zzugVar.zzb;
            if (this.zza.zza(i5) != -1) {
                int zza = this.zza.zzg.zza(i5).zza(zzugVar.zzc);
                if (zza < 0) {
                    return zzD(zzbqVar, zzugVar.zza, i5, zza, zzkmVar.zzc, zzugVar.zzd);
                }
                long j5 = zzkmVar.zzc;
                if (j5 == -9223372036854775807L) {
                    zzbp zzbpVar = this.zzb;
                    zzbo zzboVar2 = this.zza;
                    Pair zzm2 = zzbqVar.zzm(zzbpVar, zzboVar2, zzboVar2.zzc, -9223372036854775807L, Math.max(0L, zze));
                    if (zzm2 != null) {
                        j5 = ((Long) zzm2.second).longValue();
                    }
                }
                zzz(zzbqVar, zzugVar.zza, zzugVar.zzb);
                return zzE(zzbqVar, zzugVar.zza, Math.max(0L, j5), zzkmVar.zzc, zzugVar.zzd);
            }
        }
        return null;
    }

    private final zzkm zzC(zzbq zzbqVar, zzug zzugVar, long j, long j2) {
        zzbqVar.zzn(zzugVar.zza, this.zza);
        return zzugVar.zzb() ? zzD(zzbqVar, zzugVar.zza, zzugVar.zzb, zzugVar.zzc, j, zzugVar.zzd) : zzE(zzbqVar, zzugVar.zza, j2, j, zzugVar.zzd);
    }

    private final zzkm zzD(zzbq zzbqVar, Object obj, int i, int i2, long j, long j2) {
        zzug zzugVar = new zzug(obj, i, i2, j2);
        Object obj2 = zzugVar.zza;
        long zzf = zzbqVar.zzn(obj2, this.zza).zzf(zzugVar.zzb, zzugVar.zzc);
        if (i2 == this.zza.zze(i)) {
            this.zza.zzh();
        }
        this.zza.zzk(zzugVar.zzb);
        long j3 = 0;
        if (zzf != -9223372036854775807L && zzf <= 0) {
            j3 = Math.max(0L, (-1) + zzf);
        }
        return new zzkm(zzugVar, j3, j, -9223372036854775807L, zzf, false, false, false, false);
    }

    private final zzkm zzE(zzbq zzbqVar, Object obj, long j, long j2, long j3) {
        long j4;
        long j5;
        long j6;
        long j7 = j;
        zzbqVar.zzn(obj, this.zza);
        int zzc = this.zza.zzc(j7);
        if (zzc != -1) {
            this.zza.zzj(zzc);
        }
        if (zzc == -1) {
            this.zza.zzb();
        } else {
            this.zza.zzk(zzc);
        }
        zzug zzugVar = new zzug(obj, j3, zzc);
        boolean zzK = zzK(zzugVar);
        boolean zzI = zzI(zzbqVar, zzugVar);
        boolean zzH = zzH(zzbqVar, zzugVar, zzK);
        if (zzc != -1) {
            this.zza.zzk(zzc);
        }
        if (zzc != -1) {
            this.zza.zzg(zzc);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != -9223372036854775807L) {
            j5 = 0;
            j6 = 0;
        } else {
            j5 = j4;
            j6 = this.zza.zzd;
        }
        if (j6 != -9223372036854775807L && j7 >= j6) {
            j7 = Math.max(0L, j6 - 1);
        }
        return new zzkm(zzugVar, j7, j2, j5, j6, false, zzK, zzI, zzH);
    }

    private static zzug zzF(zzbq zzbqVar, Object obj, long j, long j2, zzbp zzbpVar, zzbo zzboVar) {
        zzbqVar.zzn(obj, zzboVar);
        zzbqVar.zze(zzboVar.zzc, zzbpVar, 0L);
        zzbqVar.zza(obj);
        zzboVar.zzb();
        zzbqVar.zzn(obj, zzboVar);
        int zzd = zzboVar.zzd(j);
        return zzd == -1 ? new zzug(obj, j2, zzboVar.zzc(j)) : new zzug(obj, zzd, zzboVar.zze(zzd), j2);
    }

    private final void zzG() {
        final zzfxk zzfxkVar = new zzfxk();
        for (zzkl zzklVar = this.zzi; zzklVar != null; zzklVar = zzklVar.zzg()) {
            zzfxkVar.zzf(zzklVar.zzg.zza);
        }
        zzkl zzklVar2 = this.zzj;
        final zzug zzugVar = zzklVar2 == null ? null : zzklVar2.zzg.zza;
        this.zzd.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkn
            @Override // java.lang.Runnable
            public final void run() {
                zzko.this.zzm(zzfxkVar, zzugVar);
            }
        });
    }

    private final boolean zzH(zzbq zzbqVar, zzug zzugVar, boolean z) {
        int zza = zzbqVar.zza(zzugVar.zza);
        return !zzbqVar.zze(zzbqVar.zzd(zza, this.zza, false).zzc, this.zzb, 0L).zzi && zzbqVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg) == -1 && z;
    }

    private final boolean zzI(zzbq zzbqVar, zzug zzugVar) {
        if (zzK(zzugVar)) {
            return zzbqVar.zze(zzbqVar.zzn(zzugVar.zza, this.zza).zzc, this.zzb, 0L).zzo == zzbqVar.zza(zzugVar.zza);
        }
        return false;
    }

    private final boolean zzJ(zzbq zzbqVar) {
        zzkl zzklVar = this.zzi;
        if (zzklVar == null) {
            return true;
        }
        int zza = zzbqVar.zza(zzklVar.zzb);
        while (true) {
            zza = zzbqVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg);
            while (true) {
                zzklVar.getClass();
                if (zzklVar.zzg() == null || zzklVar.zzg.zzg) {
                    break;
                }
                zzklVar = zzklVar.zzg();
            }
            zzkl zzg = zzklVar.zzg();
            if (zza == -1 || zzg == null || zzbqVar.zza(zzg.zzb) != zza) {
                break;
            }
            zzklVar = zzg;
        }
        boolean zzu = zzu(zzklVar);
        zzklVar.zzg = zzj(zzbqVar, zzklVar.zzg);
        return !zzu;
    }

    private static final boolean zzK(zzug zzugVar) {
        return !zzugVar.zzb() && zzugVar.zze == -1;
    }

    public static boolean zzr(long j, long j2) {
        return j == -9223372036854775807L || j == j2;
    }

    private final long zzz(zzbq zzbqVar, Object obj, int i) {
        zzbqVar.zzn(obj, this.zza);
        this.zza.zzg(i);
        long j = this.zza.zzg.zza(i).zzg;
        return 0L;
    }

    public final zzkl zza() {
        zzkl zzklVar = this.zzi;
        if (zzklVar == null) {
            return null;
        }
        if (zzklVar == this.zzj) {
            this.zzj = zzklVar.zzg();
        }
        zzklVar.zzo();
        int i = this.zzm - 1;
        this.zzm = i;
        if (i == 0) {
            this.zzk = null;
            zzkl zzklVar2 = this.zzi;
            this.zzn = zzklVar2.zzb;
            this.zzo = zzklVar2.zzg.zza.zzd;
        }
        this.zzi = this.zzi.zzg();
        zzG();
        return this.zzi;
    }

    public final zzkl zzb() {
        zzkl zzklVar = this.zzj;
        zzcw.zzb(zzklVar);
        this.zzj = zzklVar.zzg();
        zzG();
        zzkl zzklVar2 = this.zzj;
        zzcw.zzb(zzklVar2);
        return zzklVar2;
    }

    public final zzkl zzc(zzkm zzkmVar) {
        zzkl zzklVar;
        zzkl zzklVar2 = this.zzk;
        long zze = zzklVar2 == null ? 1000000000000L : (zzklVar2.zze() + zzklVar2.zzg.zze) - zzkmVar.zzb;
        int i = 0;
        while (true) {
            if (i >= this.zzp.size()) {
                zzklVar = null;
                break;
            }
            zzkm zzkmVar2 = ((zzkl) this.zzp.get(i)).zzg;
            if (zzr(zzkmVar2.zze, zzkmVar.zze) && zzkmVar2.zzb == zzkmVar.zzb && zzkmVar2.zza.equals(zzkmVar.zza)) {
                zzklVar = (zzkl) this.zzp.remove(i);
                break;
            }
            i++;
        }
        if (zzklVar == null) {
            zzklVar = zzkc.zzd(this.zzq.zza, zzkmVar, zze);
        } else {
            zzklVar.zzg = zzkmVar;
            zzklVar.zzq(zze);
        }
        zzkl zzklVar3 = this.zzk;
        if (zzklVar3 != null) {
            zzklVar3.zzp(zzklVar);
        } else {
            this.zzi = zzklVar;
            this.zzj = zzklVar;
        }
        this.zzn = null;
        this.zzk = zzklVar;
        this.zzm++;
        zzG();
        return zzklVar;
    }

    public final zzkl zzd() {
        return this.zzk;
    }

    public final zzkl zze() {
        return this.zzi;
    }

    public final zzkl zzf(zzue zzueVar) {
        for (int i = 0; i < this.zzp.size(); i++) {
            zzkl zzklVar = (zzkl) this.zzp.get(i);
            if (zzklVar.zza == zzueVar) {
                return zzklVar;
            }
        }
        return null;
    }

    public final zzkl zzg() {
        return this.zzl;
    }

    public final zzkl zzh() {
        return this.zzj;
    }

    public final zzkm zzi(long j, zzlb zzlbVar) {
        zzkl zzklVar = this.zzk;
        return zzklVar == null ? zzC(zzlbVar.zza, zzlbVar.zzb, zzlbVar.zzc, zzlbVar.zzs) : zzB(zzlbVar.zza, zzklVar, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzkm zzj(com.google.android.gms.internal.ads.zzbq r19, com.google.android.gms.internal.ads.zzkm r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.gms.internal.ads.zzug r3 = r2.zza
            boolean r12 = zzK(r3)
            boolean r13 = r0.zzI(r1, r3)
            boolean r14 = r0.zzH(r1, r3, r12)
            com.google.android.gms.internal.ads.zzug r4 = r2.zza
            java.lang.Object r4 = r4.zza
            com.google.android.gms.internal.ads.zzbo r5 = r0.zza
            r1.zzn(r4, r5)
            boolean r1 = r3.zzb()
            r4 = -1
            r5 = 0
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L37
            int r1 = r3.zze
            if (r1 != r4) goto L30
            goto L37
        L30:
            com.google.android.gms.internal.ads.zzbo r9 = r0.zza
            r9.zzg(r1)
            r9 = r5
            goto L38
        L37:
            r9 = r7
        L38:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L4b
            com.google.android.gms.internal.ads.zzbo r1 = r0.zza
            int r5 = r3.zzb
            int r6 = r3.zzc
            long r5 = r1.zzf(r5, r6)
        L48:
            r7 = r9
            r9 = r5
            goto L57
        L4b:
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r1 == 0) goto L52
            r7 = r5
            r9 = r7
            goto L57
        L52:
            com.google.android.gms.internal.ads.zzbo r1 = r0.zza
            long r5 = r1.zzd
            goto L48
        L57:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L65
            com.google.android.gms.internal.ads.zzbo r1 = r0.zza
            int r4 = r3.zzb
            r1.zzk(r4)
            goto L6e
        L65:
            int r1 = r3.zze
            if (r1 == r4) goto L6e
            com.google.android.gms.internal.ads.zzbo r4 = r0.zza
            r4.zzk(r1)
        L6e:
            com.google.android.gms.internal.ads.zzkm r15 = new com.google.android.gms.internal.ads.zzkm
            long r4 = r2.zzb
            long r1 = r2.zzc
            r11 = 0
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.zzj(com.google.android.gms.internal.ads.zzbq, com.google.android.gms.internal.ads.zzkm):com.google.android.gms.internal.ads.zzkm");
    }

    public final zzug zzk(zzbq zzbqVar, Object obj, long j) {
        long zzA;
        int zza;
        int i = zzbqVar.zzn(obj, this.zza).zzc;
        Object obj2 = this.zzn;
        if (obj2 == null || (zza = zzbqVar.zza(obj2)) == -1 || zzbqVar.zzd(zza, this.zza, false).zzc != i) {
            zzkl zzklVar = this.zzi;
            while (true) {
                if (zzklVar == null) {
                    zzkl zzklVar2 = this.zzi;
                    while (true) {
                        if (zzklVar2 != null) {
                            int zza2 = zzbqVar.zza(zzklVar2.zzb);
                            if (zza2 != -1 && zzbqVar.zzd(zza2, this.zza, false).zzc == i) {
                                zzA = zzklVar2.zzg.zza.zzd;
                                break;
                            }
                            zzklVar2 = zzklVar2.zzg();
                        } else {
                            zzA = zzA(obj);
                            if (zzA == -1) {
                                zzA = this.zze;
                                this.zze = 1 + zzA;
                                if (this.zzi == null) {
                                    this.zzn = obj;
                                    this.zzo = zzA;
                                }
                            }
                        }
                    }
                } else {
                    if (zzklVar.zzb.equals(obj)) {
                        zzA = zzklVar.zzg.zza.zzd;
                        break;
                    }
                    zzklVar = zzklVar.zzg();
                }
            }
        } else {
            zzA = this.zzo;
        }
        long j2 = zzA;
        zzbqVar.zzn(obj, this.zza);
        zzbqVar.zze(this.zza.zzc, this.zzb, 0L);
        int zza3 = zzbqVar.zza(obj);
        Object obj3 = obj;
        while (true) {
            zzbp zzbpVar = this.zzb;
            if (zza3 < zzbpVar.zzn) {
                return zzF(zzbqVar, obj3, j, j2, zzbpVar, this.zza);
            }
            zzbqVar.zzd(zza3, this.zza, true);
            this.zza.zzb();
            zzbo zzboVar = this.zza;
            if (zzboVar.zzd(zzboVar.zzd) != -1) {
                obj3 = this.zza.zzb;
                obj3.getClass();
            }
            zza3--;
        }
    }

    public final void zzl() {
        if (this.zzm == 0) {
            return;
        }
        zzkl zzklVar = this.zzi;
        zzcw.zzb(zzklVar);
        this.zzn = zzklVar.zzb;
        this.zzo = zzklVar.zzg.zza.zzd;
        while (zzklVar != null) {
            zzklVar.zzo();
            zzklVar = zzklVar.zzg();
        }
        this.zzi = null;
        this.zzk = null;
        this.zzj = null;
        this.zzm = 0;
        zzG();
    }

    public final /* synthetic */ void zzm(zzfxk zzfxkVar, zzug zzugVar) {
        this.zzc.zzT(zzfxkVar.zzi(), zzugVar);
    }

    public final void zzn() {
        zzkl zzklVar = this.zzl;
        if (zzklVar == null || zzklVar.zzt()) {
            this.zzl = null;
            for (int i = 0; i < this.zzp.size(); i++) {
                zzkl zzklVar2 = (zzkl) this.zzp.get(i);
                if (!zzklVar2.zzt()) {
                    this.zzl = zzklVar2;
                    return;
                }
            }
        }
    }

    public final void zzo(long j) {
        zzkl zzklVar = this.zzk;
        if (zzklVar != null) {
            zzklVar.zzn(j);
        }
    }

    public final void zzp() {
        if (this.zzp.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.zzp.size(); i++) {
            ((zzkl) this.zzp.get(i)).zzo();
        }
        this.zzp = arrayList;
        this.zzl = null;
        zzn();
    }

    public final void zzq(zzbq zzbqVar, zzil zzilVar) {
        this.zzh = zzilVar;
        long j = zzilVar.zzb;
        zzp();
    }

    public final boolean zzs(zzue zzueVar) {
        zzkl zzklVar = this.zzk;
        return zzklVar != null && zzklVar.zza == zzueVar;
    }

    public final boolean zzt(zzue zzueVar) {
        zzkl zzklVar = this.zzl;
        return zzklVar != null && zzklVar.zza == zzueVar;
    }

    public final boolean zzu(zzkl zzklVar) {
        zzcw.zzb(zzklVar);
        boolean z = false;
        if (zzklVar.equals(this.zzk)) {
            return false;
        }
        this.zzk = zzklVar;
        while (zzklVar.zzg() != null) {
            zzklVar = zzklVar.zzg();
            zzklVar.getClass();
            if (zzklVar == this.zzj) {
                this.zzj = this.zzi;
                z = true;
            }
            zzklVar.zzo();
            this.zzm--;
        }
        zzkl zzklVar2 = this.zzk;
        zzklVar2.getClass();
        zzklVar2.zzp(null);
        zzG();
        return z;
    }

    public final boolean zzv() {
        zzkl zzklVar = this.zzk;
        if (zzklVar != null) {
            return !zzklVar.zzg.zzi && zzklVar.zzs() && this.zzk.zzg.zze != -9223372036854775807L && this.zzm < 100;
        }
        return true;
    }

    public final boolean zzw(zzbq zzbqVar, long j, long j2) {
        zzkm zzkmVar;
        boolean z;
        zzkl zzklVar = null;
        for (zzkl zzklVar2 = this.zzi; zzklVar2 != null; zzklVar2 = zzklVar2.zzg()) {
            zzkm zzkmVar2 = zzklVar2.zzg;
            if (zzklVar == null) {
                zzkmVar = zzj(zzbqVar, zzkmVar2);
            } else {
                zzkm zzB = zzB(zzbqVar, zzklVar, j);
                if (zzB == null) {
                    return !zzu(zzklVar);
                }
                if (zzkmVar2.zzb != zzB.zzb || !zzkmVar2.zza.equals(zzB.zza)) {
                    return !zzu(zzklVar);
                }
                zzkmVar = zzB;
            }
            zzklVar2.zzg = zzkmVar.zza(zzkmVar2.zzc);
            if (!zzr(zzkmVar2.zze, zzkmVar.zze)) {
                zzklVar2.zzr();
                long j3 = zzkmVar.zze;
                long zze = j3 == -9223372036854775807L ? Long.MAX_VALUE : j3 + zzklVar2.zze();
                if (zzklVar2 == this.zzj) {
                    boolean z2 = zzklVar2.zzg.zzf;
                    if (j2 == Long.MIN_VALUE || j2 >= zze) {
                        z = true;
                        return zzu(zzklVar2) && !z;
                    }
                }
                z = false;
                if (zzu(zzklVar2)) {
                }
            }
            zzklVar = zzklVar2;
        }
        return true;
    }

    public final boolean zzx(zzbq zzbqVar, int i) {
        this.zzf = i;
        return zzJ(zzbqVar);
    }

    public final boolean zzy(zzbq zzbqVar, boolean z) {
        this.zzg = z;
        return zzJ(zzbqVar);
    }
}
