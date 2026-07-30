package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.media3.common.C;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzahp implements zzahu {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;

    private zzahp(long[] jArr, long[] jArr2, long j) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j == C.TIME_UNSET ? zzep.zzq(jArr2[jArr2.length - 1]) : j;
    }

    public static zzahp zzd(long j, zzagt zzagtVar, long j2) {
        int length = zzagtVar.zzd.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += zzagtVar.zzb + r0[i3];
            j3 += zzagtVar.zzc + zzagtVar.zze[i3];
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new zzahp(jArr, jArr2, j2);
    }

    private static Pair zzh(long j, long[] jArr, long[] jArr2) {
        int zzm = zzep.zzm(jArr, j, true, true);
        long j2 = jArr[zzm];
        long j3 = jArr2[zzm];
        int i = zzm + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((jArr[i] == j2 ? 0.0d : (j - j2) / (r6 - j2)) * (jArr2[i] - j3))) + j3));
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
        String str = zzep.zza;
        Pair zzh = zzh(zzep.zzp(Math.max(0L, Math.min(j, this.zzc))), this.zzb, this.zza);
        zzaee zzaeeVar = new zzaee(zzep.zzq(((Long) zzh.first).longValue()), ((Long) zzh.second).longValue());
        return new zzaeb(zzaeeVar, zzaeeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final long zze(long j) {
        return zzep.zzq(((Long) zzh(j, this.zza, this.zzb).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final long zzf() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzahu
    public final int zzg() {
        return C.RATE_UNSET_INT;
    }
}
