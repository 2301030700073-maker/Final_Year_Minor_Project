package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* loaded from: assets/audience_network.dex */
public class KK extends AbstractC1820bm {
    public final /* synthetic */ C1805bX A00;

    public KK(C1805bX c1805bX) {
        this.A00 = c1805bX;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1821bn c1821bn) {
        C1855cL c1855cL;
        Handler handler;
        c1855cL = this.A00.A01;
        if (c1855cL == null || c1821bn.A00().getAction() != 0) {
            return;
        }
        handler = this.A00.A04;
        handler.removeCallbacksAndMessages(null);
        this.A00.A07(new C1279Id(this));
    }
}
