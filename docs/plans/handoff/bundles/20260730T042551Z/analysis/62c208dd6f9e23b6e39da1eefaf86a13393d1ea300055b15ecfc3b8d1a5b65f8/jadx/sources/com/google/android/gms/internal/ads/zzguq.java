package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzguq implements zzgdn {
    private final zzgvg zza;
    private final zzgej zzb;
    private final int zzc;
    private final byte[] zzd;

    private zzguq(zzgvg zzgvgVar, zzgej zzgejVar, int i, byte[] bArr) {
        this.zza = zzgvgVar;
        this.zzb = zzgejVar;
        this.zzc = i;
        this.zzd = bArr;
    }

    public static zzgdn zzb(zzgfb zzgfbVar) {
        zzguj zzgujVar = new zzguj(zzgfbVar.zzd().zzd(zzgdw.zza()), zzgfbVar.zzb().zzd());
        String valueOf = String.valueOf(zzgfbVar.zzb().zzg());
        return new zzguq(zzgujVar, new zzgvl(new zzgvk("HMAC".concat(valueOf), new SecretKeySpec(zzgfbVar.zze().zzd(zzgdw.zza()), "HMAC")), zzgfbVar.zzb().zze()), zzgfbVar.zzb().zze(), zzgfbVar.zzc().zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgdn
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zzd;
        int i = this.zzc;
        int length = bArr3.length;
        int length2 = bArr.length;
        if (length2 < i + length) {
            throw new GeneralSecurityException("Decryption failed (ciphertext too short).");
        }
        if (!zzgnu.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, this.zzd.length, length2 - this.zzc);
        byte[] copyOfRange2 = Arrays.copyOfRange(bArr, length2 - this.zzc, length2);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        if (MessageDigest.isEqual(((zzgvl) this.zzb).zzc(zzguo.zzb(bArr2, copyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))), copyOfRange2)) {
            return this.zza.zza(copyOfRange);
        }
        throw new GeneralSecurityException("invalid MAC");
    }
}
