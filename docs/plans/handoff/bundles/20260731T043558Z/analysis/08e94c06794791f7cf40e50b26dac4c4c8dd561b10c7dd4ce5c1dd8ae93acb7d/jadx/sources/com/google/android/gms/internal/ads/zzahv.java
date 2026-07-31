package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzahv implements zzahu {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final long zzd;
    private final int zze;

    private zzahv(long[] jArr, long[] jArr2, long j, long j2, long j3, int i) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j;
        this.zzd = j3;
        this.zze = i;
    }

    public static zzahv zzd(long j, long j2, zzadw zzadwVar, zzeg zzegVar) {
        long j3;
        int zzs;
        zzegVar.zzk(6);
        int zzB = zzegVar.zzB();
        long j4 = zzadwVar.zzc;
        long j5 = zzB;
        if (zzegVar.zzB() <= 0) {
            return null;
        }
        long zzr = zzep.zzr((r4 * zzadwVar.zzg) - 1, zzadwVar.zzd);
        int zzt = zzegVar.zzt();
        int zzt2 = zzegVar.zzt();
        int zzt3 = zzegVar.zzt();
        zzegVar.zzk(2);
        long j6 = j2 + zzadwVar.zzc;
        long[] jArr = new long[zzt];
        long[] jArr2 = new long[zzt];
        for (int i = 0; i < zzt; i++) {
            jArr[i] = (i * zzr) / zzt;
            jArr2[i] = j6;
            if (zzt3 == 1) {
                zzs = zzegVar.zzs();
            } else if (zzt3 == 2) {
                zzs = zzegVar.zzt();
            } else if (zzt3 == 3) {
                zzs = zzegVar.zzx();
            } else {
                if (zzt3 != 4) {
                    return null;
                }
                zzs = zzegVar.zzH();
            }
            j6 += zzs * zzt2;
        }
        long j7 = j2 + j4;
        long j8 = j5 + j7;
        if (j != -1 && j != j8) {
            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 27 + String.valueOf(j8).length());
            sb.append("VBRI data size mismatch: ");
            sb.append(j);
            sb.append(", ");
            sb.append(j8);
            zzdt.zzc("VbriSeeker", sb.toString());
        }
        if (j8 != j6) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(j8).length() + 43 + String.valueOf(j6).length() + 28);
            sb2.append("VBRI bytes and ToC mismatch (using max): ");
            sb2.append(j8);
            sb2.append(", ");
            sb2.append(j6);
            sb2.append("\nSeeking will be inaccurate.");
            zzdt.zzc("VbriSeeker", sb2.toString());
            j3 = Math.max(j8, j6);
        } else {
            j3 = j8;
        }
        return new zzahv(jArr, jArr2, zzr, j7, j3, zzadwVar.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final zzaeb zzc(long j) {
        long[] jArr = this.zza;
        int zzm = zzep.zzm(jArr, j, true, true);
        long j2 = jArr[zzm];
        long[] jArr2 = this.zzb;
        zzaee zzaeeVar = new zzaee(j2, jArr2[zzm]);
        if (zzaeeVar.zzb >= j || zzm == jArr.length - 1) {
            return new zzaeb(zzaeeVar, zzaeeVar);
        }
        int i = zzm + 1;
        return new zzaeb(zzaeeVar, new zzaee(jArr[i], jArr2[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final long zze(long j) {
        return this.zza[zzep.zzm(this.zzb, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final long zzf() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final int zzg() {
        return this.zze;
    }
}
