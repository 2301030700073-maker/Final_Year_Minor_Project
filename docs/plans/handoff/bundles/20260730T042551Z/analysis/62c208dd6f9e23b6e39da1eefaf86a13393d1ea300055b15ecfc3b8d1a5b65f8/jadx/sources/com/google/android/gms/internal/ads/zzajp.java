package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
final class zzajp extends zzajt {
    private static final byte[] zza = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] zzb = {79, 112, 117, 115, 84, 97, 103, 115};
    private boolean zzc;

    public static boolean zzd(zzdy zzdyVar) {
        return zzk(zzdyVar, zza);
    }

    private static boolean zzk(zzdy zzdyVar, byte[] bArr) {
        if (zzdyVar.zzb() < 8) {
            return false;
        }
        int zzd = zzdyVar.zzd();
        byte[] bArr2 = new byte[8];
        zzdyVar.zzH(bArr2, 0, 8);
        zzdyVar.zzL(zzd);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final long zza(zzdy zzdyVar) {
        return zzg(zzadi.zzd(zzdyVar.zzN()));
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final boolean zzc(zzdy zzdyVar, long j, zzajq zzajqVar) {
        if (zzk(zzdyVar, zza)) {
            byte[] copyOf = Arrays.copyOf(zzdyVar.zzN(), zzdyVar.zze());
            int i = copyOf[9] & 255;
            List zze = zzadi.zze(copyOf);
            if (zzajqVar.zza == null) {
                zzz zzzVar = new zzz();
                zzzVar.zzaa("audio/opus");
                zzzVar.zzz(i);
                zzzVar.zzab(48000);
                zzzVar.zzN(zze);
                zzajqVar.zza = zzzVar.zzag();
                return true;
            }
        } else {
            if (!zzk(zzdyVar, zzb)) {
                zzcw.zzb(zzajqVar.zza);
                return false;
            }
            zzcw.zzb(zzajqVar.zza);
            if (!this.zzc) {
                this.zzc = true;
                zzdyVar.zzM(8);
                zzay zzb2 = zzadz.zzb(zzfxn.zzm(zzadz.zzc(zzdyVar, false, false).zza));
                if (zzb2 != null) {
                    zzz zzb3 = zzajqVar.zza.zzb();
                    zzb3.zzT(zzb2.zzd(zzajqVar.zza.zzl));
                    zzajqVar.zza = zzb3.zzag();
                }
            }
        }
        return true;
    }
}
