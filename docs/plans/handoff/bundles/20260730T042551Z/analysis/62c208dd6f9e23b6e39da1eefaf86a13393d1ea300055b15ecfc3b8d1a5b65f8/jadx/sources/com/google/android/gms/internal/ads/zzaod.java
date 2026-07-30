package com.google.android.gms.internal.ads;

import java.math.RoundingMode;

/* loaded from: classes.dex */
final class zzaod implements zzaoc {
    private final zzacq zza;
    private final zzadt zzb;
    private final zzaof zzc;
    private final zzab zzd;
    private final int zze;
    private long zzf;
    private int zzg;
    private long zzh;

    public zzaod(zzacq zzacqVar, zzadt zzadtVar, zzaof zzaofVar, String str, int i) {
        this.zza = zzacqVar;
        this.zzb = zzadtVar;
        this.zzc = zzaofVar;
        int i2 = zzaofVar.zzb * zzaofVar.zze;
        int i3 = zzaofVar.zzd;
        int i4 = i2 / 8;
        if (i3 != i4) {
            throw zzbc.zza("Expected block size: " + i4 + "; got: " + i3, null);
        }
        int i5 = zzaofVar.zzc * i4;
        int i6 = i5 * 8;
        int max = Math.max(i4, i5 / 10);
        this.zze = max;
        zzz zzzVar = new zzz();
        zzzVar.zzaa(str);
        zzzVar.zzy(i6);
        zzzVar.zzV(i6);
        zzzVar.zzR(max);
        zzzVar.zzz(zzaofVar.zzb);
        zzzVar.zzab(zzaofVar.zzc);
        zzzVar.zzU(i);
        this.zzd = zzzVar.zzag();
    }

    @Override // com.google.android.gms.internal.ads.zzaoc
    public final void zza(int i, long j) {
        this.zza.zzO(new zzaoi(this.zzc, 1, i, j));
        this.zzb.zzm(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzaoc
    public final void zzb(long j) {
        this.zzf = j;
        this.zzg = 0;
        this.zzh = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaoc
    public final boolean zzc(zzaco zzacoVar, long j) {
        int i;
        int i2;
        long j2 = j;
        while (j2 > 0 && (i = this.zzg) < (i2 = this.zze)) {
            int zzf = this.zzb.zzf(zzacoVar, (int) Math.min(i2 - i, j2), true);
            if (zzf == -1) {
                j2 = 0;
            } else {
                this.zzg += zzf;
                j2 -= zzf;
            }
        }
        zzaof zzaofVar = this.zzc;
        int i3 = this.zzg;
        int i4 = zzaofVar.zzd;
        int i5 = i3 / i4;
        if (i5 > 0) {
            long zzu = this.zzf + zzei.zzu(this.zzh, 1000000L, zzaofVar.zzc, RoundingMode.DOWN);
            int i6 = i5 * i4;
            int i7 = this.zzg - i6;
            this.zzb.zzt(zzu, 1, i6, i7, null);
            this.zzh += i5;
            this.zzg = i7;
        }
        return j2 <= 0;
    }
}
