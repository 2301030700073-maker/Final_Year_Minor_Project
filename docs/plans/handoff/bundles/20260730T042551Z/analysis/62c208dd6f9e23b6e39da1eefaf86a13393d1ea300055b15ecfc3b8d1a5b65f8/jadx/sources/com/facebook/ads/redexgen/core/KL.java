package com.facebook.ads.redexgen.core;

import android.view.View;

/* loaded from: assets/audience_network.dex */
public class KL extends AbstractC1837c3 {
    public final /* synthetic */ C1805bX A00;

    public KL(C1805bX c1805bX) {
        this.A00 = c1805bX;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1328Ka c1328Ka) {
        EnumC1281If enumC1281If;
        View view;
        View view2;
        enumC1281If = this.A00.A02;
        if (enumC1281If == EnumC1281If.A03) {
            return;
        }
        view = this.A00.A00;
        view.setAlpha(1.0f);
        view2 = this.A00.A00;
        view2.setVisibility(0);
    }
}
