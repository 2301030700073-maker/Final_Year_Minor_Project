package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzadk {
    public static boolean zzb(zzadb zzadbVar, zzadj zzadjVar) throws IOException {
        zzadbVar.zzl();
        zzef zzefVar = new zzef(new byte[4], 4);
        zzadbVar.zzi(zzefVar.zza, 0, 4);
        boolean zzi = zzefVar.zzi();
        int zzj = zzefVar.zzj(7);
        int zzj2 = zzefVar.zzj(24) + 4;
        if (zzj == 0) {
            byte[] bArr = new byte[38];
            zzadbVar.zzc(bArr, 0, 38);
            zzadjVar.zza = new zzadn(bArr, 4);
        } else {
            zzadn zzadnVar = zzadjVar.zza;
            if (zzadnVar == null) {
                throw new IllegalArgumentException();
            }
            if (zzj == 3) {
                zzeg zzegVar = new zzeg(zzj2);
                zzadbVar.zzc(zzegVar.zzi(), 0, zzj2);
                zzadjVar.zza = zzadnVar.zze(zzc(zzegVar));
            } else if (zzj == 4) {
                zzeg zzegVar2 = new zzeg(zzj2);
                zzadbVar.zzc(zzegVar2.zzi(), 0, zzj2);
                zzegVar2.zzk(4);
                zzadjVar.zza = new zzadn(zzadnVar.zza, zzadnVar.zzb, zzadnVar.zzc, zzadnVar.zzd, zzadnVar.zze, zzadnVar.zzg, zzadnVar.zzh, zzadnVar.zzj, zzadnVar.zzk, zzadnVar.zzd(zzaes.zzc(Arrays.asList(zzaes.zzb(zzegVar2, false, false).zza))));
            } else if (zzj == 6) {
                zzeg zzegVar3 = new zzeg(zzj2);
                zzadbVar.zzc(zzegVar3.zzi(), 0, zzj2);
                zzegVar3.zzk(4);
                zzadjVar.zza = new zzadn(zzadnVar.zza, zzadnVar.zzb, zzadnVar.zzc, zzadnVar.zzd, zzadnVar.zze, zzadnVar.zzg, zzadnVar.zzh, zzadnVar.zzj, zzadnVar.zzk, zzadnVar.zzd(new zzap(zzgpe.zzj(zzagd.zzb(zzegVar3)))));
            } else {
                zzadbVar.zzf(zzj2);
            }
        }
        return zzi;
    }

    public static zzadm zzc(zzeg zzegVar) {
        zzegVar.zzk(1);
        int zzx = zzegVar.zzx();
        long zzg = zzegVar.zzg();
        long j = zzx;
        int i = zzx / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long zzD = zzegVar.zzD();
            if (zzD == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = zzD;
            jArr2[i2] = zzegVar.zzD();
            zzegVar.zzk(2);
            i2++;
        }
        zzegVar.zzk((int) ((zzg + j) - zzegVar.zzg()));
        return new zzadm(jArr, jArr2);
    }

    public static zzap zza(zzadb zzadbVar, boolean z) throws IOException {
        zzap zza = new zzadu().zza(zzadbVar, z ? null : zzagp.zza, 0);
        if (zza == null || zza.zza() == 0) {
            return null;
        }
        return zza;
    }
}
