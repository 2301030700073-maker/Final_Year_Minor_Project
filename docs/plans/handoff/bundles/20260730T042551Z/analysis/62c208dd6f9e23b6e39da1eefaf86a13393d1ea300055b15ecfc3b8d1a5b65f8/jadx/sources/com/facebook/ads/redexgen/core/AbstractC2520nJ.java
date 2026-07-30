package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.nJ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2520nJ<K0, V0> {
    public static byte[] A00;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 127);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{97, 116, 108, 97, 95, 112, 97, 96, 71, 97, 117, 111};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nJ != com.google.common.collect.MultimapBuilder<K0, V0> */
    public AbstractC2520nJ() {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nJ != com.google.common.collect.MultimapBuilder<K0, V0> */
    public /* synthetic */ AbstractC2520nJ(O0 o0) {
        this();
    }

    public static AbstractC2519nI<Object> A00(int expectedKeys) {
        AbstractC2371ko.A00(expectedKeys, A03(0, 12, 125));
        return new O0(expectedKeys);
    }

    public static <K0> AbstractC2519nI<K0> A01(Comparator<K0> comparator) {
        AbstractC2212iD.A04(comparator);
        return new C1420Nz(comparator);
    }

    public static AbstractC2519nI<Comparable> A02() {
        return A01(AbstractC2535nY.A03());
    }
}
