package com.facebook.ads.redexgen.core;

import com.facebook.ads.MediaViewVideoRenderer;

/* loaded from: assets/audience_network.dex */
public class M8 extends AbstractC1835c1 {
    public final /* synthetic */ C10056v A00;

    public M8(C10056v c10056v) {
        this.A00 = c10056v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1836c2 c1836c2) {
        MediaViewVideoRenderer mediaViewVideoRenderer;
        if (this.A00.A08 != null) {
            C2238ie.A0L(this.A00.A08.getInternalNativeAd()).A1f(false, true);
        }
        mediaViewVideoRenderer = this.A00.A00;
        mediaViewVideoRenderer.onError();
    }
}
