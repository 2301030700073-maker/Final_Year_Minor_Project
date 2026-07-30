package com.facebook.ads.redexgen.core;

import com.facebook.ads.MediaViewVideoRenderer;

/* loaded from: assets/audience_network.dex */
public class MC extends AbstractC1831bx {
    public final /* synthetic */ C10056v A00;

    public MC(C10056v c10056v) {
        this.A00 = c10056v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(KY ky) {
        MediaViewVideoRenderer mediaViewVideoRenderer;
        mediaViewVideoRenderer = this.A00.A00;
        mediaViewVideoRenderer.onPaused();
    }
}
