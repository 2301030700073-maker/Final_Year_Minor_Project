package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.dw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1953dw extends BY {
    public final /* synthetic */ C1344Kq A00;

    public C1953dw(C1344Kq c1344Kq) {
        this.A00 = c1344Kq;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        AbstractC1217Ft abstractC1217Ft;
        int closeButtonStyle;
        AtomicBoolean atomicBoolean;
        AbstractC1217Ft abstractC1217Ft2;
        abstractC1217Ft = this.A00.A00;
        if (abstractC1217Ft != null) {
            abstractC1217Ft2 = this.A00.A00;
            abstractC1217Ft2.A12();
        }
        DQ dq = this.A00.A08;
        closeButtonStyle = this.A00.getCloseButtonStyle();
        dq.setToolbarActionMode(closeButtonStyle);
        this.A00.A08.A07();
        atomicBoolean = this.A00.A05;
        atomicBoolean.set(true);
    }
}
