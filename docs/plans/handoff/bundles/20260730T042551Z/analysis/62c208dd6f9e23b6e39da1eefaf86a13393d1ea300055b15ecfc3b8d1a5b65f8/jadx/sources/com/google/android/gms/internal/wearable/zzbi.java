package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
final class zzbi {
    private final Object zza;
    private final int zzb;

    public zzbi(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbi)) {
            return false;
        }
        zzbi zzbiVar = (zzbi) obj;
        return this.zza == zzbiVar.zza && this.zzb == zzbiVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
