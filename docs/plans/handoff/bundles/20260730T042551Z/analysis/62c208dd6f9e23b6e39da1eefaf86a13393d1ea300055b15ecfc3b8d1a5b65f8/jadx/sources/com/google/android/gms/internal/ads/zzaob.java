package com.google.android.gms.internal.ads;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import defpackage.Cif;
import java.math.RoundingMode;

/* loaded from: classes.dex */
final class zzaob implements zzaoc {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, FacebookMediationAdapter.ERROR_NULL_CONTEXT, 118, 130, 143, 157, 173, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zzacq zzc;
    private final zzadt zzd;
    private final zzaof zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzdy zzh;
    private final int zzi;
    private final zzab zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzaob(zzacq zzacqVar, zzadt zzadtVar, zzaof zzaofVar) {
        this.zzc = zzacqVar;
        this.zzd = zzadtVar;
        this.zze = zzaofVar;
        int max = Math.max(1, zzaofVar.zzc / 10);
        this.zzi = max;
        zzdy zzdyVar = new zzdy(zzaofVar.zzf);
        zzdyVar.zzk();
        int zzk = zzdyVar.zzk();
        this.zzf = zzk;
        int i = zzaofVar.zzb;
        int i2 = zzaofVar.zzd;
        int m6917if = Cif.m6917if(i2 - (i * 4), 8, zzaofVar.zze * i, 1);
        if (zzk != m6917if) {
            throw zzbc.zza("Expected frames per block: " + m6917if + "; got: " + zzk, null);
        }
        int i3 = zzei.zza;
        int i4 = ((max + zzk) - 1) / zzk;
        this.zzg = new byte[i2 * i4];
        this.zzh = new zzdy((zzk + zzk) * i * i4);
        int i5 = ((zzaofVar.zzc * zzaofVar.zzd) * 8) / zzk;
        zzz zzzVar = new zzz();
        zzzVar.zzaa("audio/raw");
        zzzVar.zzy(i5);
        zzzVar.zzV(i5);
        zzzVar.zzR((max + max) * i);
        zzzVar.zzz(zzaofVar.zzb);
        zzzVar.zzab(zzaofVar.zzc);
        zzzVar.zzU(2);
        this.zzj = zzzVar.zzag();
    }

    private final int zzd(int i) {
        int i2 = this.zze.zzb;
        return i / (i2 + i2);
    }

    private final int zze(int i) {
        return (i + i) * this.zze.zzb;
    }

    private final void zzf(int i) {
        long zzu = this.zzl + zzei.zzu(this.zzn, 1000000L, this.zze.zzc, RoundingMode.DOWN);
        int zze = zze(i);
        this.zzd.zzt(zzu, 1, zze, this.zzm - zze, null);
        this.zzn += i;
        this.zzm -= zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaoc
    public final void zza(int i, long j) {
        this.zzc.zzO(new zzaoi(this.zze, this.zzf, i, j));
        this.zzd.zzm(this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzaoc
    public final void zzb(long j) {
        this.zzk = 0;
        this.zzl = j;
        this.zzm = 0;
        this.zzn = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0026  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x003c -> B:3:0x0021). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzaoc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzaco r21, long r22) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaob.zzc(com.google.android.gms.internal.ads.zzaco, long):boolean");
    }
}
