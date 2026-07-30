package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Yv, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1687Yv implements InterfaceC1398Nb {
    public static byte[] A03;
    public static String[] A04 = {"2CZGfQM4NhUTxD5pXTfzjs0Op9nNL", "9ZGcHr0wqtfUkFixqdWyLKwsL", "fWHJzWpZQxOIbFXRnW0HpFVm8Vs2vB2q", "kSGMSKwZmKi10WQLtPQBX4vrGdm", "rirTP2ExswnuyvczFLF4baUHTOq", "ZKXz0EO7F5WlR0MIonczSXdniPvxHMYV", "FmQfN11j", "rokn5erDdgDdRRF1BArBF2NFzB75q11U"};
    public static final InterfaceC1397Na<C1687Yv> A05;
    public static final C1687Yv A06;
    public static final String A07;
    public static final String A08;
    public final float A00;
    public final float A01;
    public final int A02;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{99, 95, 82, 74, 81, 82, 80, 88, 99, 82, 65, 82, 94, 86, 71, 86, 65, 64, 27, 64, 67, 86, 86, 87, 14, 22, 29, 1, 85, 31, 19, 67, 90, 71, 80, 91, 14, 22, 29, 1, 85, 26};
    }

    static {
        A02();
        A06 = new C1687Yv(1.0f);
        A08 = AbstractC2094gE.A0h(0);
        A07 = AbstractC2094gE.A0h(1);
        A05 = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.Yw
            @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
            public final InterfaceC1398Nb A6V(Bundle bundle) {
                return C1687Yv.A00(bundle);
            }
        };
    }

    public C1687Yv(float f) {
        this(f, 1.0f);
    }

    public C1687Yv(float f, float f2) {
        AbstractC2011es.A07(f > 0.0f);
        AbstractC2011es.A07(f2 > 0.0f);
        this.A01 = f;
        this.A00 = f2;
        this.A02 = Math.round(1000.0f * f);
    }

    public static /* synthetic */ C1687Yv A00(Bundle bundle) {
        float f = bundle.getFloat(A08, 1.0f);
        float pitch = bundle.getFloat(A07, 1.0f);
        return new C1687Yv(f, pitch);
    }

    public final long A03(long j) {
        return this.A02 * j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (A04[1].length() != 25) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[5] = "uDHsKYLziYYXqMOO2wSdvPrUTVGVVGFc";
        strArr[2] = "EhrNeVfCC2PBsMHsxIDbmhmSAAkKy3f4";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1687Yv c1687Yv = (C1687Yv) obj;
        return this.A01 == c1687Yv.A01 && this.A00 == c1687Yv.A00;
    }

    public final int hashCode() {
        int result = Float.floatToRawIntBits(this.A01);
        return (((17 * 31) + result) * 31) + Float.floatToRawIntBits(this.A00);
    }

    public final String toString() {
        return AbstractC2094gE.A0n(A01(0, 42, 81), Float.valueOf(this.A01), Float.valueOf(this.A00));
    }
}
