package com.facebook.ads.redexgen.core;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;

/* loaded from: assets/audience_network.dex */
public final class M7 extends C2351kU {
    public IB A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A06(NativeAdLayout nativeAdLayout, C2322k1 c2322k1, NativeAd nativeAd, AW aw) {
        C1203Ff c1203Ff = new C1203Ff(c2322k1);
        MediaView mediaView = new MediaView(c2322k1);
        AdOptionsView adOptionsView = new AdOptionsView(c2322k1, nativeAd, nativeAdLayout);
        aw.A09(adOptionsView, 28);
        this.A00 = new C1862cS(c2322k1, nativeAd, aw, C2238ie.A0L(nativeAd.getInternalNativeAd()).A18(), c1203Ff, mediaView, adOptionsView);
        D3.A0K(nativeAdLayout, aw.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, c1203Ff, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override // com.facebook.ads.redexgen.core.C09966m, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}
