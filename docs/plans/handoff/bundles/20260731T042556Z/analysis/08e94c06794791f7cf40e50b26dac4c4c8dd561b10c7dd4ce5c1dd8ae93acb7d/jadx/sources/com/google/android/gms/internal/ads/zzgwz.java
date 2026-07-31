package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgwz {
    public static final /* synthetic */ int zza = 0;
    private static final zzhds zzb = zzb();

    public static zzgvq zza() throws GeneralSecurityException {
        if (zzhcz.zza()) {
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode");
        }
        return zzb;
    }

    private static zzhds zzb() {
        try {
            zzhfq zza2 = zzhft.zza();
            zzgxf.zzd(zza2);
            zza2.zza(zzhfp.zzd(zzgwx.zza, zzgxh.class, zzgvm.class));
            zza2.zza(zzhfp.zzd(zzgwv.zza, zzgxz.class, zzgvm.class));
            zza2.zza(zzhfp.zzd(zzgww.zza, zzgyi.class, zzgvm.class));
            zza2.zza(zzhfp.zzd(zzgwu.zza, zzgxr.class, zzgvm.class));
            zza2.zza(zzhfp.zzd(zzgwt.zza, zzgyq.class, zzgvm.class));
            zza2.zza(zzhfp.zzd(zzgws.zza, zzhal.class, zzgvm.class));
            zza2.zza(zzhfp.zzd(zzgwy.zza, zzhaf.class, zzgvm.class));
            return zzhds.zzb(zza2.zzc());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
