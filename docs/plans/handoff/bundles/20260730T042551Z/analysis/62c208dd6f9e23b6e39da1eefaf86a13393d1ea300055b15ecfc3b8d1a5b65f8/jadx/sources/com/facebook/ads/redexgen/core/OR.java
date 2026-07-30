package com.facebook.ads.redexgen.core;

import com.google.common.collect.ParametricNullness;
import java.util.Comparator;

/* loaded from: assets/audience_network.dex */
public class OR extends AbstractC2389l7 {
    public OR() {
        super(null);
    }

    private final AbstractC2389l7 A00(int result) {
        AbstractC2389l7 abstractC2389l7;
        AbstractC2389l7 abstractC2389l72;
        AbstractC2389l7 abstractC2389l73;
        if (result < 0) {
            abstractC2389l73 = AbstractC2389l7.A02;
            return abstractC2389l73;
        }
        if (result > 0) {
            abstractC2389l72 = AbstractC2389l7.A01;
            return abstractC2389l72;
        }
        abstractC2389l7 = AbstractC2389l7.A00;
        return abstractC2389l7;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2389l7
    public final int A05() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2389l7
    public final AbstractC2389l7 A06(int left, int right) {
        return A00(AbstractC1408Nn.A01(left, right));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2389l7
    public final AbstractC2389l7 A07(long left, long right) {
        return A00(AbstractC2592oq.A01(left, right));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2389l7
    public final <T> AbstractC2389l7 A08(@ParametricNullness T left, @ParametricNullness T right, Comparator<T> comparator) {
        return A00(comparator.compare(left, right));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2389l7
    public final AbstractC2389l7 A09(boolean left, boolean right) {
        return A00(PF.A00(left, right));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2389l7
    public final AbstractC2389l7 A0A(boolean left, boolean right) {
        return A00(PF.A00(right, left));
    }
}
