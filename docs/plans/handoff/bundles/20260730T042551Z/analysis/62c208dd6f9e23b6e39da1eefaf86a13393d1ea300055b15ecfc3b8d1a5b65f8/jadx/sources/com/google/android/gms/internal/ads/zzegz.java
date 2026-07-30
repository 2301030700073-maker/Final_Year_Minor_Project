package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzegz {
    private zzegq zza;

    public zzegz() {
    }

    private zzegz(zzegq zzegqVar) {
        this.zza = zzegqVar;
    }

    public static zzegz zzb(zzegq zzegqVar) {
        return new zzegz(zzegqVar);
    }

    public final zzegq zza(Clock clock, zzegs zzegsVar, zzedb zzedbVar, zzfja zzfjaVar) {
        zzegq zzegqVar = this.zza;
        return zzegqVar != null ? zzegqVar : new zzegq(clock, zzegsVar, zzedbVar, zzfjaVar);
    }
}
