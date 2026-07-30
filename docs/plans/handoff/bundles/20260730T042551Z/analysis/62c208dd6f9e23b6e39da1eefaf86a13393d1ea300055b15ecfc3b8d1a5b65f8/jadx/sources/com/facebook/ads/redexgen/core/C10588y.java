package com.facebook.ads.redexgen.core;

import com.facebook.ads.AudienceNetworkAds;

/* renamed from: com.facebook.ads.redexgen.X.8y, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C10588y implements AudienceNetworkAds.InitResult {
    public final String A00;
    public final boolean A01;

    public C10588y(boolean z, String str) {
        this.A01 = z;
        this.A00 = str;
    }

    @Override // com.facebook.ads.AudienceNetworkAds.InitResult
    public final String getMessage() {
        return this.A00;
    }

    @Override // com.facebook.ads.AudienceNetworkAds.InitResult
    public final boolean isSuccess() {
        return this.A01;
    }
}
