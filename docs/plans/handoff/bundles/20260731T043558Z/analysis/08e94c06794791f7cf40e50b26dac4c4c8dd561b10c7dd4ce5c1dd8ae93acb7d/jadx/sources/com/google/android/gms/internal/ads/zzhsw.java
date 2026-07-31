package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhsw {
    public static String zza(zzhsi zzhsiVar) throws GeneralSecurityException {
        zzhsx.zzb(zzhsiVar);
        return zzhsiVar.toString().concat("withECDSA");
    }

    public static String zzb(zzhsi zzhsiVar) throws GeneralSecurityException {
        int ordinal = zzhsiVar.ordinal();
        if (ordinal == 0) {
            return McElieceCCA2KeyGenParameterSpec.SHA1;
        }
        if (ordinal == 1) {
            return McElieceCCA2KeyGenParameterSpec.SHA224;
        }
        if (ordinal == 2) {
            return "SHA-256";
        }
        if (ordinal == 3) {
            return McElieceCCA2KeyGenParameterSpec.SHA384;
        }
        if (ordinal == 4) {
            return "SHA-512";
        }
        throw new GeneralSecurityException("Unsupported hash ".concat(zzhsiVar.toString()));
    }
}
