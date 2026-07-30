package com.facebook.ads.redexgen.core;

import android.text.TextUtils;

/* renamed from: com.facebook.ads.redexgen.X.eM, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1979eM extends JK {
    public final /* synthetic */ AbstractC1970eD A00;

    public C1979eM(AbstractC1970eD abstractC1970eD) {
        this.A00 = abstractC1970eD;
    }

    @Override // com.facebook.ads.redexgen.core.JK
    public final void A03() {
        if (!this.A00.A07.A07()) {
            this.A00.A07.A05();
            if (!TextUtils.isEmpty(this.A00.A02.A1g())) {
                this.A00.A05.AB0(this.A00.A02.A1g(), new FB().A03(this.A00.A0B).A02(this.A00.A07).A04(this.A00.A02.A0h()).A05());
                if (this.A00.A02.A1O()) {
                    this.A00.A04.A0F().ADl();
                }
                C1108Bh.A00(this.A00.A04).A0E(this.A00.A0A.A8b(), this.A00.A02.A1g());
                C08902h.A07(this.A00.A02.A1c(), this.A00.A04);
                this.A00.A04.A0F().A3B();
                AbstractC09093a.A02(this.A00.A02.A0g(), AbstractC1124Ce.A00(this.A00.A02.A0i()));
                this.A00.A09.A4Z(this.A00.A0A.A86());
            }
        }
    }
}
