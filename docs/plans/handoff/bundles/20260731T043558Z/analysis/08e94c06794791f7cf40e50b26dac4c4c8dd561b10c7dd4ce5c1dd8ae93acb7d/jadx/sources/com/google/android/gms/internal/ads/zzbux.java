package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbux extends zzbjv {
    private final NativeAd.OnNativeAdLoadedListener zza;

    public zzbux(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zza = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zze(zzbkc zzbkcVar) {
        this.zza.onNativeAdLoaded(new zzbus(zzbkcVar));
    }
}
