package com.facebook.ads.redexgen.core;

import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.c6, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1840c6 extends RelativeLayout implements IQ {
    public C1855cL A00;

    public AbstractC1840c6(C2322k1 c2322k1) {
        super(c2322k1);
    }

    public AbstractC1840c6(C2322k1 c2322k1, AttributeSet attributeSet, int i) {
        super(c2322k1, attributeSet, i);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(params);
    }

    public void A07() {
    }

    public void A08() {
    }

    @Override // com.facebook.ads.redexgen.core.IQ
    public final void AAk(C1855cL c1855cL) {
        this.A00 = c1855cL;
        A07();
    }

    @Override // com.facebook.ads.redexgen.core.IQ
    public final void AJa(C1855cL c1855cL) {
        A08();
        this.A00 = null;
    }

    public C1855cL getVideoView() {
        return this.A00;
    }
}
