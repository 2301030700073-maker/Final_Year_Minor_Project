package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.cw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1892cw implements Comparable<C1892cw> {
    public final boolean A00;
    public final boolean A01;

    public C1892cw(ZM zm, int i) {
        this.A00 = (zm.A0H & 1) != 0;
        this.A01 = C09785u.A0S(i, false);
    }

    @Override // java.lang.Comparable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C1892cw c1892cw) {
        return AbstractC2389l7.A01().A09(this.A01, c1892cw.A01).A09(this.A00, c1892cw.A00).A05();
    }
}
