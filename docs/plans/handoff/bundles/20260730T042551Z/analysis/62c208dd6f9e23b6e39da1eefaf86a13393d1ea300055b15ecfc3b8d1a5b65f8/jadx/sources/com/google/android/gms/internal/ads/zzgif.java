package com.google.android.gms.internal.ads;

import defpackage.Cif;
import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgif extends zzget {
    private final zzgik zza;
    private final zzgvp zzb;
    private final zzgvo zzc;
    private final Integer zzd;

    private zzgif(zzgik zzgikVar, zzgvp zzgvpVar, zzgvo zzgvoVar, Integer num) {
        this.zza = zzgikVar;
        this.zzb = zzgvpVar;
        this.zzc = zzgvoVar;
        this.zzd = num;
    }

    public static zzgif zza(zzgik zzgikVar, zzgvp zzgvpVar, Integer num) {
        zzgvo zzb;
        zzgij zzc = zzgikVar.zzc();
        zzgij zzgijVar = zzgij.zzb;
        if (zzc != zzgijVar && num == null) {
            throw new GeneralSecurityException(Cif.m6908case("For given Variant ", zzgikVar.zzc().toString(), " the value of idRequirement must be non-null"));
        }
        if (zzgikVar.zzc() == zzgijVar && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzgvpVar.zza() != 32) {
            throw new GeneralSecurityException(V1.m2494case("XAesGcmKey key must be constructed with key of length 32 bytes, not ", zzgvpVar.zza()));
        }
        if (zzgikVar.zzc() == zzgijVar) {
            zzb = zzgml.zza;
        } else {
            if (zzgikVar.zzc() != zzgij.zza) {
                throw new IllegalStateException("Unknown Variant: ".concat(zzgikVar.zzc().toString()));
            }
            zzb = zzgml.zzb(num.intValue());
        }
        return new zzgif(zzgikVar, zzgvpVar, zzb, num);
    }

    public final zzgik zzb() {
        return this.zza;
    }

    public final zzgvo zzc() {
        return this.zzc;
    }

    public final zzgvp zzd() {
        return this.zzb;
    }

    public final Integer zze() {
        return this.zzd;
    }
}
