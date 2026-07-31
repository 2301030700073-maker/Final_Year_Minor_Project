package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.mp4.Atom;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaiz implements zzada {
    public static final /* synthetic */ int zza = 0;
    private int zzA;
    private zzafz zzB;
    private final zzakg zzb;
    private final int zzc;
    private final zzeg zzd;
    private final zzeg zze;
    private final zzeg zzf;
    private final zzeg zzg;
    private final ArrayDeque zzh;
    private final zzajd zzi;
    private final List zzj;
    private zzgpe zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private int zzo;
    private zzeg zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private boolean zzu;
    private boolean zzv;
    private long zzw;
    private zzadd zzx;
    private zzaiy[] zzy;
    private long[][] zzz;

    static {
        int i = zzaiv.zza;
    }

    @Deprecated
    public zzaiz() {
        this(zzakg.zza, 16);
    }

    static /* synthetic */ long zzg(zzaji zzajiVar, long j, long j2) {
        int zzk = zzk(zzajiVar, j);
        return zzk == -1 ? j2 : Math.min(zzajiVar.zzc[zzk], j2);
    }

    private final void zzi() {
        this.zzl = 0;
        this.zzo = 0;
    }

    private final void zzj(long j) throws zzat {
        zzap zzapVar;
        List list;
        int i;
        ArrayDeque arrayDeque;
        while (true) {
            ArrayDeque arrayDeque2 = this.zzh;
            if (arrayDeque2.isEmpty() || ((zzeu) arrayDeque2.peek()).zza != j) {
                break;
            }
            zzeu zzeuVar = (zzeu) arrayDeque2.pop();
            if (zzeuVar.zzd == 1836019574) {
                zzeu zzd = zzeuVar.zzd(Atom.TYPE_meta);
                new ArrayList();
                zzap zze = zzd != null ? zzaik.zze(zzd) : null;
                ArrayList arrayList = new ArrayList();
                int i2 = 0;
                boolean z = this.zzA == 1;
                zzads zzadsVar = new zzads();
                zzev zzc = zzeuVar.zzc(Atom.TYPE_udta);
                if (zzc != null) {
                    zzap zzc2 = zzaik.zzc(zzc);
                    zzadsVar.zza(zzc2);
                    zzapVar = zzc2;
                } else {
                    zzapVar = null;
                }
                zzev zzc3 = zzeuVar.zzc(Atom.TYPE_mvhd);
                zzc3.getClass();
                zzap zzapVar2 = new zzap(C.TIME_UNSET, zzaik.zzd(zzc3.zza));
                int i3 = this.zzc;
                List zzb = zzaik.zzb(zzeuVar, zzadsVar, C.TIME_UNSET, null, 1 == (i3 & 1), z, zzaiw.zza, false);
                String zza2 = zzaiu.zza(zzb);
                int i4 = 0;
                int i5 = 0;
                long j2 = -9223372036854775807L;
                int i6 = -1;
                while (i4 < zzb.size()) {
                    zzaji zzajiVar = (zzaji) zzb.get(i4);
                    if (zzajiVar.zzb == 0) {
                        arrayDeque = arrayDeque2;
                        list = zzb;
                        i = i4;
                    } else {
                        zzajf zzajfVar = zzajiVar.zza;
                        zzadd zzaddVar = this.zzx;
                        int i7 = i5 + 1;
                        list = zzb;
                        int i8 = zzajfVar.zzb;
                        zzaiy zzaiyVar = new zzaiy(zzajfVar, zzajiVar, zzaddVar.zzu(i5, i8));
                        i = i4;
                        long j3 = zzajfVar.zze;
                        if (j3 == C.TIME_UNSET) {
                            j3 = zzajiVar.zzh;
                        }
                        arrayDeque = arrayDeque2;
                        zzaem zzaemVar = zzaiyVar.zzc;
                        long max = Math.max(j2, j3);
                        zzv zzvVar = zzajfVar.zzg;
                        String str = zzvVar.zzo;
                        int i9 = MimeTypes.AUDIO_TRUEHD.equals(str) ? zzajiVar.zze * 16 : zzajiVar.zze + 30;
                        zzt zza3 = zzvVar.zza();
                        zza3.zzn(i9);
                        if (i8 == 2) {
                            int i10 = zzvVar.zzf;
                            if ((i3 & 8) != 0) {
                                i10 |= i6 == -1 ? 1 : 2;
                            }
                            zza3.zzg(i10);
                            i8 = 2;
                        }
                        zzait.zzb(i8, zzadsVar, zza3);
                        zzap zzapVar3 = zzvVar.zzl;
                        List list2 = this.zzj;
                        zzap[] zzapVarArr = new zzap[3];
                        zzapVarArr[0] = list2.isEmpty() ? null : new zzap(list2);
                        zzapVarArr[1] = zzapVar;
                        zzapVarArr[2] = zzapVar2;
                        zzait.zza(i8, zze, zza3, zzapVar3, zzapVarArr);
                        zza3.zzl(zza2);
                        if (Objects.equals(str, MimeTypes.AUDIO_MPEG)) {
                            zzaiyVar.zzf = zza3.zzM();
                        } else {
                            zzaemVar.zzu(zza3.zzM());
                        }
                        if (i8 == 2 && i6 == -1) {
                            i6 = arrayList.size();
                        }
                        arrayList.add(zzaiyVar);
                        i5 = i7;
                        j2 = max;
                    }
                    i4 = i + 1;
                    zzb = list;
                    arrayDeque2 = arrayDeque;
                    i2 = 0;
                }
                ArrayDeque arrayDeque3 = arrayDeque2;
                int i11 = -1;
                zzaiy[] zzaiyVarArr = (zzaiy[]) arrayList.toArray(new zzaiy[i2]);
                this.zzy = zzaiyVarArr;
                int length = zzaiyVarArr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i12 = 0; i12 < zzaiyVarArr.length; i12++) {
                    jArr[i12] = new long[zzaiyVarArr[i12].zzb.zzb];
                    jArr2[i12] = zzaiyVarArr[i12].zzb.zzf[0];
                }
                int i13 = 0;
                long j4 = 0;
                int i14 = 0;
                while (i14 < zzaiyVarArr.length) {
                    long j5 = Long.MAX_VALUE;
                    int i15 = i11;
                    for (int i16 = i13; i16 < zzaiyVarArr.length; i16++) {
                        if (!zArr[i16]) {
                            long j6 = jArr2[i16];
                            if (j6 <= j5) {
                                i15 = i16;
                                j5 = j6;
                            }
                        }
                    }
                    int i17 = iArr[i15];
                    long[] jArr3 = jArr[i15];
                    jArr3[i17] = j4;
                    zzaji zzajiVar2 = zzaiyVarArr[i15].zzb;
                    zzaiy[] zzaiyVarArr2 = zzaiyVarArr;
                    long j7 = j2;
                    j4 += zzajiVar2.zzd[i17];
                    int i18 = i17 + 1;
                    iArr[i15] = i18;
                    if (i18 < jArr3.length) {
                        jArr2[i15] = zzajiVar2.zzf[i18];
                    } else {
                        zArr[i15] = true;
                        i14++;
                    }
                    zzaiyVarArr = zzaiyVarArr2;
                    j2 = j7;
                    i13 = 0;
                    i11 = -1;
                }
                this.zzz = jArr;
                this.zzx.zzv();
                this.zzx.zzw(new zzaix(j2, this.zzy, i6));
                arrayDeque3.clear();
                this.zzl = 2;
            } else if (!arrayDeque2.isEmpty()) {
                ((zzeu) arrayDeque2.peek()).zzb(zzeuVar);
            }
        }
        if (this.zzl != 2) {
            zzi();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzk(zzaji zzajiVar, long j) {
        int zza2 = zzajiVar.zza(j);
        return zza2 == -1 ? zzajiVar.zzb(j) : zza2;
    }

    private static int zzl(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        zzaeh zzb = zzaje.zzb(zzadbVar, (this.zzc & 2) != 0);
        this.zzk = zzb != null ? zzgpe.zzj(zzb) : zzgpe.zzi();
        return zzb == null;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final /* synthetic */ List zzb() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        if ((this.zzc & 16) == 0) {
            zzaddVar = new zzakj(zzaddVar, this.zzb);
        }
        this.zzx = zzaddVar;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        this.zzh.clear();
        this.zzo = 0;
        this.zzq = -1;
        this.zzr = 0;
        this.zzs = 0;
        this.zzt = 0;
        this.zzu = false;
        if (j == 0) {
            if (this.zzl != 3) {
                zzi();
                return;
            } else {
                this.zzi.zza();
                this.zzj.clear();
                return;
            }
        }
        for (zzaiy zzaiyVar : this.zzy) {
            zzaji zzajiVar = zzaiyVar.zzb;
            int zza2 = zzajiVar.zza(j2);
            if (zza2 == -1) {
                zza2 = zzajiVar.zzb(j2);
            }
            zzaiyVar.zze = zza2;
            zzaen zzaenVar = zzaiyVar.zzd;
            if (zzaenVar != null) {
                zzaenVar.zza();
            }
        }
    }

    public zzaiz(zzakg zzakgVar, int i) {
        this.zzb = zzakgVar;
        this.zzc = i;
        this.zzk = zzgpe.zzi();
        this.zzl = (i & 4) != 0 ? 3 : 0;
        this.zzi = new zzajd();
        this.zzj = new ArrayList();
        this.zzg = new zzeg(16);
        this.zzh = new ArrayDeque();
        this.zzd = new zzeg(zzfm.zza);
        this.zze = new zzeg(6);
        this.zzf = new zzeg();
        this.zzq = -1;
        this.zzx = zzadd.zza;
        this.zzy = new zzaiy[0];
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0490, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0098 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzada
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzd(com.google.android.gms.internal.ads.zzadb r33, com.google.android.gms.internal.ads.zzaea r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiz.zzd(com.google.android.gms.internal.ads.zzadb, com.google.android.gms.internal.ads.zzaea):int");
    }
}
