package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.l7, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2389l7 {
    public static final AbstractC2389l7 A00 = new OR();
    public static final AbstractC2389l7 A02 = new OQ(-1);
    public static final AbstractC2389l7 A01 = new OQ(1);

    public abstract int A05();

    public abstract AbstractC2389l7 A06(int left, int right);

    public abstract AbstractC2389l7 A07(long left, long right);

    public abstract <T> AbstractC2389l7 A08(@ParametricNullness T left, @ParametricNullness T right, Comparator<T> comparator);

    public abstract AbstractC2389l7 A09(boolean left, boolean right);

    public abstract AbstractC2389l7 A0A(boolean left, boolean right);

    public AbstractC2389l7() {
    }

    public /* synthetic */ AbstractC2389l7(OR or) {
        this();
    }

    public static AbstractC2389l7 A01() {
        return A00;
    }
}
