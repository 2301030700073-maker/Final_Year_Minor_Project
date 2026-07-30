package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public final class zzglu {
    private final zzglo zza;
    private final List zzb;
    private final Integer zzc;

    public /* synthetic */ zzglu(zzglo zzgloVar, List list, Integer num, zzglt zzgltVar) {
        this.zza = zzgloVar;
        this.zzb = list;
        this.zzc = num;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzglu)) {
            return false;
        }
        zzglu zzgluVar = (zzglu) obj;
        return this.zza.equals(zzgluVar.zza) && this.zzb.equals(zzgluVar.zzb) && Objects.equals(this.zzc, zzgluVar.zzc);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        return String.format("(annotations=%s, entries=%s, primaryKeyId=%s)", this.zza, this.zzb, this.zzc);
    }
}
