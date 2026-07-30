package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.he, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2181he extends AbstractC1153Dh {
    public final F8 A00;

    public C2181he(C2322k1 c2322k1, View.OnClickListener onClickListener) {
        super(c2322k1, onClickListener);
        this.A00 = new F8(c2322k1);
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
    }

    public final C2181he A0F(String str) {
        new AsyncTaskC2117gc(this.A00, this.A01).A05(this.A00.getHeight(), this.A00.getWidth()).A06(new C2182hf(this)).A07(str);
        A0C();
        return this;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1153Dh
    public int getMediaViewId() {
        return this.A00.getId();
    }
}
