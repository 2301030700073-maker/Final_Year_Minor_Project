package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbdz;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdrq implements zzifh {
    private final zzifq zza;

    private zzdrq(zzifq zzifqVar) {
        this.zza = zzifqVar;
    }

    public static zzdrq zza(zzifq zzifqVar) {
        return new zzdrq(zzifqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbdz.zza.EnumC0014zza enumC0014zza = ((zzcyf) this.zza).zza().zzp.zza == 3 ? zzbdz.zza.EnumC0014zza.REWARDED_INTERSTITIAL : zzbdz.zza.EnumC0014zza.REWARD_BASED_VIDEO_AD;
        zzifp.zzb(enumC0014zza);
        return enumC0014zza;
    }
}
