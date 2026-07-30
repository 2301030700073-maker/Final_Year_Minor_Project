package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Dz, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1171Dz extends AbstractC1683Yr {
    public static byte[] A01;
    public static final InterfaceC1397Na<C1171Dz> A02;
    public static final String A03;
    public final float A00;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 84);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A01 = new byte[]{32, 53, 34, 51, 53, 62, 36, 112, 61, 37, 35, 36, 112, 50, 53, 112, 57, 62, 112, 36, 56, 53, 112, 34, 49, 62, 55, 53, 112, 63, 54, 112, 11, 96, 124, 112, 97, 96, 96, 13};
    }

    static {
        A03();
        A03 = AbstractC2094gE.A0h(1);
        A02 = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.Z8
            @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
            public final InterfaceC1398Nb A6V(Bundle bundle) {
                C1171Dz A00;
                A00 = C1171Dz.A00(bundle);
                return A00;
            }
        };
    }

    public C1171Dz() {
        this.A00 = -1.0f;
    }

    public C1171Dz(float f) {
        AbstractC2011es.A09(f >= 0.0f && f <= 100.0f, A02(0, 40, 4));
        this.A00 = f;
    }

    public static C1171Dz A00(Bundle bundle) {
        AbstractC2011es.A07(bundle.getInt(AbstractC1683Yr.A02, -1) == 1);
        float f = bundle.getFloat(A03, -1.0f);
        return f == -1.0f ? new C1171Dz() : new C1171Dz(f);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C1171Dz) && this.A00 == ((C1171Dz) obj).A00;
    }

    public final int hashCode() {
        return AbstractC1436Or.A00(Float.valueOf(this.A00));
    }
}
