package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.35, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class AnonymousClass35 {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 115);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{11, 77, 81, 72, 73};
    }

    public static void A02(C2322k1 c2322k1, AbstractC2478md abstractC2478md, boolean z, AnonymousClass33 anonymousClass33) {
        if (!C10729m.A25(c2322k1)) {
            C10297t c10297t = new C10297t(c2322k1);
            C08982p A07 = abstractC2478md.A1b().A0F().A07();
            c10297t.A0d(new AF(abstractC2478md.A1g(), c2322k1.A0A()));
            if (A07 == null) {
                anonymousClass33.AET(AdError.CACHE_ERROR);
                return;
            }
            if (A07.A0O()) {
                anonymousClass33.AEU();
                return;
            }
            C10257p c10257p = new C10257p(A07.A0F(), abstractC2478md.A0r(), abstractC2478md.A0i());
            c10257p.A04 = true;
            c10257p.A03 = A00(0, 5, 86);
            switch (AnonymousClass32.A00[A07.A0A().ordinal()]) {
                case 1:
                case 2:
                    c10297t.A0X(c10257p);
                    break;
            }
            c10297t.A0b(new C10277r(abstractC2478md.A1e().A01(), -1, -1, abstractC2478md.A0r(), abstractC2478md.A0i()));
            c10297t.A0b(new C10277r(A07.A0E(), -1, -1, abstractC2478md.A0r(), abstractC2478md.A0i()));
            c10297t.A0W(new mQ(c2322k1, anonymousClass33, c10297t, A07, z), new C10227m(abstractC2478md.A0r(), abstractC2478md.A0i()));
            return;
        }
        anonymousClass33.AEU();
    }
}
