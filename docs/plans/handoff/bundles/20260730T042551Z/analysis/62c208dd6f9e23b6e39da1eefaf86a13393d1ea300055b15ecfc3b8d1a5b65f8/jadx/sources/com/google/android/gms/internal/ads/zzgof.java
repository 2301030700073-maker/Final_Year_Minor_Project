package com.google.android.gms.internal.ads;

import defpackage.V1;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzgof extends zzgoz {
    private final int zza;
    private final int zzb;
    private final zzgod zzc;

    public /* synthetic */ zzgof(int i, int i2, zzgod zzgodVar, zzgoe zzgoeVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzgodVar;
    }

    public static zzgoc zze() {
        return new zzgoc(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgof)) {
            return false;
        }
        zzgof zzgofVar = (zzgof) obj;
        return zzgofVar.zza == this.zza && zzgofVar.zzd() == zzd() && zzgofVar.zzc == this.zzc;
    }

    public final int hashCode() {
        return Objects.hash(zzgof.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), this.zzc);
    }

    public final String toString() {
        StringBuilder m2493break = V1.m2493break("AES-CMAC Parameters (variant: ", String.valueOf(this.zzc), ", ");
        m2493break.append(this.zzb);
        m2493break.append("-byte tags, and ");
        return V1.m2506this(m2493break, this.zza, "-byte key)");
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final boolean zza() {
        return this.zzc != zzgod.zzd;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zza;
    }

    public final int zzd() {
        zzgod zzgodVar = this.zzc;
        if (zzgodVar == zzgod.zzd) {
            return this.zzb;
        }
        if (zzgodVar == zzgod.zza || zzgodVar == zzgod.zzb || zzgodVar == zzgod.zzc) {
            return this.zzb + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgod zzf() {
        return this.zzc;
    }
}
