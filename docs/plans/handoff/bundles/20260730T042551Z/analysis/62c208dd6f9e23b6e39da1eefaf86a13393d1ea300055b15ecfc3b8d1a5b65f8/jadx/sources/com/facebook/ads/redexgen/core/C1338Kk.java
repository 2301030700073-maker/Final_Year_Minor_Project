package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

/* renamed from: com.facebook.ads.redexgen.X.Kk, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1338Kk extends AbstractC1835c1 {
    public final /* synthetic */ C1337Kj A00;

    public C1338Kk(C1337Kj c1337Kj) {
        this.A00 = c1337Kj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1836c2 c1836c2) {
        new Handler(Looper.getMainLooper()).post(new HR(this));
    }
}
