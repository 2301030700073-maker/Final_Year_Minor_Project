package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzevt implements zzeya {
    private final zzgus zza;

    public zzevt(zzgus zzgusVar) {
        this.zza = zzgusVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zza.submit(zzevs.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 24;
    }
}
