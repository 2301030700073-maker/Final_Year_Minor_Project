package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzgvn implements zzgdn {
    private final zzgkb zza;
    private final byte[] zzb;

    private zzgvn(byte[] bArr, byte[] bArr2) {
        this.zza = new zzgkb(bArr);
        this.zzb = bArr2;
    }

    public static zzgdn zzb(zzgil zzgilVar) {
        return new zzgvn(zzgilVar.zzd().zzd(zzgdw.zza()), zzgilVar.zzc().zzc());
    }

    private final byte[] zzc(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length < 40) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        return this.zza.zzb(ByteBuffer.wrap(bArr, 24, length - 24), Arrays.copyOf(bArr, 24), bArr2);
    }

    @Override // com.google.android.gms.internal.ads.zzgdn
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return zzc(bArr, bArr2);
        }
        if (!zzgnu.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] bArr4 = this.zzb;
        return zzc(Arrays.copyOfRange(bArr, bArr4.length, bArr.length), bArr2);
    }
}
