package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzahw {
    public final zzadf zza;
    public final long zzb;
    public final long zzc;
    public final int zzd;
    public final int zze;
    public final long[] zzf;

    private zzahw(zzadf zzadfVar, long j, long j2, long[] jArr, int i, int i2) {
        this.zza = new zzadf(zzadfVar);
        this.zzb = j;
        this.zzc = j2;
        this.zzf = jArr;
        this.zzd = i;
        this.zze = i2;
    }

    public static zzahw zzb(zzadf zzadfVar, zzdy zzdyVar) {
        long[] jArr;
        int i;
        int i2;
        int zzg = zzdyVar.zzg();
        int zzp = (zzg & 1) != 0 ? zzdyVar.zzp() : -1;
        long zzu = (zzg & 2) != 0 ? zzdyVar.zzu() : -1L;
        if ((zzg & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i3 = 0; i3 < 100; i3++) {
                jArr2[i3] = zzdyVar.zzm();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((zzg & 8) != 0) {
            zzdyVar.zzM(4);
        }
        if (zzdyVar.zzb() >= 24) {
            zzdyVar.zzM(21);
            int zzo = zzdyVar.zzo();
            i2 = zzo & 4095;
            i = zzo >> 12;
        } else {
            i = -1;
            i2 = -1;
        }
        return new zzahw(zzadfVar, zzp, zzu, jArr, i, i2);
    }

    public final long zza() {
        long j = this.zzb;
        if (j == -1 || j == 0) {
            return -9223372036854775807L;
        }
        return zzei.zzt((j * r4.zzg) - 1, this.zza.zzd);
    }
}
