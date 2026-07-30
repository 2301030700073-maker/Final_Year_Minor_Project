package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzgos {
    private Integer zza = null;
    private Integer zzb = null;
    private zzgot zzc = null;
    private zzgou zzd = zzgou.zzd;

    private zzgos() {
    }

    public /* synthetic */ zzgos(zzgov zzgovVar) {
    }

    public final zzgos zza(zzgot zzgotVar) {
        this.zzc = zzgotVar;
        return this;
    }

    public final zzgos zzb(int i) {
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzgos zzc(int i) {
        this.zzb = Integer.valueOf(i);
        return this;
    }

    public final zzgos zzd(zzgou zzgouVar) {
        this.zzd = zzgouVar;
        return this;
    }

    public final zzgow zze() {
        Integer num = this.zza;
        if (num == null) {
            throw new GeneralSecurityException("key size is not set");
        }
        if (this.zzb == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (this.zzc == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (this.zzd == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        if (num.intValue() < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.zza));
        }
        int intValue = this.zzb.intValue();
        zzgot zzgotVar = this.zzc;
        if (intValue < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(intValue)));
        }
        if (zzgotVar == zzgot.zza) {
            if (intValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", Integer.valueOf(intValue)));
            }
        } else if (zzgotVar == zzgot.zzb) {
            if (intValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", Integer.valueOf(intValue)));
            }
        } else if (zzgotVar == zzgot.zzc) {
            if (intValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", Integer.valueOf(intValue)));
            }
        } else if (zzgotVar == zzgot.zzd) {
            if (intValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", Integer.valueOf(intValue)));
            }
        } else {
            if (zzgotVar != zzgot.zze) {
                throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
            }
            if (intValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", Integer.valueOf(intValue)));
            }
        }
        return new zzgow(this.zza.intValue(), this.zzb.intValue(), this.zzd, this.zzc, null);
    }
}
