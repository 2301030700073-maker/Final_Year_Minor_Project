package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdmw implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;

    private zzdmw(zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
    }

    public static zzdmw zza(zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzdmw(zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdmv(((zzdkr) this.zza).zza(), (Clock) this.zzb.zzb());
    }
}
