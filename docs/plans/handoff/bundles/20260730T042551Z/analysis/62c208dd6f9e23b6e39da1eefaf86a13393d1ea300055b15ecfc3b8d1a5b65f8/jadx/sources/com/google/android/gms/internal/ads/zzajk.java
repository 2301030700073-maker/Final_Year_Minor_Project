package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
final class zzajk extends zzajt {
    private zzacy zza;
    private zzajj zzb;

    private static boolean zzd(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final long zza(zzdy zzdyVar) {
        if (!zzd(zzdyVar.zzN())) {
            return -1L;
        }
        int i = (zzdyVar.zzN()[2] & 255) >> 4;
        if (i != 6) {
            if (i == 7) {
                i = 7;
            }
            int zza = zzacu.zza(zzdyVar, i);
            zzdyVar.zzL(0);
            return zza;
        }
        zzdyVar.zzM(4);
        zzdyVar.zzx();
        int zza2 = zzacu.zza(zzdyVar, i);
        zzdyVar.zzL(0);
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzb = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final boolean zzc(zzdy zzdyVar, long j, zzajq zzajqVar) {
        byte[] zzN = zzdyVar.zzN();
        zzacy zzacyVar = this.zza;
        if (zzacyVar == null) {
            zzacy zzacyVar2 = new zzacy(zzN, 17);
            this.zza = zzacyVar2;
            zzajqVar.zza = zzacyVar2.zzc(Arrays.copyOfRange(zzN, 9, zzdyVar.zze()), null);
            return true;
        }
        if ((zzN[0] & Byte.MAX_VALUE) == 3) {
            zzacx zzb = zzacv.zzb(zzdyVar);
            zzacy zzf = zzacyVar.zzf(zzb);
            this.zza = zzf;
            this.zzb = new zzajj(zzf, zzb);
            return true;
        }
        if (!zzd(zzN)) {
            return true;
        }
        zzajj zzajjVar = this.zzb;
        if (zzajjVar != null) {
            zzajjVar.zza(j);
            zzajqVar.zzb = this.zzb;
        }
        zzajqVar.zza.getClass();
        return false;
    }
}
