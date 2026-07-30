package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.n5, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2506n5 extends JK {
    public static byte[] A01;
    public final /* synthetic */ N5 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 19);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{78, 77, 66, 66, 73, 94};
    }

    public C2506n5(N5 n5) {
        this.A00 = n5;
    }

    @Override // com.facebook.ads.redexgen.core.JK
    public final void A03() {
        C1141Cv c1141Cv;
        C1141Cv c1141Cv2;
        M5 m5;
        C2487mm c2487mm;
        M5 m52;
        C1395Mx c1395Mx;
        JL jl;
        C1141Cv c1141Cv3;
        C1395Mx c1395Mx2;
        A7 a7;
        C1395Mx c1395Mx3;
        M5 m53;
        C1395Mx c1395Mx4;
        C1395Mx c1395Mx5;
        C08902h A1c;
        M5 m54;
        JL jl2;
        M5 m55;
        C1395Mx c1395Mx6;
        c1141Cv = this.A00.A07;
        if (!c1141Cv.A07()) {
            c1141Cv2 = this.A00.A07;
            c1141Cv2.A05();
            m5 = this.A00.A04;
            InterfaceC2528nR A0F = m5.A0F();
            c2487mm = this.A00.A02;
            A0F.A4G(c2487mm != null);
            m52 = this.A00.A04;
            m52.A0F().A3B();
            c1395Mx = this.A00.A03;
            AbstractC09093a.A02(c1395Mx.A0g(), AbstractC1124Ce.A00(A00(0, 6, 63)));
            FB fb = new FB();
            jl = this.A00.A0C;
            FB A03 = fb.A03(jl);
            c1141Cv3 = this.A00.A07;
            FB A02 = A03.A02(c1141Cv3);
            c1395Mx2 = this.A00.A03;
            Map<String, String> A05 = A02.A04(c1395Mx2.A0h()).A05();
            a7 = this.A00.A05;
            c1395Mx3 = this.A00.A03;
            a7.AB0(c1395Mx3.A1g(), A05);
            m53 = this.A00.A04;
            if (C10729m.A18(m53)) {
                m55 = this.A00.A04;
                C1108Bh A00 = C1108Bh.A00(m55);
                String adPlacementType = AdPlacementType.BANNER.toString();
                c1395Mx6 = this.A00.A03;
                A00.A0E(adPlacementType, c1395Mx6.A1g());
            }
            c1395Mx4 = this.A00.A03;
            if (c1395Mx4 == null) {
                A1c = null;
            } else {
                c1395Mx5 = this.A00.A03;
                A1c = c1395Mx5.A1c();
            }
            m54 = this.A00.A04;
            C08902h.A07(A1c, m54);
            jl2 = this.A00.A0C;
            jl2.A0V();
        }
    }
}
