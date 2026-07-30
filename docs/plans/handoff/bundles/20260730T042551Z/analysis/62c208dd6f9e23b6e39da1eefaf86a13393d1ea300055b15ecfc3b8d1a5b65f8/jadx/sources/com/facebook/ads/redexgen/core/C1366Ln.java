package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

/* renamed from: com.facebook.ads.redexgen.X.Ln, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1366Ln extends AbstractC1835c1 {
    public final /* synthetic */ C2173hW A00;

    public C1366Ln(C2173hW c2173hW) {
        this.A00 = c2173hW;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1836c2 c1836c2) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1154Di(this));
    }
}
