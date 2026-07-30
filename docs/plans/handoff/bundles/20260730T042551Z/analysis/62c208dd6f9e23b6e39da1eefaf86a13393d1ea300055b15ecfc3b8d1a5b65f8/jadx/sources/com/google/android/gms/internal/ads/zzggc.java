package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzggc {
    private Integer zza = null;
    private Integer zzb = null;
    private Integer zzc = null;
    private zzggd zzd = zzggd.zzc;

    private zzggc() {
    }

    public /* synthetic */ zzggc(zzgge zzggeVar) {
    }

    public final zzggc zza(int i) {
        this.zzb = 12;
        return this;
    }

    public final zzggc zzb(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzggc zzc(int i) {
        this.zzc = 16;
        return this;
    }

    public final zzggc zzd(zzggd zzggdVar) {
        this.zzd = zzggdVar;
        return this;
    }

    public final zzggf zze() {
        Integer num = this.zza;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (this.zzd == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (this.zzb == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (this.zzc == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int intValue = num.intValue();
        this.zzb.intValue();
        this.zzc.intValue();
        return new zzggf(intValue, 12, 16, this.zzd, null);
    }
}
