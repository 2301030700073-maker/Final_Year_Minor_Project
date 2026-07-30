package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.rewarded.RewardItem;

/* loaded from: classes.dex */
public final class zzbxg extends zzbwl {
    private final String zza;
    private final int zzb;

    public zzbxg(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, rewardItem != null ? rewardItem.getAmount() : 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final int zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final String zzf() {
        return this.zza;
    }

    public zzbxg(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }
}
