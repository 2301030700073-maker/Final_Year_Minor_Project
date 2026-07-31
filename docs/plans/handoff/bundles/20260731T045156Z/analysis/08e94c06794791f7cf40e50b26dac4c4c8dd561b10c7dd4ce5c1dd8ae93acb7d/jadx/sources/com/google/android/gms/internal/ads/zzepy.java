package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzepy implements zzeya {
    private final Clock zza;
    private final zzfgn zzb;

    zzepy(Clock clock, zzfgn zzfgnVar) {
        this.zza = clock;
        this.zzb = zzfgnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return zzgui.zza(new zzepz(this.zzb, this.zza.currentTimeMillis()));
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 4;
    }
}
