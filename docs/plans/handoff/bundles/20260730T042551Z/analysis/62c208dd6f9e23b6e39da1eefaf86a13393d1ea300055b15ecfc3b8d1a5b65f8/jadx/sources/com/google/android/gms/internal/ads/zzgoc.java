package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzgoc {
    private Integer zza = null;
    private Integer zzb = null;
    private zzgod zzc = zzgod.zzd;

    private zzgoc() {
    }

    public /* synthetic */ zzgoc(zzgoe zzgoeVar) {
    }

    public final zzgoc zza(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i * 8)));
        }
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzgoc zzb(int i) {
        if (i < 10 || i > 16) {
            throw new GeneralSecurityException(V1.m2494case("Invalid tag size for AesCmacParameters: ", i));
        }
        this.zzb = Integer.valueOf(i);
        return this;
    }

    public final zzgoc zzc(zzgod zzgodVar) {
        this.zzc = zzgodVar;
        return this;
    }

    public final zzgof zzd() {
        Integer num = this.zza;
        if (num == null) {
            throw new GeneralSecurityException("key size not set");
        }
        if (this.zzb == null) {
            throw new GeneralSecurityException("tag size not set");
        }
        if (this.zzc != null) {
            return new zzgof(num.intValue(), this.zzb.intValue(), this.zzc, null);
        }
        throw new GeneralSecurityException("variant not set");
    }
}
