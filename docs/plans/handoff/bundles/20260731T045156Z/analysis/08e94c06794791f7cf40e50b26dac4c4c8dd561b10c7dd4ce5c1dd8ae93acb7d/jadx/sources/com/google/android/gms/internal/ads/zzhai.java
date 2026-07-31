package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhai {
    private static final zzheq zza = zzhah.zza;
    private static final zzhfp zzb = zzhfp.zzd(zzhag.zza, zzhaf.class, zzgvm.class);

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzhcl.zza;
        zzhcl.zza(zzhfb.zza());
        zzhex zza2 = zzhex.zza();
        HashMap hashMap = new HashMap();
        hashMap.put("XAES_256_GCM_192_BIT_NONCE", zzhae.zzg);
        hashMap.put("XAES_256_GCM_192_BIT_NONCE_NO_PREFIX", zzhae.zzh);
        hashMap.put("XAES_256_GCM_160_BIT_NONCE_NO_PREFIX", zzhae.zzi);
        hashMap.put("X_AES_GCM_8_BYTE_SALT_NO_PREFIX", zzhae.zzj);
        zza2.zzd(Collections.unmodifiableMap(hashMap));
        zzhey.zza().zzb(zzb);
        zzhes.zza().zzb(zza, zzhak.class);
    }
}
