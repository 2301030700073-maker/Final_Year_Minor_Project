package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzgew implements zzgdn {
    private final zzgnf zza;

    public /* synthetic */ zzgew(zzgnf zzgnfVar, zzgex zzgexVar) {
        this.zza = zzgnfVar;
        if (zzgnfVar.zzg()) {
            zzglq zza = zzgmf.zzb().zza();
            zzglu zza2 = zzglx.zza(zzgnfVar);
            zza.zza(zza2, "aead", "encrypt");
            zza.zza(zza2, "aead", "decrypt");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdn
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        if (bArr.length > 5) {
            for (zzgnd zzgndVar : this.zza.zzf(Arrays.copyOf(bArr, 5))) {
                try {
                    byte[] zza = ((zzgdn) zzgndVar.zzd()).zza(bArr, bArr2);
                    zzgndVar.zza();
                    return zza;
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        for (zzgnd zzgndVar2 : this.zza.zzf(zzgds.zza)) {
            try {
                byte[] zza2 = ((zzgdn) zzgndVar2.zzd()).zza(bArr, bArr2);
                zzgndVar2.zza();
                return zza2;
            } catch (GeneralSecurityException unused2) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
