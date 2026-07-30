package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public final class TZ implements Uj {
    public final /* synthetic */ TY A00;

    public TZ(TY ty) {
        this.A00 = ty;
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final long A7j() {
        AbstractC1628Wm abstractC1628Wm;
        long j;
        abstractC1628Wm = this.A00.A0B;
        j = this.A00.A07;
        return abstractC1628Wm.A0C(j);
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final C1576Ui A8r(long j) {
        AbstractC1628Wm abstractC1628Wm;
        long j2;
        long j3;
        long targetGranule;
        long targetGranule2;
        long j4;
        long j5;
        abstractC1628Wm = this.A00.A0B;
        long A0D = abstractC1628Wm.A0D(j);
        j2 = this.A00.A09;
        j3 = this.A00.A08;
        targetGranule = this.A00.A09;
        long j6 = (j3 - targetGranule) * A0D;
        targetGranule2 = this.A00.A07;
        j4 = this.A00.A09;
        j5 = this.A00.A08;
        long estimatedPosition = AbstractC2094gE.A0T((j2 + (j6 / targetGranule2)) - 30000, j4, j5 - 1);
        return new C1576Ui(new C1577Uk(j, estimatedPosition));
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final boolean AAY() {
        return true;
    }
}
