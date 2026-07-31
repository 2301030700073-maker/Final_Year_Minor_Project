package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbox implements zzblx {
    final /* synthetic */ zzbpe zza;
    private final zzblx zzb;

    public zzbox(zzbpe zzbpeVar, zzblx zzblxVar) {
        Objects.requireNonNull(zzbpeVar);
        this.zza = zzbpeVar;
        this.zzb = zzblxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        this.zzb.zza(this.zza, map);
    }

    final /* synthetic */ zzblx zzb() {
        return this.zzb;
    }
}
