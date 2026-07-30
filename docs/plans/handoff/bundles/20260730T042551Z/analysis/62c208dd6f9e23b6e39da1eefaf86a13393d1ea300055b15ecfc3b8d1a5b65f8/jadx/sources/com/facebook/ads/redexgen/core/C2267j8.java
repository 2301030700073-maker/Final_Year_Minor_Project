package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.j8, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2267j8 extends BY {
    public final /* synthetic */ C2265j6 A00;

    public C2267j8(C2265j6 c2265j6) {
        this.A00 = c2265j6;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        long j;
        long j2;
        C2265j6.A00(this.A00);
        j = this.A00.A01;
        if (j > 0) {
            try {
                j2 = this.A00.A01;
                Thread.sleep(j2);
            } catch (InterruptedException unused) {
            }
        }
        this.A00.A0B();
    }
}
