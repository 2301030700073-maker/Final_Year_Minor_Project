package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzghm extends zzget {
    private final zzghr zza;
    private final zzgvo zzb;
    private final Integer zzc;

    private zzghm(zzghr zzghrVar, zzgvo zzgvoVar, Integer num) {
        this.zza = zzghrVar;
        this.zzb = zzgvoVar;
        this.zzc = num;
    }

    public static zzghm zza(zzghr zzghrVar, Integer num) {
        zzgvo zzb;
        if (zzghrVar.zzc() == zzghp.zzb) {
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            zzb = zzgml.zza;
        } else {
            if (zzghrVar.zzc() != zzghp.zza) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(zzghrVar.zzc())));
            }
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            zzb = zzgml.zzb(num.intValue());
        }
        return new zzghm(zzghrVar, zzb, num);
    }

    public final zzghr zzb() {
        return this.zza;
    }

    public final zzgvo zzc() {
        return this.zzb;
    }

    public final Integer zzd() {
        return this.zzc;
    }
}
