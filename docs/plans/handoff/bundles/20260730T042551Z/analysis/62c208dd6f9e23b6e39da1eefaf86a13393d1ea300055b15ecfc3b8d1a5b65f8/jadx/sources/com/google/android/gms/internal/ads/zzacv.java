package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzacv {
    public static zzay zza(zzaco zzacoVar, boolean z) {
        zzay zza = new zzadd().zza(zzacoVar, z ? null : zzagg.zza);
        if (zza == null || zza.zza() == 0) {
            return null;
        }
        return zza;
    }

    public static zzacx zzb(zzdy zzdyVar) {
        zzdyVar.zzM(1);
        int zzo = zzdyVar.zzo();
        long zzd = zzdyVar.zzd();
        long j = zzo;
        int i = zzo / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long zzt = zzdyVar.zzt();
            if (zzt == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = zzt;
            jArr2[i2] = zzdyVar.zzt();
            zzdyVar.zzM(2);
            i2++;
        }
        zzdyVar.zzM((int) ((zzd + j) - zzdyVar.zzd()));
        return new zzacx(jArr, jArr2);
    }
}
