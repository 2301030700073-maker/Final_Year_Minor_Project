package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

/* renamed from: com.facebook.ads.redexgen.X.Ks, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1346Ks extends AbstractC1835c1 {
    public final /* synthetic */ C1345Kr A00;

    public C1346Ks(C1345Kr c1345Kr) {
        this.A00 = c1345Kr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1836c2 c1836c2) {
        new Handler(Looper.getMainLooper()).post(new HD(this));
    }
}
