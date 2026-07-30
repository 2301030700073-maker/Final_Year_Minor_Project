package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: assets/audience_network.dex */
public final class M6 extends C2367kk {
    public M6(C09886e c09886e) {
        super(c09886e);
    }

    @Override // com.facebook.ads.redexgen.core.C2367kk, com.facebook.ads.redexgen.core.DR
    public final /* bridge */ /* synthetic */ void A3u(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        super.A3u(view, i, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.core.C2367kk, com.facebook.ads.redexgen.core.DR
    public final /* bridge */ /* synthetic */ void A3v(View view, RelativeLayout.LayoutParams layoutParams) {
        super.A3v(view, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.core.C2367kk, com.facebook.ads.redexgen.core.DR
    public final void A4Z(String str) {
        super.A4Z(str);
        if (this.A00.get() == null) {
            return;
        }
        String A03 = IV.A08.A03();
        String rewardedVideoError = IV.A09.A03();
        if (str.equals(A03)) {
            this.A00.get().finish(11);
        } else if (str.equals(rewardedVideoError)) {
            this.A00.get().finish(12);
        }
    }

    @Override // com.facebook.ads.redexgen.core.C2367kk, com.facebook.ads.redexgen.core.DR
    public final /* bridge */ /* synthetic */ void A4a(String str, C9I c9i) {
        super.A4a(str, c9i);
    }

    @Override // com.facebook.ads.redexgen.core.C2367kk, com.facebook.ads.redexgen.core.DR
    public final /* bridge */ /* synthetic */ void AAd(String str, C08962n c08962n) {
        super.AAd(str, c08962n);
    }

    @Override // com.facebook.ads.redexgen.core.C2367kk, com.facebook.ads.redexgen.core.DR
    public final /* bridge */ /* synthetic */ void ACY(int i) {
        super.ACY(i);
    }
}
