package com.facebook.ads.redexgen.core;

import java.io.Serializable;

/* renamed from: com.facebook.ads.redexgen.X.3f, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09143f implements Serializable {
    public C09133e A00;
    public C09133e A01;

    public C09143f() {
        this(0.5d, 0.5d);
    }

    public C09143f(double d) {
        this(d, 0.5d);
    }

    public C09143f(double d, double d2) {
        this.A00 = new C09133e(d);
        this.A01 = new C09133e(d2);
        A02();
    }

    public final C09133e A00() {
        return this.A00;
    }

    public final C09133e A01() {
        return this.A01;
    }

    public final void A02() {
        this.A00.A07();
        this.A01.A07();
    }

    public final void A03() {
        this.A00.A08();
        this.A01.A08();
    }

    public final void A04(double d, double d2) {
        this.A00.A09(d, d2);
    }

    public final void A05(double d, double d2) {
        this.A01.A09(d, d2);
    }
}
