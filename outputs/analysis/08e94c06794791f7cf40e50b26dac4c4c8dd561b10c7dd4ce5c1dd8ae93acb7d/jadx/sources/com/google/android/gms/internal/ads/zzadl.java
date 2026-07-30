package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzadl implements zzaed {
    private final zzadn zza;
    private final long zzb;

    public zzadl(zzadn zzadnVar, long j) {
        this.zza = zzadnVar;
        this.zzb = j;
    }

    private final zzaee zzd(long j, long j2) {
        return new zzaee((j * 1000000) / this.zza.zze, this.zzb + j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final long zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final zzaeb zzc(long j) {
        zzadn zzadnVar = this.zza;
        zzadm zzadmVar = zzadnVar.zzk;
        zzadmVar.getClass();
        long zzb = zzadnVar.zzb(j);
        long[] jArr = zzadmVar.zza;
        int zzm = zzep.zzm(jArr, zzb, true, false);
        long j2 = zzm == -1 ? 0L : jArr[zzm];
        long[] jArr2 = zzadmVar.zzb;
        zzaee zzd = zzd(j2, zzm != -1 ? jArr2[zzm] : 0L);
        if (zzd.zzb == j || zzm == jArr.length - 1) {
            return new zzaeb(zzd, zzd);
        }
        int i = zzm + 1;
        return new zzaeb(zzd, zzd(jArr[i], jArr2[i]));
    }
}
