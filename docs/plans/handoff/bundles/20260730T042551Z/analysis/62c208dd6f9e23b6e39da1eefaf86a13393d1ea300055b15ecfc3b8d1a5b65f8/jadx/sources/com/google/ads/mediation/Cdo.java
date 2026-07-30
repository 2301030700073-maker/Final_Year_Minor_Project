package com.google.ads.mediation;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import defpackage.C3862vR;

/* renamed from: com.google.ads.mediation.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo extends InterstitialAdLoadCallback {

    /* renamed from: do, reason: not valid java name */
    public final AbstractAdViewAdapter f9484do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MediationInterstitialListener f9485do;

    public Cdo(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f9484do = abstractAdViewAdapter;
        this.f9485do = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f9485do.onAdFailedToLoad(this.f9484do, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(InterstitialAd interstitialAd) {
        InterstitialAd interstitialAd2 = interstitialAd;
        AbstractAdViewAdapter abstractAdViewAdapter = this.f9484do;
        abstractAdViewAdapter.mInterstitialAd = interstitialAd2;
        MediationInterstitialListener mediationInterstitialListener = this.f9485do;
        interstitialAd2.setFullScreenContentCallback(new C3862vR(abstractAdViewAdapter, mediationInterstitialListener));
        mediationInterstitialListener.onAdLoaded(abstractAdViewAdapter);
    }
}
