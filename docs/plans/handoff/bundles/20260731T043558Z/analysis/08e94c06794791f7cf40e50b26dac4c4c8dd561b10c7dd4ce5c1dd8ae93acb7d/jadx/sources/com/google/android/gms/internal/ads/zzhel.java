package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhel {
    public static final zzhel zza = new zzhek().zza();
    private final Map zzb;

    public final boolean equals(Object obj) {
        if (obj instanceof zzhel) {
            return this.zzb.equals(((zzhel) obj).zzb);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode();
    }

    public final String toString() {
        return this.zzb.toString();
    }

    public final boolean zza() {
        return this.zzb.isEmpty();
    }
}
