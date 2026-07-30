package com.google.android.gms.internal.ads;

import defpackage.Creturn;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzgnp {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgnp(Class cls, Class cls2, zzgnq zzgnqVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgnp)) {
            return false;
        }
        zzgnp zzgnpVar = (zzgnp) obj;
        return zzgnpVar.zza.equals(this.zza) && zzgnpVar.zzb.equals(this.zzb);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        return Creturn.m7982new(this.zza.getSimpleName(), " with serialization type: ", this.zzb.getSimpleName());
    }
}
