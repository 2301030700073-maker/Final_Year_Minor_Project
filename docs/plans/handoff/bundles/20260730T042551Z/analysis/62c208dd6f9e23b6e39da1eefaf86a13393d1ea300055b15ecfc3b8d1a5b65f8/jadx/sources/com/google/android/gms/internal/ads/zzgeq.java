package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgeq {
    public static zzgek zza(byte[] bArr) {
        try {
            zzgsp zzf = zzgsp.zzf(bArr, zzgxb.zza());
            zzgmk zzc = zzgmk.zzc();
            zzgni zza = zzgni.zza(zzf);
            return !zzc.zzk(zza) ? new zzgll(zza) : zzc.zzb(zza);
        } catch (IOException e) {
            throw new GeneralSecurityException("Failed to parse proto", e);
        }
    }

    public static byte[] zzb(zzgek zzgekVar) {
        return ((zzgni) zzgmk.zzc().zze(zzgekVar, zzgni.class)).zzc().zzaV();
    }
}
