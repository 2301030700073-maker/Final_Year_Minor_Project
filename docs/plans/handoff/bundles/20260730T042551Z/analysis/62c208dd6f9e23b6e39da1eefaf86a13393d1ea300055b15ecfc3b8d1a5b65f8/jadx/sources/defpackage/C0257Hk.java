package defpackage;

import android.app.Activity;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;

/* renamed from: Hk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0257Hk extends InterstitialAdLoadCallback {
    public C0257Hk(Activity activity) {
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        C0301Jk.f1677do = null;
        C0301Jk.f1683new = false;
        C3210kN.m7252if("Interstitial", "Error-" + loadAdError.getMessage());
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdLoaded(InterstitialAd interstitialAd) {
        C0301Jk.f1677do = interstitialAd;
        C0301Jk.f1683new = false;
        C3210kN.m7252if("Interstitial", "Loaded");
        InterstitialAd interstitialAd2 = C0301Jk.f1677do;
        if (interstitialAd2 != null) {
            interstitialAd2.setFullScreenContentCallback(new C0279Ik());
        }
    }
}
