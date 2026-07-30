package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzggn {
    private Integer zza = null;
    private zzggo zzb = zzggo.zzc;

    private zzggn() {
    }

    public /* synthetic */ zzggn(zzggp zzggpVar) {
    }

    public final zzggn zza(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzggn zzb(zzggo zzggoVar) {
        this.zzb = zzggoVar;
        return this;
    }

    public final zzggq zzc() {
        Integer num = this.zza;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.zzb != null) {
            return new zzggq(num.intValue(), this.zzb, null);
        }
        throw new GeneralSecurityException("Variant is not set");
    }
}
