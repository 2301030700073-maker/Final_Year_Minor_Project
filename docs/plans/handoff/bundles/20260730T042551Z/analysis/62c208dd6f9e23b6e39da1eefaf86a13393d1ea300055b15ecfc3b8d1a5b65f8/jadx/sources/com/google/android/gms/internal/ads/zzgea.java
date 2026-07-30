package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzgea {
    public static final zzgek zza(zzgek zzgekVar) {
        return zzgekVar != null ? zzgekVar : zzgeq.zza(zzb(null).zzaV());
    }

    public static final zzgsp zzb(zzgek zzgekVar) {
        try {
            return ((zzgni) zzgmk.zzc().zze(null, zzgni.class)).zzc();
        } catch (GeneralSecurityException e) {
            throw new zzgnt("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat("null"), e);
        }
    }
}
