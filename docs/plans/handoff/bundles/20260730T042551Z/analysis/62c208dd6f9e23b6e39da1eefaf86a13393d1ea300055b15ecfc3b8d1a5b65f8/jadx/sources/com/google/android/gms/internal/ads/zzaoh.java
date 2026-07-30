package com.google.android.gms.internal.ads;

import android.util.Pair;
import defpackage.Cpublic;

/* loaded from: classes.dex */
final class zzaoh {
    public static Pair zza(zzaco zzacoVar) {
        zzacoVar.zzj();
        zzaog zzd = zzd(1684108385, zzacoVar, new zzdy(8));
        zzacoVar.zzk(8);
        return Pair.create(Long.valueOf(zzacoVar.zzf()), Long.valueOf(zzd.zzb));
    }

    public static zzaof zzb(zzaco zzacoVar) {
        byte[] bArr;
        zzdy zzdyVar = new zzdy(16);
        zzaog zzd = zzd(1718449184, zzacoVar, zzdyVar);
        zzcw.zzf(zzd.zzb >= 16);
        zzacoVar.zzh(zzdyVar.zzN(), 0, 16);
        zzdyVar.zzL(0);
        int zzk = zzdyVar.zzk();
        int zzk2 = zzdyVar.zzk();
        int zzj = zzdyVar.zzj();
        int zzj2 = zzdyVar.zzj();
        int zzk3 = zzdyVar.zzk();
        int zzk4 = zzdyVar.zzk();
        int i = ((int) zzd.zzb) - 16;
        if (i > 0) {
            bArr = new byte[i];
            zzacoVar.zzh(bArr, 0, i);
        } else {
            bArr = zzei.zzf;
        }
        byte[] bArr2 = bArr;
        zzacoVar.zzk((int) (zzacoVar.zze() - zzacoVar.zzf()));
        return new zzaof(zzk, zzk2, zzj, zzj2, zzk3, zzk4, bArr2);
    }

    public static boolean zzc(zzaco zzacoVar) {
        zzdy zzdyVar = new zzdy(8);
        int i = zzaog.zza(zzacoVar, zzdyVar).zza;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        zzacoVar.zzh(zzdyVar.zzN(), 0, 4);
        zzdyVar.zzL(0);
        int zzg = zzdyVar.zzg();
        if (zzg == 1463899717) {
            return true;
        }
        zzdo.zzc("WavHeaderReader", "Unsupported form type: " + zzg);
        return false;
    }

    private static zzaog zzd(int i, zzaco zzacoVar, zzdy zzdyVar) {
        zzaog zza = zzaog.zza(zzacoVar, zzdyVar);
        while (true) {
            int i2 = zza.zza;
            if (i2 == i) {
                return zza;
            }
            Cpublic.m7824goto("Ignoring unknown WAV chunk: ", i2, "WavHeaderReader");
            long j = zza.zzb;
            long j2 = j & 1;
            long j3 = j + 8;
            if (j2 != 0) {
                j3++;
            }
            if (j3 > 2147483647L) {
                throw zzbc.zzc("Chunk is too large (~2GB+) to skip; id: " + zza.zza);
            }
            zzacoVar.zzk((int) j3);
            zza = zzaog.zza(zzacoVar, zzdyVar);
        }
    }
}
