package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public final class SU implements YT {
    public static String[] A06 = {"84mIbTPZd6aoJp3lghwjzEV1CXlFbTxk", "W9FMxAusLZkE7ZmzGPcB96nQPb6kpYre", "IKMwo3cB1n7Mun1A38p5O86Z", "pB9MZoxa1qxCt96MdBvwWUod9JFv9LyH", "v8lH5x9fod1bUde8yPNDLhDdan8bSg8g", "Sm43zprTvE0G7HR5LxxDhvZiqT8sMVB1", "hKUClx5zg5vMvifJai9ukQPV", "NqkOJAsqQGgwscckA74t9jHmmJ4q3EmY"};
    public int A00;
    public int A01;
    public boolean A02;
    public boolean A03;
    public final YK A04;
    public final C2070fq A05 = new C2070fq(32);

    public SU(YK yk) {
        this.A04 = yk;
    }

    @Override // com.facebook.ads.redexgen.core.YT
    public final void A51(C2070fq c2070fq, int i) {
        boolean z = (i & 1) != 0;
        int i2 = -1;
        if (z) {
            int A0I = c2070fq.A0I();
            if (A06[0].charAt(8) != 'd') {
                throw new RuntimeException();
            }
            A06[4] = "VzDVvJfsVhmc3MtNs7ivtdz3ntASc";
            i2 = c2070fq.A09() + A0I;
        }
        if (this.A03) {
            if (!z) {
                return;
            }
            this.A03 = false;
            c2070fq.A0f(i2);
            this.A00 = 0;
        }
        while (c2070fq.A07() > 0) {
            if (this.A00 < 3) {
                if (this.A00 == 0) {
                    int A0I2 = c2070fq.A0I();
                    c2070fq.A0f(c2070fq.A09() - 1);
                    if (A0I2 == 255) {
                        this.A03 = true;
                        return;
                    }
                }
                int min = Math.min(c2070fq.A07(), 3 - this.A00);
                c2070fq.A0k(this.A05.A0l(), this.A00, min);
                this.A00 += min;
                if (this.A00 == 3) {
                    this.A05.A0f(0);
                    this.A05.A0e(3);
                    this.A05.A0g(1);
                    int A0I3 = this.A05.A0I();
                    int A0I4 = this.A05.A0I();
                    boolean payloadUnitStartIndicator = (A0I3 & 128) != 0;
                    this.A02 = payloadUnitStartIndicator;
                    this.A01 = (((A0I3 & 15) << 8) | A0I4) + 3;
                    if (this.A05.A08() < this.A01) {
                        this.A05.A0c(Math.min(4098, Math.max(this.A01, this.A05.A08() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(c2070fq.A07(), this.A01 - this.A00);
                c2070fq.A0k(this.A05.A0l(), this.A00, min2);
                this.A00 += min2;
                if (this.A00 == this.A01) {
                    boolean payloadUnitStartIndicator2 = this.A02;
                    if (payloadUnitStartIndicator2) {
                        if (AbstractC2094gE.A0I(this.A05.A0l(), 0, this.A01, -1) != 0) {
                            this.A03 = true;
                            return;
                        }
                        this.A05.A0e(this.A01 - 4);
                    } else {
                        this.A05.A0e(this.A01);
                    }
                    this.A05.A0f(0);
                    this.A04.A50(this.A05);
                    this.A00 = 0;
                } else {
                    continue;
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.YT
    public final void AA3(C2084g4 c2084g4, UL ul, YS ys) {
        this.A04.AA3(c2084g4, ul, ys);
        this.A03 = true;
    }

    @Override // com.facebook.ads.redexgen.core.YT
    public final void AIB() {
        this.A03 = true;
    }
}
