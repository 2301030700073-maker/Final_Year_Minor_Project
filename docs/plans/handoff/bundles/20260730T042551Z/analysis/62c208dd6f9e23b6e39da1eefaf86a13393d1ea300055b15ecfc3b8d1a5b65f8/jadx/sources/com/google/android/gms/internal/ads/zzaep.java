package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzaep implements zzabx {
    private final zzacy zza;
    private final int zzb;
    private final zzact zzc = new zzact();

    public /* synthetic */ zzaep(zzacy zzacyVar, int i, zzaeq zzaeqVar) {
        this.zza = zzacyVar;
        this.zzb = i;
    }

    private final long zzc(zzaco zzacoVar) {
        while (zzacoVar.zze() < zzacoVar.zzd() - 6) {
            zzacy zzacyVar = this.zza;
            int i = this.zzb;
            zzact zzactVar = this.zzc;
            long zze = zzacoVar.zze();
            byte[] bArr = new byte[2];
            zzacoVar.zzh(bArr, 0, 2);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                zzacoVar.zzj();
                zzacoVar.zzg((int) (zze - zzacoVar.zzf()));
            } else {
                zzdy zzdyVar = new zzdy(16);
                System.arraycopy(bArr, 0, zzdyVar.zzN(), 0, 2);
                zzdyVar.zzK(zzacr.zza(zzacoVar, zzdyVar.zzN(), 2, 14));
                zzacoVar.zzj();
                zzacoVar.zzg((int) (zze - zzacoVar.zzf()));
                if (zzacu.zzc(zzdyVar, zzacyVar, i, zzactVar)) {
                    break;
                }
            }
            zzacoVar.zzg(1);
        }
        if (zzacoVar.zze() < zzacoVar.zzd() - 6) {
            return this.zzc.zza;
        }
        zzacoVar.zzg((int) (zzacoVar.zzd() - zzacoVar.zze()));
        return this.zza.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzabx
    public final zzabw zza(zzaco zzacoVar, long j) {
        long zzf = zzacoVar.zzf();
        long zzc = zzc(zzacoVar);
        long zze = zzacoVar.zze();
        zzacoVar.zzg(Math.max(6, this.zza.zzc));
        long zzc2 = zzc(zzacoVar);
        return (zzc > j || zzc2 <= j) ? zzc2 <= j ? zzabw.zzf(zzc2, zzacoVar.zze()) : zzabw.zzd(zzc, zzf) : zzabw.zze(zze);
    }

    @Override // com.google.android.gms.internal.ads.zzabx
    public final /* synthetic */ void zzb() {
    }
}
