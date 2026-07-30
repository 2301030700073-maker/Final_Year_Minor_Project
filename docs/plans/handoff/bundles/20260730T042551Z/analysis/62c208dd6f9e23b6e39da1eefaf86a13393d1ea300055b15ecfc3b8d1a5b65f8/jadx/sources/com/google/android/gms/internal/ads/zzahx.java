package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzahx implements zzahu {
    private final long zza;
    private final int zzb;
    private final long zzc;
    private final int zzd;
    private final long zze;
    private final long zzf;
    private final long[] zzg;

    private zzahx(long j, int i, long j2, int i2, long j3, long[] jArr) {
        this.zza = j;
        this.zzb = i;
        this.zzc = j2;
        this.zzd = i2;
        this.zze = j3;
        this.zzg = jArr;
        this.zzf = j3 != -1 ? j + j3 : -1L;
    }

    public static zzahx zzb(zzahw zzahwVar, long j) {
        long[] jArr;
        long zza = zzahwVar.zza();
        if (zza == -9223372036854775807L) {
            return null;
        }
        long j2 = zzahwVar.zzc;
        if (j2 == -1 || (jArr = zzahwVar.zzf) == null) {
            zzadf zzadfVar = zzahwVar.zza;
            return new zzahx(j, zzadfVar.zzc, zza, zzadfVar.zzf, -1L, null);
        }
        zzadf zzadfVar2 = zzahwVar.zza;
        return new zzahx(j, zzadfVar2.zzc, zza, zzadfVar2.zzf, j2, jArr);
    }

    private final long zzf(int i) {
        return (this.zzc * i) / 100;
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final int zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final long zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final long zze(long j) {
        if (!zzh()) {
            return 0L;
        }
        long j2 = j - this.zza;
        if (j2 <= this.zzb) {
            return 0L;
        }
        long[] jArr = this.zzg;
        zzcw.zzb(jArr);
        double d = (j2 * 256.0d) / this.zze;
        int zzd = zzei.zzd(jArr, (long) d, true, true);
        long zzf = zzf(zzd);
        long j3 = jArr[zzd];
        int i = zzd + 1;
        long zzf2 = zzf(i);
        return Math.round((j3 == (zzd == 99 ? 256L : jArr[i]) ? 0.0d : (d - j3) / (r0 - j3)) * (zzf2 - zzf)) + zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final zzadk zzg(long j) {
        if (!zzh()) {
            zzadn zzadnVar = new zzadn(0L, this.zza + this.zzb);
            return new zzadk(zzadnVar, zzadnVar);
        }
        long max = Math.max(0L, Math.min(j, this.zzc));
        double d = (max * 100.0d) / this.zzc;
        double d2 = 0.0d;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                d2 = 256.0d;
            } else {
                int i = (int) d;
                long[] jArr = this.zzg;
                zzcw.zzb(jArr);
                double d3 = jArr[i];
                d2 = (((i == 99 ? 256.0d : jArr[i + 1]) - d3) * (d - i)) + d3;
            }
        }
        long j2 = this.zze;
        zzadn zzadnVar2 = new zzadn(max, this.zza + Math.max(this.zzb, Math.min(Math.round((d2 / 256.0d) * j2), j2 - 1)));
        return new zzadk(zzadnVar2, zzadnVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final boolean zzh() {
        return this.zzg != null;
    }
}
