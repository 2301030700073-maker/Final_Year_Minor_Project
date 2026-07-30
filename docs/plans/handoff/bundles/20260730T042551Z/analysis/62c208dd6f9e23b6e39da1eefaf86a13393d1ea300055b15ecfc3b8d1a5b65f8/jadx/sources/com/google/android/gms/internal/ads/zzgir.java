package com.google.android.gms.internal.ads;

import defpackage.Cif;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzgir extends zzgeu {
    private final zzgiq zza;

    private zzgir(zzgiq zzgiqVar) {
        this.zza = zzgiqVar;
    }

    public static zzgir zzc(zzgiq zzgiqVar) {
        return new zzgir(zzgiqVar);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzgir) && ((zzgir) obj).zza == this.zza;
    }

    public final int hashCode() {
        return Objects.hash(zzgir.class, this.zza);
    }

    public final String toString() {
        return Cif.m6908case("XChaCha20Poly1305 Parameters (variant: ", this.zza.toString(), ")");
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final boolean zza() {
        return this.zza != zzgiq.zzc;
    }

    public final zzgiq zzb() {
        return this.zza;
    }
}
