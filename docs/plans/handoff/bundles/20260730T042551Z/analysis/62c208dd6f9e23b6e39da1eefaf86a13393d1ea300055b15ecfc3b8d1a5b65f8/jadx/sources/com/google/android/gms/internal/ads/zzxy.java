package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzxy extends zzyb {
    public abstract Pair zzd(zzxx zzxxVar, int[][][] iArr, int[] iArr2, zzug zzugVar, zzbq zzbqVar);

    @Override // com.google.android.gms.internal.ads.zzyb
    public final zzyc zzo(zzlm[] zzlmVarArr, zzwj zzwjVar, zzug zzugVar, zzbq zzbqVar) {
        boolean z;
        int[] iArr;
        int[] iArr2 = new int[3];
        zzbr[][] zzbrVarArr = new zzbr[3][];
        int[][][] iArr3 = new int[3][][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzwjVar.zzb;
            zzbrVarArr[i] = new zzbr[i2];
            iArr3[i] = new int[i2][];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = zzlmVarArr[i4].zze();
        }
        int i5 = 0;
        while (i5 < zzwjVar.zzb) {
            zzbr zzb = zzwjVar.zzb(i5);
            int i6 = zzb.zzc;
            int i7 = 0;
            int i8 = 2;
            int i9 = 0;
            boolean z2 = true;
            while (i7 < i3) {
                zzlm zzlmVar = zzlmVarArr[i7];
                int i10 = 0;
                for (int i11 = 0; i11 < zzb.zza; i11++) {
                    i10 = Math.max(i10, zzlmVar.zzY(zzb.zzb(i11)) & 7);
                }
                boolean z3 = iArr2[i7] == 0;
                if (i10 > i9) {
                    z2 = z3;
                    i8 = i7;
                    i9 = i10;
                } else if (i10 == i9 && i6 == 5 && !z2 && z3) {
                    i8 = i7;
                    i9 = i10;
                    z2 = true;
                }
                i7++;
                i3 = 2;
            }
            if (i8 == i3) {
                iArr = new int[zzb.zza];
            } else {
                zzlm zzlmVar2 = zzlmVarArr[i8];
                int[] iArr5 = new int[zzb.zza];
                for (int i12 = 0; i12 < zzb.zza; i12++) {
                    iArr5[i12] = zzlmVar2.zzY(zzb.zzb(i12));
                }
                iArr = iArr5;
            }
            int i13 = iArr2[i8];
            zzbrVarArr[i8][i13] = zzb;
            iArr3[i8][i13] = iArr;
            iArr2[i8] = i13 + 1;
            i5++;
            i3 = 2;
        }
        zzwj[] zzwjVarArr = new zzwj[2];
        String[] strArr = new String[2];
        int[] iArr6 = new int[2];
        int i14 = 0;
        for (int i15 = 2; i14 < i15; i15 = 2) {
            int i16 = iArr2[i14];
            zzwjVarArr[i14] = new zzwj((zzbr[]) zzei.zzN(zzbrVarArr[i14], i16));
            iArr3[i14] = (int[][]) zzei.zzN(iArr3[i14], i16);
            strArr[i14] = zzlmVarArr[i14].zzU();
            iArr6[i14] = zzlmVarArr[i14].zzb();
            i14++;
        }
        zzxx zzxxVar = new zzxx(strArr, iArr6, zzwjVarArr, iArr4, iArr3, new zzwj((zzbr[]) zzei.zzN(zzbrVarArr[2], iArr2[2])));
        Pair zzd = zzd(zzxxVar, iArr3, iArr4, zzugVar, zzbqVar);
        zzxz[] zzxzVarArr = (zzxz[]) zzd.second;
        List[] listArr = new List[zzxzVarArr.length];
        for (int i17 = 0; i17 < zzxzVarArr.length; i17++) {
            zzxz zzxzVar = zzxzVarArr[i17];
            listArr[i17] = zzxzVar != null ? zzfxn.zzo(zzxzVar) : zzfxn.zzn();
        }
        zzfxk zzfxkVar = new zzfxk();
        for (int i18 = 0; i18 < 2; i18++) {
            zzwj zzd2 = zzxxVar.zzd(i18);
            List list = listArr[i18];
            for (int i19 = 0; i19 < zzd2.zzb; i19++) {
                zzbr zzb2 = zzd2.zzb(i19);
                boolean z4 = zzxxVar.zza(i18, i19, false) != 0;
                int i20 = zzb2.zza;
                int[] iArr7 = new int[i20];
                boolean[] zArr = new boolean[i20];
                for (int i21 = 0; i21 < zzb2.zza; i21++) {
                    iArr7[i21] = zzxxVar.zzb(i18, i19, i21) & 7;
                    int i22 = 0;
                    while (true) {
                        if (i22 >= list.size()) {
                            z = false;
                            break;
                        }
                        zzxz zzxzVar2 = (zzxz) list.get(i22);
                        if (zzxzVar2.zzg().equals(zzb2) && zzxzVar2.zzc(i21) != -1) {
                            z = true;
                            break;
                        }
                        i22++;
                    }
                    zArr[i21] = z;
                }
                zzfxkVar.zzf(new zzbx(zzb2, z4, iArr7, zArr));
            }
        }
        zzwj zze = zzxxVar.zze();
        for (int i23 = 0; i23 < zze.zzb; i23++) {
            zzbr zzb3 = zze.zzb(i23);
            int[] iArr8 = new int[zzb3.zza];
            Arrays.fill(iArr8, 0);
            zzfxkVar.zzf(new zzbx(zzb3, false, iArr8, new boolean[zzb3.zza]));
        }
        return new zzyc((zzln[]) zzd.first, (zzxv[]) zzd.second, new zzby(zzfxkVar.zzi()), zzxxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void zzp(Object obj) {
    }
}
