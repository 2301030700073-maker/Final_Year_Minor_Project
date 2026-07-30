package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

/* loaded from: assets/audience_network.dex */
public class L2 extends AbstractC1835c1 {
    public final /* synthetic */ L1 A00;

    public L2(L1 l1) {
        this.A00 = l1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1836c2 c1836c2) {
        new Handler(Looper.getMainLooper()).post(new H5(this));
    }
}
