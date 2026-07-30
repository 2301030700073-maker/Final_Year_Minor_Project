package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.fD, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2031fD {
    public float A00 = 1.0f;
    public int A01;
    public int A02;
    public long A03;

    public C2031fD(int i, int i2) {
        this.A02 = i;
        this.A01 = i2;
    }

    public final C2031fD A00(float f) {
        this.A00 = f;
        return this;
    }

    public final C2032fE A01() {
        return new C2032fE(this.A02, this.A01, this.A00, this.A03);
    }
}
