package defpackage;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* renamed from: Gk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0235Gk extends AdListener {
    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
        C3210kN.m7252if("Banner", "Returned");
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        C3210kN.m7252if("Banner", "Error-" + loadAdError.getMessage());
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        C3210kN.m7252if("Banner", "Displayed");
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdOpened() {
        C3210kN.m7252if("Banner", "Clicked");
    }
}
