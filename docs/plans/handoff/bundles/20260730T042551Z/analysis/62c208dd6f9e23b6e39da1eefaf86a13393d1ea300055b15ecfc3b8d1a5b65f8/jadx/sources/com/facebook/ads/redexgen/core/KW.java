package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* loaded from: assets/audience_network.dex */
public class KW extends AbstractC1831bx {
    public final /* synthetic */ C1812be A00;

    public KW(C1812be c1812be) {
        this.A00 = c1812be;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(KY ky) {
        Handler handler;
        boolean A0D;
        handler = this.A00.A05;
        handler.removeCallbacksAndMessages(null);
        A0D = this.A00.A0D(EnumC1291Ip.A04);
        if (A0D) {
            this.A00.A03();
            this.A00.A06(true, false);
        }
        this.A00.A03 = true;
    }
}
