package com.facebook.ads.redexgen.core;

import android.os.Handler;
import com.facebook.internal.security.OidcSecurityUtil;

/* renamed from: com.facebook.ads.redexgen.X.Mh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1384Mh extends AbstractC2203i2<C2451mB> {
    public C1384Mh(C2451mB c2451mB) {
        super(c2451mB);
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C2322k1 c2322k1;
        Handler handler;
        Runnable runnable;
        C2451mB A06 = A06();
        if (A06 == null) {
            return;
        }
        c2322k1 = A06.A08;
        if (DK.A02(c2322k1)) {
            A06.A07();
            return;
        }
        handler = A06.A05;
        runnable = A06.A0C;
        handler.postDelayed(runnable, OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS);
    }
}
