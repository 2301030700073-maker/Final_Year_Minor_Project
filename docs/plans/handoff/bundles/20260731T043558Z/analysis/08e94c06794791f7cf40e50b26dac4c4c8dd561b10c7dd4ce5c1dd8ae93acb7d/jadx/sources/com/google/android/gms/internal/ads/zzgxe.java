package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgxe implements zzgvm {
    private final zzhfm zza;

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        for (zzgxc zzgxcVar : this.zza.zza(bArr)) {
            try {
                byte[] zza = zzgxcVar.zza.zza(bArr, bArr2);
                int i = zzgxcVar.zzb;
                int length = bArr.length;
                return zza;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
