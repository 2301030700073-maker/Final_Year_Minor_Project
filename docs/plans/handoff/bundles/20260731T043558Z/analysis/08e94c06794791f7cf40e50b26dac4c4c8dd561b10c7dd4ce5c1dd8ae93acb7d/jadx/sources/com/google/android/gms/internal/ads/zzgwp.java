package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgwp {
    public static byte[] zza(zzgwj zzgwjVar) throws GeneralSecurityException {
        return ((zzhfx) zzhfb.zza().zzk(zzgwjVar, zzhfx.class)).zzc().zzaN();
    }

    public static zzgwj zzb(byte[] bArr) throws GeneralSecurityException {
        try {
            zzhla zzd = zzhla.zzd(bArr, zzhvy.zza());
            zzhfb zza = zzhfb.zza();
            zzhfx zzb = zzhfx.zzb(zzd);
            return !zza.zzi(zzb) ? new zzhej(zzb) : zza.zzj(zzb);
        } catch (IOException e) {
            throw new GeneralSecurityException("Failed to parse proto", e);
        }
    }
}
