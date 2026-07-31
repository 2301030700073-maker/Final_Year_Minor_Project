package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzele {
    private zzekv zza;

    zzele() {
    }

    private zzele(zzekv zzekvVar) {
        this.zza = zzekvVar;
    }

    public static zzele zza(zzekv zzekvVar) {
        return new zzele(zzekvVar);
    }

    public final zzekv zzb(Clock clock, zzekx zzekxVar, zzehp zzehpVar, zzfng zzfngVar) {
        zzekv zzekvVar = this.zza;
        return zzekvVar != null ? zzekvVar : new zzekv(clock, zzekxVar, zzehpVar, zzfngVar);
    }
}
