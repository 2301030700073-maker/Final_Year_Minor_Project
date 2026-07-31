package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhih implements zzgwi {
    private zzhih(zzgwi zzgwiVar, zzhlt zzhltVar, byte[] bArr) {
    }

    public static zzgwi zza(zzhei zzheiVar) throws GeneralSecurityException {
        byte[] zzc;
        zzhfw zzc2 = zzheiVar.zzc(zzgvr.zza());
        zzgwi zzgwiVar = (zzgwi) zzhdw.zza().zzc(zzc2.zzg(), zzgwi.class).zza(zzc2.zzb());
        zzhlt zzd = zzc2.zzd();
        int ordinal = zzd.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3) {
                    zzc = zzhfc.zza.zzc();
                } else if (ordinal != 4) {
                    throw new GeneralSecurityException("unknown output prefix type");
                }
            }
            zzc = zzhfc.zza(zzheiVar.zzb().intValue()).zzc();
        } else {
            zzc = zzhfc.zzb(zzheiVar.zzb().intValue()).zzc();
        }
        return new zzhih(zzgwiVar, zzd, zzc);
    }
}
