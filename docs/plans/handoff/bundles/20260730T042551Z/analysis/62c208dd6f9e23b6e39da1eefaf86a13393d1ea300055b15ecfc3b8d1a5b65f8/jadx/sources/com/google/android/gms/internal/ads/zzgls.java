package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzgls {
    private final zzgdz zza;
    private final int zzb;
    private final String zzc;
    private final String zzd;

    public /* synthetic */ zzgls(zzgdz zzgdzVar, int i, String str, String str2, zzglt zzgltVar) {
        this.zza = zzgdzVar;
        this.zzb = i;
        this.zzc = str;
        this.zzd = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgls)) {
            return false;
        }
        zzgls zzglsVar = (zzgls) obj;
        return this.zza == zzglsVar.zza && this.zzb == zzglsVar.zzb && this.zzc.equals(zzglsVar.zzc) && this.zzd.equals(zzglsVar.zzd);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public final String toString() {
        return String.format("(status=%s, keyId=%s, keyType='%s', keyPrefix='%s')", this.zza, Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public final int zza() {
        return this.zzb;
    }
}
