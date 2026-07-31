package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhbd {
    private static final ThreadLocal zza = new zzhbc();

    public static Cipher zza() {
        return (Cipher) zza.get();
    }

    public static SecretKey zzb(byte[] bArr) throws GeneralSecurityException {
        zzhsx.zza(bArr.length);
        return new SecretKeySpec(bArr, "AES");
    }

    public static AlgorithmParameterSpec zzc(byte[] bArr, int i, int i2) {
        Integer zzd = zzhgi.zzd();
        if (zzd != null) {
            zzd.intValue();
        }
        return new GCMParameterSpec(128, bArr, i, 12);
    }
}
