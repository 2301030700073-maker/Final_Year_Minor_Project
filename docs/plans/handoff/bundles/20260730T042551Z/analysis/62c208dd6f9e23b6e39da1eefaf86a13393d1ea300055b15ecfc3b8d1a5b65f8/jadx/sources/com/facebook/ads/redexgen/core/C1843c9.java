package com.facebook.ads.redexgen.core;

import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.c9, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1843c9 extends AbstractC09123d {
    public final /* synthetic */ C1842c8 A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1843c9(C1842c8 c1842c8, double d, double d2, double d3, boolean z) {
        super(d, d2, d3, z);
        this.A00 = c1842c8;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09123d
    public final void A00(boolean z, boolean z2, C09143f c09143f) {
        C2322k1 c2322k1;
        String str;
        Map A0J;
        boolean z3;
        c2322k1 = this.A00.A0D;
        if (C10729m.A0y(c2322k1)) {
            z3 = this.A00.A0A;
            if (z3) {
                return;
            }
        }
        if (z2) {
            this.A00.A0A = true;
            C1842c8 c1842c8 = this.A00;
            str = this.A00.A0J;
            A0J = this.A00.A0J(IH.A0B);
            c1842c8.A0R(str, A0J);
        }
    }
}
