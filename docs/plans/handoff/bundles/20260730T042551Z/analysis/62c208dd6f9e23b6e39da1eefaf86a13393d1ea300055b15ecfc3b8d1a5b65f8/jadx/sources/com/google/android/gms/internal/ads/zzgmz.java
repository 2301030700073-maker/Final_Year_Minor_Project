package com.google.android.gms.internal.ads;

import defpackage.Creturn;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzgmz {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgmz(Class cls, Class cls2, zzgna zzgnaVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgmz)) {
            return false;
        }
        zzgmz zzgmzVar = (zzgmz) obj;
        return zzgmzVar.zza.equals(this.zza) && zzgmzVar.zzb.equals(this.zzb);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        return Creturn.m7982new(this.zza.getSimpleName(), " with primitive type: ", this.zzb.getSimpleName());
    }
}
