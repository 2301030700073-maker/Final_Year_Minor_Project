package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* loaded from: assets/audience_network.dex */
public class KU extends AbstractC1829bv {
    public final /* synthetic */ C1812be A00;

    public KU(C1812be c1812be) {
        this.A00 = c1812be;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1830bw c1830bw) {
        boolean z;
        boolean z2;
        boolean A0D;
        Handler handler;
        int i;
        boolean z3;
        boolean A0D2;
        z = this.A00.A03;
        if (!z) {
            return;
        }
        z2 = this.A00.A02;
        if (!z2) {
            return;
        }
        this.A00.A03 = false;
        A0D = this.A00.A0D(EnumC1291Ip.A03);
        if (!A0D) {
            z3 = this.A00.A04;
            if (!z3) {
                A0D2 = this.A00.A0D(EnumC1291Ip.A02);
                if (!A0D2) {
                    return;
                }
                this.A00.A03();
                this.A00.A06(true, true);
                return;
            }
        }
        this.A00.A04 = false;
        handler = this.A00.A05;
        C1815bh c1815bh = new C1815bh(this);
        i = this.A00.A00;
        handler.postDelayed(c1815bh, i);
    }
}
