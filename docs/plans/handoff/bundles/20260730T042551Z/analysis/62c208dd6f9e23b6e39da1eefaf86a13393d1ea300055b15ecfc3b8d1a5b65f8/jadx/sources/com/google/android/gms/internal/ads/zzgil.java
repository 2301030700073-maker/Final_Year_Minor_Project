package com.google.android.gms.internal.ads;

import defpackage.Cif;
import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgil extends zzget {
    private final zzgir zza;
    private final zzgvp zzb;
    private final zzgvo zzc;
    private final Integer zzd;

    private zzgil(zzgir zzgirVar, zzgvp zzgvpVar, zzgvo zzgvoVar, Integer num) {
        this.zza = zzgirVar;
        this.zzb = zzgvpVar;
        this.zzc = zzgvoVar;
        this.zzd = num;
    }

    public static zzgil zza(zzgiq zzgiqVar, zzgvp zzgvpVar, Integer num) {
        zzgvo zzb;
        zzgiq zzgiqVar2 = zzgiq.zzc;
        if (zzgiqVar != zzgiqVar2 && num == null) {
            throw new GeneralSecurityException(Cif.m6908case("For given Variant ", zzgiqVar.toString(), " the value of idRequirement must be non-null"));
        }
        if (zzgiqVar == zzgiqVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzgvpVar.zza() != 32) {
            throw new GeneralSecurityException(V1.m2494case("XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not ", zzgvpVar.zza()));
        }
        zzgir zzc = zzgir.zzc(zzgiqVar);
        if (zzc.zzb() == zzgiqVar2) {
            zzb = zzgml.zza;
        } else if (zzc.zzb() == zzgiq.zzb) {
            zzb = zzgml.zza(num.intValue());
        } else {
            if (zzc.zzb() != zzgiq.zza) {
                throw new IllegalStateException("Unknown Variant: ".concat(zzc.zzb().toString()));
            }
            zzb = zzgml.zzb(num.intValue());
        }
        return new zzgil(zzc, zzgvpVar, zzb, num);
    }

    public final zzgir zzb() {
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
