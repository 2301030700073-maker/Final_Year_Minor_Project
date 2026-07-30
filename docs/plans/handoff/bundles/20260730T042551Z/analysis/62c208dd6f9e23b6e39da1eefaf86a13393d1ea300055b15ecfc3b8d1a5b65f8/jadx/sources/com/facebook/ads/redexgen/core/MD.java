package com.facebook.ads.redexgen.core;

import com.facebook.ads.MediaViewVideoRenderer;

/* loaded from: assets/audience_network.dex */
public class MD extends AbstractC1829bv {
    public final /* synthetic */ C10056v A00;

    public MD(C10056v c10056v) {
        this.A00 = c10056v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1830bw c1830bw) {
        MediaViewVideoRenderer mediaViewVideoRenderer;
        if (this.A00.A08 != null) {
            C2238ie.A0L(this.A00.A08.getInternalNativeAd()).A1f(true, true);
        }
        mediaViewVideoRenderer = this.A00.A00;
        mediaViewVideoRenderer.onPlayed();
    }
}
