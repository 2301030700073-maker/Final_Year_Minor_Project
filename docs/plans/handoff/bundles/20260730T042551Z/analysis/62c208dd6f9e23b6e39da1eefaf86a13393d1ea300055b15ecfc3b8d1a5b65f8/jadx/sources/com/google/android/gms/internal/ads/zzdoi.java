package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbbq;

/* loaded from: classes.dex */
public final class zzdoi implements zzher {
    private final zzhfj zza;

    public zzdoi(zzhfj zzhfjVar) {
        this.zza = zzhfjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbbq.zza.EnumC0054zza enumC0054zza = ((zzcvk) this.zza).zza().zzo.zza == 3 ? zzbbq.zza.EnumC0054zza.REWARDED_INTERSTITIAL : zzbbq.zza.EnumC0054zza.REWARD_BASED_VIDEO_AD;
        zzhez.zzb(enumC0054zza);
        return enumC0054zza;
    }
}
