package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhia implements zzhgs {
    public zzhia(zzhgk zzhgkVar) {
    }

    public static zzhgs zza(zzhgk zzhgkVar) throws GeneralSecurityException {
        if (!zzhcy.zza(1)) {
            throw new GeneralSecurityException("Cannot use AES-CMAC in FIPS-mode.");
        }
        Provider zza = zzhdc.zza();
        if (zza != null) {
            try {
                return zzhhz.zza(zzhgkVar, zza);
            } catch (GeneralSecurityException unused) {
            }
        }
        return new zzhia(zzhgkVar);
    }
}
