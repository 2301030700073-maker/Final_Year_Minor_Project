package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;

/* loaded from: classes.dex */
public final class zzgun implements zzgdn {
    private final SecretKey zza;
    private final byte[] zzb;

    private zzgun(byte[] bArr, zzgvo zzgvoVar) {
        if (!zzgks.zza(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        this.zza = zzgjd.zzc(bArr);
        this.zzb = zzgvoVar.zzc();
    }

    public static zzgdn zzb(zzgfx zzgfxVar) {
        return new zzgun(zzgfxVar.zzd().zzd(zzgdw.zza()), zzgfxVar.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgdn
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        byte[] bArr3 = this.zzb;
        if (bArr.length < bArr3.length + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!zzgnu.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        AlgorithmParameterSpec zza = zzgjd.zza(bArr, this.zzb.length, 12);
        SecretKey secretKey = this.zza;
        Cipher zzb = zzgjd.zzb();
        zzb.init(2, secretKey, zza);
        if (bArr2 != null && bArr2.length != 0) {
            zzb.updateAAD(bArr2);
        }
        return zzb.doFinal(bArr, this.zzb.length + 12, (r1 - r7) - 12);
    }
}
