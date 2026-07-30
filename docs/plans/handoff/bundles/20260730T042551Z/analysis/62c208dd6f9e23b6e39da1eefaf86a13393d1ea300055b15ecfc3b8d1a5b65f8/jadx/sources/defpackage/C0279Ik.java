package defpackage;

import android.os.Handler;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import java.util.Date;

/* renamed from: Ik, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0279Ik extends FullScreenContentCallback {
    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdClicked() {
        Handler handler = C0301Jk.f1675do;
        C3210kN.m7252if("Interstitial", "Clicked");
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdDismissedFullScreenContent() {
        C0301Jk.f1677do = null;
        C3210kN.m7252if("Interstitial", "Closed");
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdFailedToShowFullScreenContent(AdError adError) {
        C0301Jk.f1677do = null;
        C3210kN.m7252if("Interstitial", "ShowFailed");
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdImpression() {
        Handler handler = C0301Jk.f1675do;
        C3210kN.m7252if("Interstitial", "Impression");
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdShowedFullScreenContent() {
        Handler handler = C0301Jk.f1675do;
        C3210kN.m7252if("Interstitial", "Displayed");
        C0301Jk.f1681for = true;
        if (C3772tx.m8330do() == null) {
            return;
        }
        C3772tx.m8330do().putLong("interstitial_displayed_time", new Date().getTime());
        C3772tx.m8330do().apply();
        if (C3772tx.m8330do() == null) {
            return;
        }
        C3772tx.m8330do().putInt("interstitial_displayed_count", (C3772tx.m8343public() != null ? C3772tx.m8343public().getInt("interstitial_displayed_count", 0) : 0) + 1);
        C3772tx.m8330do().apply();
        MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
        if (mobileAnalyticsManager == null) {
            return;
        }
        try {
            DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
            defaultEventClient.m5099case(defaultEventClient.m5101for("AdInterstitialDisplayed"));
        } catch (Exception unused) {
        }
    }
}
