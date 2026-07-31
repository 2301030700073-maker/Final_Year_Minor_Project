package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgyt {
    public static final /* synthetic */ int zza = 0;
    private static final zzhfp zzb = zzhfp.zzd(zzgys.zza, zzgyq.class, zzgvm.class);
    private static final zzheq zzc = zzgyr.zza;
    private static final zzgvu zzd = zzhef.zze("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", zzgvm.class, zzhkw.SYMMETRIC, zzhjv.zze());

    public static void zza(boolean z) throws GeneralSecurityException {
        if (!zzhcy.zza(1)) {
            throw new GeneralSecurityException("Registering ChaCha20Poly1305 is not supported in FIPS mode");
        }
        int i = zzhbw.zza;
        zzhbw.zza(zzhfb.zza());
        zzhey.zza().zzb(zzb);
        zzhes.zza().zzb(zzc, zzgyv.class);
        zzhex zza2 = zzhex.zza();
        HashMap hashMap = new HashMap();
        hashMap.put("CHACHA20_POLY1305", zzgyv.zzb(zzgyu.zza));
        hashMap.put("CHACHA20_POLY1305_RAW", zzgyv.zzb(zzgyu.zzc));
        zza2.zzd(Collections.unmodifiableMap(hashMap));
        zzhdw.zza().zzb(zzd, true);
    }
}
