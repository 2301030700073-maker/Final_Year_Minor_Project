package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhpi {

    @Nullable
    private zzhpf zza = null;

    @Nullable
    private BigInteger zzb = null;

    @Nullable
    private Integer zzc = null;

    private zzhpi() {
    }

    /* synthetic */ zzhpi(byte[] bArr) {
    }

    public final zzhpi zza(zzhpf zzhpfVar) {
        this.zza = zzhpfVar;
        return this;
    }

    public final zzhpi zzb(BigInteger bigInteger) {
        this.zzb = bigInteger;
        return this;
    }

    public final zzhpi zzc(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzhpj zzd() throws GeneralSecurityException {
        zzhsz zza;
        if (this.zza == null) {
            throw new GeneralSecurityException("Cannot build without parameters");
        }
        BigInteger bigInteger = this.zzb;
        if (bigInteger == null) {
            throw new GeneralSecurityException("Cannot build without modulus");
        }
        int bitLength = bigInteger.bitLength();
        int zzc = this.zza.zzc();
        if (bitLength != zzc) {
            StringBuilder sb = new StringBuilder(String.valueOf(bitLength).length() + 56 + String.valueOf(zzc).length());
            sb.append("Got modulus size ");
            sb.append(bitLength);
            sb.append(", but parameters requires modulus size ");
            sb.append(zzc);
            throw new GeneralSecurityException(sb.toString());
        }
        if (this.zza.zza() && this.zzc == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.zza.zza() && this.zzc != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.zza.zze() == zzhpe.zzd) {
            zza = zzhfc.zza;
        } else if (this.zza.zze() == zzhpe.zzc || this.zza.zze() == zzhpe.zzb) {
            zza = zzhfc.zza(this.zzc.intValue());
        } else {
            if (this.zza.zze() != zzhpe.zza) {
                String valueOf = String.valueOf(this.zza.zze());
                String.valueOf(valueOf);
                throw new IllegalStateException("Unknown RsaSsaPssParameters.Variant: ".concat(String.valueOf(valueOf)));
            }
            zza = zzhfc.zzb(this.zzc.intValue());
        }
        return new zzhpj(this.zza, this.zzb, zza, this.zzc, null);
    }
}
