package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzacw implements zzadm {
    private final zzacy zza;
    private final long zzb;

    public zzacw(zzacy zzacyVar, long j) {
        this.zza = zzacyVar;
        this.zzb = j;
    }

    private final zzadn zzb(long j, long j2) {
        return new zzadn((j * 1000000) / this.zza.zze, this.zzb + j2);
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final long zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final zzadk zzg(long j) {
        zzcw.zzb(this.zza.zzk);
        zzacy zzacyVar = this.zza;
        zzacx zzacxVar = zzacyVar.zzk;
        long[] jArr = zzacxVar.zza;
        long[] jArr2 = zzacxVar.zzb;
        int zzd = zzei.zzd(jArr, zzacyVar.zzb(j), true, false);
        zzadn zzb = zzb(zzd == -1 ? 0L : jArr[zzd], zzd != -1 ? jArr2[zzd] : 0L);
        if (zzb.zzb == j || zzd == jArr.length - 1) {
            return new zzadk(zzb, zzb);
        }
        int i = zzd + 1;
        return new zzadk(zzb, zzb(jArr[i], jArr2[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final boolean zzh() {
        return true;
    }
}
