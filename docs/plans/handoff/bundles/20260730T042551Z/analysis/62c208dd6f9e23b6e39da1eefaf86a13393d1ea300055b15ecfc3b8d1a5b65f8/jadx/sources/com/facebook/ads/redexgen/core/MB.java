package com.facebook.ads.redexgen.core;

import com.facebook.ads.MediaViewVideoRenderer;

/* loaded from: assets/audience_network.dex */
public class MB extends AbstractC1824bq {
    public final /* synthetic */ C10056v A00;

    public MB(C10056v c10056v) {
        this.A00 = c10056v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1825br c1825br) {
        MediaViewVideoRenderer mediaViewVideoRenderer;
        mediaViewVideoRenderer = this.A00.A00;
        mediaViewVideoRenderer.onSeek();
    }
}
