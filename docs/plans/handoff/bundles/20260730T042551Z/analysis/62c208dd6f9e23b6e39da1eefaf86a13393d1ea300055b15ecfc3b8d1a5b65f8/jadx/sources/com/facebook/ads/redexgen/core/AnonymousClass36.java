package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: com.facebook.ads.redexgen.X.36, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class AnonymousClass36 {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{10, 76, 80, 73, 72, 121, 126, 100, 117, 98, 99, 100, 121, 100, 121, 113, 124, 101, 114, 96, 118, 101, 115, 114, 115, 72, 97, 126, 115, 114, 120};
    }

    /* JADX WARN: Incorrect condition in loop: B:10:0x00d7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A02(com.facebook.ads.redexgen.core.C2322k1 r12, com.facebook.ads.redexgen.core.C10297t r13, com.facebook.ads.redexgen.core.C1392Mu r14) {
        /*
            com.facebook.ads.redexgen.X.7r r3 = new com.facebook.ads.redexgen.X.7r
            com.facebook.ads.redexgen.X.2n r0 = r14.A1e()
            java.lang.String r4 = r0.A01()
            int r5 = com.facebook.ads.redexgen.core.C1251Hb.A04
            int r6 = com.facebook.ads.redexgen.core.C1251Hb.A04
            java.lang.String r7 = r14.A0r()
            r2 = 17
            r1 = 14
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r8 = A00(r2, r1, r0)
            r3.<init>(r4, r5, r6, r7, r8)
            r13.A0c(r3)
            boolean r6 = r14.A1F()
            if (r6 == 0) goto L4f
            java.lang.String r5 = r14.A0f()
            java.lang.String r4 = r14.A0r()
            r2 = 17
            r1 = 14
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r0 = A00(r2, r1, r0)
            com.facebook.ads.redexgen.X.7p r3 = new com.facebook.ads.redexgen.X.7p
            r3.<init>(r5, r4, r0)
            r0 = 1
            r3.A04 = r0
            r2 = 0
            r1 = 5
            r0 = 66
            java.lang.String r0 = A00(r2, r1, r0)
            r3.A03 = r0
            r13.A0X(r3)
        L4f:
            boolean r0 = com.facebook.ads.redexgen.core.J3.A03()
            boolean r3 = com.facebook.ads.redexgen.core.C10729m.A2q(r12, r0)
            com.facebook.ads.redexgen.X.2T r0 = r14.A1b()
            com.facebook.ads.redexgen.X.2W r0 = r0.A0F()
            java.lang.String r8 = r0.A09()
            com.facebook.ads.redexgen.X.7p r7 = new com.facebook.ads.redexgen.X.7p
            java.lang.String r9 = r14.A0r()
            com.facebook.ads.redexgen.X.2T r0 = r14.A1b()
            com.facebook.ads.redexgen.X.2W r0 = r0.A0F()
            long r11 = r0.A06()
            r2 = 17
            r1 = 14
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r10 = A00(r2, r1, r0)
            r7.<init>(r8, r9, r10, r11)
            if (r6 == 0) goto Lf8
            if (r3 != 0) goto Lf8
            r13.A0X(r7)
        L89:
            com.facebook.ads.redexgen.X.7r r3 = new com.facebook.ads.redexgen.X.7r
            com.facebook.ads.redexgen.X.2T r0 = r14.A1b()
            com.facebook.ads.redexgen.X.2W r0 = r0.A0F()
            java.lang.String r4 = r0.A08()
            com.facebook.ads.redexgen.X.2T r0 = r14.A1b()
            com.facebook.ads.redexgen.X.2W r0 = r0.A0F()
            int r5 = com.facebook.ads.redexgen.core.AnonymousClass31.A00(r0)
            com.facebook.ads.redexgen.X.2T r0 = r14.A1b()
            com.facebook.ads.redexgen.X.2W r0 = r0.A0F()
            int r6 = com.facebook.ads.redexgen.core.AnonymousClass31.A01(r0)
            java.lang.String r7 = r14.A0r()
            r2 = 17
            r1 = 14
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r8 = A00(r2, r1, r0)
            r3.<init>(r4, r5, r6, r7, r8)
            r13.A0c(r3)
            com.facebook.ads.redexgen.X.2T r0 = r14.A1b()
            com.facebook.ads.redexgen.X.2e r0 = r0.A0I()
            java.util.List r0 = r0.A02()
            java.util.Iterator r3 = r0.iterator()
        Ld3:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto Lfc
            java.lang.Object r5 = r3.next()
            java.lang.String r5 = (java.lang.String) r5
            com.facebook.ads.redexgen.X.7r r4 = new com.facebook.ads.redexgen.X.7r
            java.lang.String r8 = r14.A0r()
            r2 = 17
            r1 = 14
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r9 = A00(r2, r1, r0)
            r6 = -1
            r7 = -1
            r4.<init>(r5, r6, r7, r8, r9)
            r13.A0c(r4)
            goto Ld3
        Lf8:
            r13.A0a(r7)
            goto L89
        Lfc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.AnonymousClass36.A02(com.facebook.ads.redexgen.X.k1, com.facebook.ads.redexgen.X.7t, com.facebook.ads.redexgen.X.Mu):void");
    }

    public static void A03(C2322k1 c2322k1, C10297t c10297t, C1392Mu c1392Mu) {
        int i = 0;
        for (C2T c2t : c1392Mu.A1i()) {
            C10277r c10277r = new C10277r(c2t.A0F().A08(), AnonymousClass31.A00(c2t.A0F()), AnonymousClass31.A01(c2t.A0F()), c1392Mu.A0r(), A00(5, 12, 118));
            if (i == 0) {
                c10297t.A0b(c10277r);
            } else {
                c10297t.A0c(c10277r);
            }
            Iterator<String> it = c2t.A0I().A02().iterator();
            while (it.hasNext()) {
                c10297t.A0c(new C10277r(it.next(), -1, -1, c1392Mu.A0r(), A00(5, 12, 118)));
            }
            if (!TextUtils.isEmpty(c2t.A0F().A09())) {
                new C10257p(c2t.A0F().A09(), c1392Mu.A0r(), A00(5, 12, 118), c2t.A0F().A06()).A04 = false;
            }
            i++;
        }
    }
}
