package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.fA, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2028fA extends JK {
    public static byte[] A01;
    public final /* synthetic */ AbstractC2025f6 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 78);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-37, -32, -39, -31, -26, -35, -36, -41, -39, -36, -41, -31, -26, -36, -35, -16};
    }

    public C2028fA(AbstractC2025f6 abstractC2025f6) {
        this.A00 = abstractC2025f6;
    }

    @Override // com.facebook.ads.redexgen.core.JK
    public final void A03() {
        int i;
        boolean z;
        boolean z2;
        if (!this.A00.A09.A07()) {
            this.A00.A09.A05();
            if (!TextUtils.isEmpty(this.A00.A05.A1g())) {
                Map<String, String> A05 = new FB().A03(this.A00.A0C).A02(this.A00.A09).A04(this.A00.A05.A0h()).A05();
                StringBuilder append = new StringBuilder().append(A00(0, 0, 96));
                i = this.A00.A01;
                A05.put(A00(0, 16, 42), append.append(i).toString());
                this.A00.A07.AB0(this.A00.A05.A1g(), A05);
                C1108Bh.A00(this.A00.A06).A0E(this.A00.A0B.A8b(), this.A00.A05.A1g());
                C08902h.A07(this.A00.A05.A1c(), this.A00.A06);
                this.A00.A06.A0F().A3B();
                z = this.A00.A03;
                if (!z) {
                    AbstractC09093a.A02(this.A00.A05.A0g(), AbstractC1124Ce.A00(this.A00.A05.A0i()));
                }
                z2 = this.A00.A04;
                if (!z2) {
                    this.A00.A0A.A4Z(this.A00.A0B.A86());
                }
            }
        }
    }
}
