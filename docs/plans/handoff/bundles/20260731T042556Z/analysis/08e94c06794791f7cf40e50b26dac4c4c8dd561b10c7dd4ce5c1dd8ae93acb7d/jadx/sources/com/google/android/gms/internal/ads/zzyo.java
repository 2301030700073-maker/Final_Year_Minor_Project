package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzyo extends zzyr {
    protected abstract Pair zzh(zzyn zzynVar, int[][][] iArr, int[] iArr2, zzuu zzuuVar, zzbf zzbfVar) throws zzib;

    @Override // com.google.android.gms.internal.ads.zzyr
    public final void zzp(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final zzys zzq(zzlp[] zzlpVarArr, zzwv zzwvVar, zzuu zzuuVar, zzbf zzbfVar) throws zzib {
        List[] listArr;
        boolean z;
        int[] iArr;
        int[] iArr2 = new int[3];
        zzbg[][] zzbgVarArr = new zzbg[3][];
        int[][][] iArr3 = new int[3][][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzwvVar.zzb;
            zzbgVarArr[i] = new zzbg[i2];
            iArr3[i] = new int[i2][];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = zzlpVarArr[i4].zzu();
        }
        int i5 = 0;
        while (i5 < zzwvVar.zzb) {
            zzbg zza = zzwvVar.zza(i5);
            int i6 = zza.zzc;
            int i7 = i3;
            int i8 = 0;
            int i9 = 0;
            boolean z2 = true;
            while (i8 < i3) {
                zzlp zzlpVar = zzlpVarArr[i8];
                int i10 = 0;
                for (int i11 = 0; i11 < zza.zza; i11++) {
                    i10 = Math.max(i10, zzlpVar.zzab(zza.zza(i11)) & 7);
                }
                boolean z3 = iArr2[i8] == 0;
                if (i10 > i9) {
                    z2 = z3;
                    i7 = i8;
                    i9 = i10;
                } else if (i10 == i9 && i6 == 5 && !z2 && z3) {
                    i7 = i8;
                    i9 = i10;
                    z2 = true;
                }
                i8++;
                i3 = 2;
            }
            if (i7 == i3) {
                iArr = new int[zza.zza];
            } else {
                zzlp zzlpVar2 = zzlpVarArr[i7];
                int i12 = zza.zza;
                int[] iArr5 = new int[i12];
                for (int i13 = 0; i13 < i12; i13++) {
                    iArr5[i13] = zzlpVar2.zzab(zza.zza(i13));
                }
                iArr = iArr5;
            }
            int i14 = iArr2[i7];
            zzbgVarArr[i7][i14] = zza;
            iArr3[i7][i14] = iArr;
            iArr2[i7] = i14 + 1;
            i5++;
            i3 = 2;
        }
        int i15 = i3;
        boolean z4 = true;
        zzwv[] zzwvVarArr = new zzwv[i15];
        String[] strArr = new String[i15];
        int[] iArr6 = new int[i15];
        int i16 = 0;
        while (i16 < i15) {
            int i17 = iArr2[i16];
            zzwvVarArr[i16] = new zzwv((zzbg[]) zzep.zzb(zzbgVarArr[i16], i17));
            iArr3[i16] = (int[][]) zzep.zzb(iArr3[i16], i17);
            strArr[i16] = zzlpVarArr[i16].zzS();
            iArr6[i16] = zzlpVarArr[i16].zza();
            i16++;
            i15 = 2;
        }
        int i18 = i15;
        zzyn zzynVar = new zzyn(strArr, iArr6, zzwvVarArr, iArr4, iArr3, new zzwv((zzbg[]) zzep.zzb(zzbgVarArr[i18], iArr2[i18])));
        Pair zzh = zzh(zzynVar, iArr3, iArr4, zzuuVar, zzbfVar);
        zzyp[] zzypVarArr = (zzyp[]) zzh.second;
        List[] listArr2 = new List[zzypVarArr.length];
        for (int i19 = 0; i19 < zzypVarArr.length; i19++) {
            zzyp zzypVar = zzypVarArr[i19];
            listArr2[i19] = zzypVar != null ? zzgpe.zzj(zzypVar) : zzgpe.zzi();
        }
        zzgpb zzgpbVar = new zzgpb();
        int i20 = 0;
        while (i20 < 2) {
            zzwv zzb = zzynVar.zzb(i20);
            List list = listArr2[i20];
            int i21 = 0;
            while (i21 < zzb.zzb) {
                zzbg zza2 = zzb.zza(i21);
                boolean z5 = zzynVar.zzd(i20, i21, false) != 0 ? z4 : false;
                int i22 = zza2.zza;
                int[] iArr7 = new int[i22];
                boolean[] zArr = new boolean[i22];
                int i23 = 0;
                while (i23 < i22) {
                    iArr7[i23] = zzynVar.zzc(i20, i21, i23) & 7;
                    int i24 = 0;
                    while (true) {
                        if (i24 >= list.size()) {
                            listArr = listArr2;
                            z = false;
                            break;
                        }
                        zzyp zzypVar2 = (zzyp) list.get(i24);
                        listArr = listArr2;
                        if (zzypVar2.zza().equals(zza2) && zzypVar2.zzg(i23) != -1) {
                            z = true;
                            break;
                        }
                        i24++;
                        listArr2 = listArr;
                    }
                    zArr[i23] = z;
                    i23++;
                    listArr2 = listArr;
                }
                zzgpbVar.zzf(new zzbm(zza2, z5, iArr7, zArr));
                i21++;
                z4 = true;
            }
            i20++;
            z4 = true;
        }
        zzwv zze = zzynVar.zze();
        for (int i25 = 0; i25 < zze.zzb; i25++) {
            zzbg zza3 = zze.zza(i25);
            int i26 = zza3.zza;
            int[] iArr8 = new int[i26];
            Arrays.fill(iArr8, 0);
            zzgpbVar.zzf(new zzbm(zza3, false, iArr8, new boolean[i26]));
        }
        return new zzys((zzlq[]) zzh.first, (zzyk[]) zzh.second, new zzbn(zzgpbVar.zzi()), zzynVar);
    }
}
