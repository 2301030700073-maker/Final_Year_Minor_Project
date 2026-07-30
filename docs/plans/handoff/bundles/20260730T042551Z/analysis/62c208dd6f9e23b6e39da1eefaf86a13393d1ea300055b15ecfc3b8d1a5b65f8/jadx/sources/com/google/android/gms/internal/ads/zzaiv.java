package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaiv implements zzacn, zzadm {
    private int zzA;
    private zzagv zzB;
    private final zzakd zza;
    private final int zzb;
    private final zzdy zzc;
    private final zzdy zzd;
    private final zzdy zze;
    private final zzdy zzf;
    private final ArrayDeque zzg;
    private final zzaiz zzh;
    private final List zzi;
    private zzfxn zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private int zzn;
    private zzdy zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private zzacq zzv;
    private zzaiu[] zzw;
    private long[][] zzx;
    private int zzy;
    private long zzz;

    @Deprecated
    public zzaiv() {
        this(zzakd.zza, 16);
    }

    private static int zzj(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int zzk(zzaje zzajeVar, long j) {
        int zza = zzajeVar.zza(j);
        return zza == -1 ? zzajeVar.zzb(j) : zza;
    }

    private static long zzl(zzaje zzajeVar, long j, long j2) {
        int zzk = zzk(zzajeVar, j);
        return zzk == -1 ? j2 : Math.min(zzajeVar.zzc[zzk], j2);
    }

    private final void zzm() {
        this.zzk = 0;
        this.zzn = 0;
    }

    private final void zzn(long j) {
        zzay zzayVar;
        long j2;
        List list;
        zzay zzayVar2;
        int i;
        int i2;
        ArrayList arrayList;
        int i3;
        while (!this.zzg.isEmpty() && ((zzen) this.zzg.peek()).zza == j) {
            zzen zzenVar = (zzen) this.zzg.pop();
            if (zzenVar.zzd == 1836019574) {
                zzen zza = zzenVar.zza(1835365473);
                new ArrayList();
                zzay zzb = zza != null ? zzaik.zzb(zza) : null;
                ArrayList arrayList2 = new ArrayList();
                boolean z = this.zzA == 1;
                zzadb zzadbVar = new zzadb();
                zzeo zzb2 = zzenVar.zzb(1969517665);
                if (zzb2 != null) {
                    zzay zzc = zzaik.zzc(zzb2);
                    zzadbVar.zzb(zzc);
                    zzayVar = zzc;
                } else {
                    zzayVar = null;
                }
                zzeo zzb3 = zzenVar.zzb(1836476516);
                zzb3.getClass();
                zzay zzayVar3 = new zzay(-9223372036854775807L, zzaik.zzd(zzb3.zza));
                ArrayList arrayList3 = arrayList2;
                long j3 = -9223372036854775807L;
                List zzf = zzaik.zzf(zzenVar, zzadbVar, -9223372036854775807L, null, 1 == (this.zzb & 1), z, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzait
                    @Override // com.google.android.gms.internal.ads.zzfuc
                    public final Object apply(Object obj) {
                        return (zzajb) obj;
                    }
                });
                long j4 = -9223372036854775807L;
                int i4 = 0;
                int i5 = -1;
                int i6 = 0;
                while (true) {
                    j2 = 0;
                    if (i4 >= zzf.size()) {
                        break;
                    }
                    zzaje zzajeVar = (zzaje) zzf.get(i4);
                    if (zzajeVar.zzb == 0) {
                        list = zzf;
                        i2 = i4;
                        arrayList = arrayList3;
                    } else {
                        zzajb zzajbVar = zzajeVar.zza;
                        int i7 = i6 + 1;
                        zzaiu zzaiuVar = new zzaiu(zzajbVar, zzajeVar, this.zzv.zzw(i6, zzajbVar.zzb));
                        List list2 = zzf;
                        long j5 = zzajbVar.zze;
                        if (j5 == j3) {
                            j5 = zzajeVar.zzh;
                        }
                        zzaiuVar.zzc.zzl(j5);
                        j4 = Math.max(j4, j5);
                        int i8 = "audio/true-hd".equals(zzajbVar.zzg.zzo) ? zzajeVar.zze * 16 : zzajeVar.zze + 30;
                        zzz zzb4 = zzajbVar.zzg.zzb();
                        zzb4.zzR(i8);
                        if (zzajbVar.zzb == 2) {
                            zzab zzabVar = zzajbVar.zzg;
                            int i9 = this.zzb;
                            list = list2;
                            int i10 = zzabVar.zzf;
                            if ((i9 & 8) != 0) {
                                i10 |= i5 == -1 ? 1 : 2;
                            }
                            if (zzabVar.zzx == -1.0f && j5 > 0 && (i3 = zzajeVar.zzb) > 0) {
                                zzb4.zzI(i3 / (j5 / 1000000.0f));
                            }
                            zzb4.zzY(i10);
                        } else {
                            list = list2;
                        }
                        if (zzajbVar.zzb == 1 && zzadbVar.zza()) {
                            zzb4.zzG(zzadbVar.zza);
                            zzb4.zzH(zzadbVar.zzb);
                        }
                        int i11 = zzajbVar.zzb;
                        zzay[] zzayVarArr = new zzay[3];
                        if (this.zzi.isEmpty()) {
                            i = 0;
                            zzayVar2 = null;
                        } else {
                            zzayVar2 = new zzay(this.zzi);
                            i = 0;
                        }
                        zzayVarArr[i] = zzayVar2;
                        zzayVarArr[1] = zzayVar;
                        zzayVarArr[2] = zzayVar3;
                        i2 = i4;
                        zzay zzayVar4 = new zzay(-9223372036854775807L, new zzax[i]);
                        if (zzb != null) {
                            for (int i12 = 0; i12 < zzb.zza(); i12++) {
                                zzax zzb5 = zzb.zzb(i12);
                                if (zzb5 instanceof zzem) {
                                    zzem zzemVar = (zzem) zzb5;
                                    if (!zzemVar.zza.equals("com.android.capture.fps")) {
                                        zzayVar4 = zzayVar4.zzc(zzemVar);
                                    } else if (i11 == 2) {
                                        zzayVar4 = zzayVar4.zzc(zzemVar);
                                    }
                                }
                            }
                        }
                        for (int i13 = 0; i13 < 3; i13++) {
                            zzayVar4 = zzayVar4.zzd(zzayVarArr[i13]);
                        }
                        if (zzayVar4.zza() > 0) {
                            zzb4.zzT(zzayVar4);
                        }
                        zzaiuVar.zzc.zzm(zzb4.zzag());
                        if (zzajbVar.zzb == 2 && i5 == -1) {
                            i5 = arrayList3.size();
                        }
                        arrayList = arrayList3;
                        arrayList.add(zzaiuVar);
                        i6 = i7;
                    }
                    i4 = i2 + 1;
                    arrayList3 = arrayList;
                    zzf = list;
                    j3 = -9223372036854775807L;
                }
                this.zzy = i5;
                this.zzz = j4;
                zzaiu[] zzaiuVarArr = (zzaiu[]) arrayList3.toArray(new zzaiu[0]);
                this.zzw = zzaiuVarArr;
                int length = zzaiuVarArr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i14 = 0; i14 < zzaiuVarArr.length; i14++) {
                    jArr[i14] = new long[zzaiuVarArr[i14].zzb.zzb];
                    jArr2[i14] = zzaiuVarArr[i14].zzb.zzf[0];
                }
                int i15 = 0;
                while (i15 < zzaiuVarArr.length) {
                    long j6 = Long.MAX_VALUE;
                    int i16 = -1;
                    for (int i17 = 0; i17 < zzaiuVarArr.length; i17++) {
                        if (!zArr[i17]) {
                            long j7 = jArr2[i17];
                            if (j7 <= j6) {
                                i16 = i17;
                                j6 = j7;
                            }
                        }
                    }
                    int i18 = iArr[i16];
                    long[] jArr3 = jArr[i16];
                    jArr3[i18] = j2;
                    zzaje zzajeVar2 = zzaiuVarArr[i16].zzb;
                    j2 += zzajeVar2.zzd[i18];
                    int i19 = i18 + 1;
                    iArr[i16] = i19;
                    if (i19 < jArr3.length) {
                        jArr2[i16] = zzajeVar2.zzf[i19];
                    } else {
                        zArr[i16] = true;
                        i15++;
                    }
                }
                this.zzx = jArr;
                this.zzv.zzD();
                this.zzv.zzO(this);
                this.zzg.clear();
                this.zzk = 2;
            } else if (!this.zzg.isEmpty()) {
                ((zzen) this.zzg.peek()).zzc(zzenVar);
            }
        }
        if (this.zzk != 2) {
            zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final long zza() {
        return this.zzz;
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x0420, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:217:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0095 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzacn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzaco r33, com.google.android.gms.internal.ads.zzadj r34) {
        /*
            Method dump skipped, instructions count: 1195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiv.zzb(com.google.android.gms.internal.ads.zzaco, com.google.android.gms.internal.ads.zzadj):int");
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ zzacn zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ List zzd() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zze(zzacq zzacqVar) {
        if ((this.zzb & 16) == 0) {
            zzacqVar = new zzakg(zzacqVar, this.zza);
        }
        this.zzv = zzacqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        this.zzg.clear();
        this.zzn = 0;
        this.zzp = -1;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzt = true;
        if (j == 0) {
            if (this.zzk != 3) {
                zzm();
                return;
            } else {
                this.zzh.zzb();
                this.zzi.clear();
                return;
            }
        }
        for (zzaiu zzaiuVar : this.zzw) {
            zzaje zzajeVar = zzaiuVar.zzb;
            int zza = zzajeVar.zza(j2);
            if (zza == -1) {
                zza = zzajeVar.zzb(j2);
            }
            zzaiuVar.zze = zza;
            zzadu zzaduVar = zzaiuVar.zzd;
            if (zzaduVar != null) {
                zzaduVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final zzadk zzg(long j) {
        long j2;
        long j3;
        int zzb;
        zzaiu[] zzaiuVarArr = this.zzw;
        if (zzaiuVarArr.length == 0) {
            zzadn zzadnVar = zzadn.zza;
            return new zzadk(zzadnVar, zzadnVar);
        }
        int i = this.zzy;
        long j4 = -1;
        if (i != -1) {
            zzaje zzajeVar = zzaiuVarArr[i].zzb;
            int zzk = zzk(zzajeVar, j);
            if (zzk == -1) {
                zzadn zzadnVar2 = zzadn.zza;
                return new zzadk(zzadnVar2, zzadnVar2);
            }
            long j5 = zzajeVar.zzf[zzk];
            j2 = zzajeVar.zzc[zzk];
            if (j5 >= j || zzk >= zzajeVar.zzb - 1 || (zzb = zzajeVar.zzb(j)) == -1 || zzb == zzk) {
                j3 = -9223372036854775807L;
            } else {
                j3 = zzajeVar.zzf[zzb];
                j4 = zzajeVar.zzc[zzb];
            }
            j = j5;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            zzaiu[] zzaiuVarArr2 = this.zzw;
            if (i2 >= zzaiuVarArr2.length) {
                break;
            }
            if (i2 != this.zzy) {
                zzaje zzajeVar2 = zzaiuVarArr2[i2].zzb;
                long zzl = zzl(zzajeVar2, j, j2);
                if (j3 != -9223372036854775807L) {
                    j4 = zzl(zzajeVar2, j3, j4);
                }
                j2 = zzl;
            }
            i2++;
        }
        zzadn zzadnVar3 = new zzadn(j, j2);
        return j3 == -9223372036854775807L ? new zzadk(zzadnVar3, zzadnVar3) : new zzadk(zzadnVar3, new zzadn(j3, j4));
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final boolean zzh() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        zzadq zzb = zzaja.zzb(zzacoVar, (this.zzb & 2) != 0);
        this.zzj = zzb != null ? zzfxn.zzo(zzb) : zzfxn.zzn();
        return zzb == null;
    }

    public zzaiv(zzakd zzakdVar, int i) {
        this.zza = zzakdVar;
        this.zzb = i;
        this.zzj = zzfxn.zzn();
        this.zzk = (i & 4) != 0 ? 3 : 0;
        this.zzh = new zzaiz();
        this.zzi = new ArrayList();
        this.zzf = new zzdy(16);
        this.zzg = new ArrayDeque();
        this.zzc = new zzdy(zzfk.zza);
        this.zzd = new zzdy(5);
        this.zze = new zzdy();
        this.zzp = -1;
        this.zzv = zzacq.zza;
        this.zzw = new zzaiu[0];
        this.zzt = true;
    }
}
