package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.fo, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2068fo extends AbstractC1217Ft {
    public static byte[] A00;

    static {
        A0B();
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{106, 111, 111, 110, Byte.MAX_VALUE, 106, 98, 103, 120};
    }

    public abstract void A1B();

    public abstract void A1C();

    public abstract void A1D();

    public abstract boolean A1E();

    public abstract boolean A1F();

    public AbstractC2068fo(C1221Fx c1221Fx, boolean z) {
        super(c1221Fx, z);
        if (C10729m.A16(c1221Fx.A05())) {
            if (c1221Fx.A0B() != null) {
                c1221Fx.A0B().setCTAClickListener(getCtaButton());
            }
            getTitleDescContainer().setCTAClickListener(getCtaButton());
        }
    }

    public final void A1A() {
        if (C10729m.A16(this.A06.A05()) && this.A06.A0B() != null) {
            this.A06.A0B().setCTAClickListener(getCtaButton());
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public ViewOnClickListenerC2111gW getCtaButton() {
        return super.getCtaButton();
    }

    public void setAdDetailsClickListener(FH fh) {
        if (C10729m.A16(this.A06.A05()) && fh != null) {
            fh.setOnClickListener(AbstractC1214Fq.A03(getCtaButton(), A0A(0, 9, 29)));
        }
    }

    public void setupNativeCtaExtension(C1252Hc c1252Hc) {
    }
}
