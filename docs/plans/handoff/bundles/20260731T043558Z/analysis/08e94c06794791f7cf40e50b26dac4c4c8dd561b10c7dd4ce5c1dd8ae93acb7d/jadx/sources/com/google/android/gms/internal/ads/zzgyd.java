package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgyd {
    public static final /* synthetic */ int zza = 0;
    private static final zzhfp zzb = zzhfp.zzd(zzgya.zza, zzgxz.class, zzgvm.class);
    private static final zzgvu zzc = zzhef.zze("type.googleapis.com/google.crypto.tink.AesGcmKey", zzgvm.class, zzhkw.SYMMETRIC, zzhjn.zze());
    private static final zzhet zzd = zzgyc.zza;
    private static final zzheq zze = zzgyb.zza;
    private static final int zzf = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzf;
        if (!zzhcy.zza(i)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        int i2 = zzhbi.zza;
        zzhbi.zza(zzhfb.zza());
        zzhey.zza().zzb(zzb);
        zzhex zza2 = zzhex.zza();
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM", zzhae.zza);
        zzgye zzgyeVar = new zzgye(null);
        zzgyeVar.zzb(12);
        zzgyeVar.zza(16);
        zzgyeVar.zzc(16);
        zzgyf zzgyfVar = zzgyf.zzc;
        zzgyeVar.zzd(zzgyfVar);
        hashMap.put("AES128_GCM_RAW", zzgyeVar.zze());
        hashMap.put("AES256_GCM", zzhae.zzb);
        zzgye zzgyeVar2 = new zzgye(null);
        zzgyeVar2.zzb(12);
        zzgyeVar2.zza(32);
        zzgyeVar2.zzc(16);
        zzgyeVar2.zzd(zzgyfVar);
        hashMap.put("AES256_GCM_RAW", zzgyeVar2.zze());
        zza2.zzd(Collections.unmodifiableMap(hashMap));
        zzheu.zza().zzb(zzd, zzgyg.class);
        zzhes.zza().zzb(zze, zzgyg.class);
        zzhdw.zza().zzf(zzc, i, true);
    }
}
