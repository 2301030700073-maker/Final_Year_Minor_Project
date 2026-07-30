package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzgll extends zzgek {
    private final zzgni zza;

    public zzgll(zzgni zzgniVar) {
        this.zza = zzgniVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgll)) {
            return false;
        }
        zzgni zzgniVar = ((zzgll) obj).zza;
        return this.zza.zzc().zzg().equals(zzgniVar.zzc().zzg()) && this.zza.zzc().zzi().equals(zzgniVar.zzc().zzi()) && this.zza.zzc().zzh().equals(zzgniVar.zzc().zzh());
    }

    public final int hashCode() {
        zzgni zzgniVar = this.zza;
        return Objects.hash(zzgniVar.zzc(), zzgniVar.zzd());
    }

    public final String toString() {
        Object[] objArr = new Object[2];
        objArr[0] = this.zza.zzc().zzi();
        int ordinal = this.zza.zzc().zzg().ordinal();
        objArr[1] = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK";
        return String.format("(typeUrl=%s, outputPrefixType=%s)", objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgek
    public final boolean zza() {
        return this.zza.zzc().zzg() != zzgtp.RAW;
    }

    public final zzgni zzb() {
        return this.zza;
    }
}
