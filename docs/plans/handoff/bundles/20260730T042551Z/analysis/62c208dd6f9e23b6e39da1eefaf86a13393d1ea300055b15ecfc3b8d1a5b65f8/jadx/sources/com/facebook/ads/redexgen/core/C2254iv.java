package com.facebook.ads.redexgen.core;

import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;

/* renamed from: com.facebook.ads.redexgen.X.iv, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2254iv implements AR {
    public final /* synthetic */ MediaViewVideoRendererApi A00;
    public final /* synthetic */ C2249iq A01;

    public C2254iv(C2249iq c2249iq, MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        this.A01 = c2249iq;
        this.A00 = mediaViewVideoRendererApi;
    }

    @Override // com.facebook.ads.redexgen.core.AR
    public final void AIa() {
        this.A00.setVolume(1.0f);
    }

    @Override // com.facebook.ads.redexgen.core.AR
    public final void AIf(NativeAd nativeAd) {
        this.A01.A0I(C2238ie.A0L(nativeAd.getInternalNativeAd()), new C2250ir(C2238ie.A0L(nativeAd.getInternalNativeAd())));
    }

    @Override // com.facebook.ads.redexgen.core.AR
    public final void AJd() {
        this.A01.A0D();
    }
}
