package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.ByteBuffer;

/* renamed from: com.facebook.ads.redexgen.X.Cm, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1132Cm extends XP {
    public static String[] A02 = {"uuyUm0TQx5Qvqr", "eP7kzhCVXkhLdXooHe6cXKFWZftLABe8", "yte9MsPLcCZXmNpS9cgDXkS1VU9tkjdL", "qGme6LPa151ujzSVYYbac4lU35CQrS7J", "mWQ2BTghBiUflAcOzQL3oLPxPL8ysvHd", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "IP1N0WEV6TyoPVWoL97jb7DAee8ABzvz", "ZByVHIdphM0E"};
    public int[] A00;
    public int[] A01;

    @Override // com.facebook.ads.redexgen.core.XP
    public final RT A09(RT rt) throws RU {
        int[] iArr = this.A01;
        if (iArr == null) {
            return RT.A05;
        }
        int i = rt.A02;
        String[] strArr = A02;
        if (strArr[7].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        A02[1] = "GmOAO5n0Hwdf2wDQuO1vxVHXZBoUANwp";
        if (i == 2) {
            int i2 = rt.A01 != iArr.length ? 1 : 0;
            int i3 = 0;
            while (i3 < iArr.length) {
                int i4 = iArr[i3];
                if (i4 < rt.A01) {
                    i2 |= i4 != i3 ? 1 : 0;
                    i3++;
                } else {
                    throw new RU(rt);
                }
            }
            if (i2 != 0) {
                return new RT(rt.A03, iArr.length, 2);
            }
            return RT.A05;
        }
        throw new RU(rt);
    }

    @Override // com.facebook.ads.redexgen.core.XP
    public final void A0A() {
        this.A00 = this.A01;
    }

    public final void A0C(int[] iArr) {
        this.A01 = iArr;
    }

    @Override // com.facebook.ads.redexgen.core.RV
    public final void AGP(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) AbstractC2011es.A01(this.A00);
        int position = byteBuffer.position();
        int outputSize = byteBuffer.limit();
        int position2 = outputSize - position;
        ByteBuffer A00 = A00(this.A06.A00 * (position2 / this.A05.A00));
        while (position < outputSize) {
            int position3 = A02[5].length();
            if (position3 != 0) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[2] = "dCghsa8YQ75SLDxnMNkF6EwDna1RFM3o";
            strArr[3] = "mHjPghTgAOLKm2TaUxkCOZZ5JwJJek4A";
            for (int position4 : iArr) {
                A00.putShort(byteBuffer.getShort((position4 * 2) + position));
            }
            position += this.A05.A00;
        }
        byteBuffer.position(outputSize);
        A00.flip();
    }
}
