package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.mA, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2450mA extends BY {
    public final /* synthetic */ N0 A00;
    public final /* synthetic */ AnonymousClass38 A01;
    public final /* synthetic */ C1379Ma A02;

    public C2450mA(C1379Ma c1379Ma, AnonymousClass38 anonymousClass38, N0 n0) {
        this.A02 = c1379Ma;
        this.A01 = anonymousClass38;
        this.A00 = n0;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        this.A02.A0T(this.A01);
        this.A02.A0Q(this.A00);
        this.A02.A00 = null;
        AdErrorType adErrorType = AdErrorType.RV_AD_TIMEOUT;
        this.A02.A0B.A0F().A5W(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        this.A02.A07.A0G(new C1091Ag(adErrorType, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }
}
