package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzdzd extends RewardedAdLoadCallback {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdzl zzb;

    zzdzd(zzdzl zzdzlVar, String str) {
        this.zza = str;
        Objects.requireNonNull(zzdzlVar);
        this.zzb = zzdzlVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        String zzm;
        zzdzl zzdzlVar = this.zzb;
        zzm = zzdzl.zzm(loadAdError);
        zzdzlVar.zzg(zzm);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(RewardedAd rewardedAd) {
        this.zzb.zzf(this.zza, rewardedAd);
    }
}
