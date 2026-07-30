package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public final class HK {
    public String A02;
    public String A03;
    public String A04;
    public final C08832a A06;
    public final C08962n A07;
    public final C2322k1 A08;
    public C08852c A01 = C08852c.A01(null);
    public int A00 = 1000;
    public boolean A05 = false;

    public HK(C2322k1 c2322k1, C08832a c08832a, C08962n c08962n) {
        this.A08 = c2322k1;
        this.A06 = c08832a;
        this.A07 = c08962n;
    }

    public final HK A09(int i) {
        this.A00 = i;
        return this;
    }

    public final HK A0A(C08852c c08852c) {
        this.A01 = c08852c;
        return this;
    }

    public final HK A0B(String str) {
        this.A04 = str;
        return this;
    }

    public final HK A0C(String str) {
        this.A02 = str;
        return this;
    }

    public final HK A0D(String str) {
        this.A03 = str;
        return this;
    }

    public final HK A0E(boolean z) {
        this.A05 = z;
        return this;
    }

    public final HM A0F() {
        return new HM(this, null);
    }
}
