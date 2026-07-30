package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: assets/audience_network.dex */
public final class CL {
    public static byte[] A05;
    public static String[] A06 = {"hdh4k6eZclrlxxYg19ck", "OIQuDIQFpzBifrZrtJIvg4BasUaQd63c", "6y0NffGMqcG8EugdtirNjkqg6svCH2Zl", "13Ua2r6CYJwc6p6BI5coDxRAaPqMz7yS", "7WkbYpbXunBRly3lB1oHckvOip2eqLp6", "2PYz6J8qU0vRqLO17bgOak7iCaiihwk", "gvpJ77qQnx", "SLFhDDNvl2CxgKHJ1vqMDyCxDe74woQD"};
    public boolean A00 = false;
    public final Handler A01 = new Handler(Looper.getMainLooper());
    public final AbstractC2478md A02;
    public final C2322k1 A03;
    public final CJ A04;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 2);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{84, 91, 94, 84, 92, 104, 68, 88, 66, 69, 84, 82};
    }

    static {
        A03();
    }

    public CL(C2322k1 c2322k1, AbstractC2478md abstractC2478md, CJ cj) {
        this.A03 = c2322k1;
        this.A04 = cj;
        this.A02 = abstractC2478md;
    }

    public static CL A01(C2322k1 c2322k1, AbstractC2478md abstractC2478md, CJ cj) {
        Object creativeAsCtaLoggingHelper = c2322k1.A0I();
        if (creativeAsCtaLoggingHelper == null) {
            creativeAsCtaLoggingHelper = new CL(c2322k1, abstractC2478md, cj);
            c2322k1.A0P(creativeAsCtaLoggingHelper);
        }
        return (CL) creativeAsCtaLoggingHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(String str, C08902h c08902h, String str2) {
        Map<String, String> A052 = new FB().A03(null).A02(null).A05();
        A052.put(A02(0, 12, 53), str);
        this.A03.A0A().AB3(str2, A052);
        if (c08902h != null) {
            C08902h.A06(c08902h, this.A03);
        }
        if (C10729m.A2L(this.A03)) {
            HashMap hashMap = new HashMap();
            hashMap.put(AbstractC2517nG.A04, Boolean.TRUE.toString());
            hashMap.put(AbstractC2517nG.A05, Boolean.TRUE.toString());
            hashMap.put(AbstractC2517nG.A06, Boolean.TRUE.toString());
            this.A03.A0A().ABC(str2, hashMap);
        }
        this.A04.ADz();
    }

    private void A06(String str, C08902h c08902h, String str2, long j) {
        this.A00 = true;
        this.A01.postDelayed(new CI(this, str, c08902h, str2), j);
    }

    public static boolean A07(C2322k1 c2322k1) {
        return C10729m.A1Z(c2322k1) && C2.A0H(c2322k1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        if (r5 != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.facebook.ads.redexgen.core.CK A0A(com.facebook.ads.redexgen.core.AbstractC2478md r7) {
        /*
            r6 = this;
            com.facebook.ads.redexgen.X.k1 r0 = r6.A03
            boolean r0 = com.facebook.ads.redexgen.core.C10729m.A1f(r0)
            r4 = 1
            if (r0 == 0) goto L1f
            boolean r0 = r7.A1D()
            if (r0 == 0) goto L1d
            com.facebook.ads.redexgen.X.k1 r0 = r6.A03
            boolean r0 = A07(r0)
            if (r0 == 0) goto L1d
        L17:
            com.facebook.ads.redexgen.X.CK r0 = new com.facebook.ads.redexgen.X.CK
            r0.<init>(r4, r4)
            return r0
        L1d:
            r4 = 0
            goto L17
        L1f:
            boolean r3 = r7.A1D()
            if (r3 == 0) goto L51
            com.facebook.ads.redexgen.X.k1 r0 = r6.A03
            boolean r5 = A07(r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.CL.A06
            r0 = 5
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L53
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.CL.A06
            java.lang.String r1 = "D5RQoHah0ZffyX7n6MMHscTeZuBHZQ8g"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "oKN8Sif1fTCm3hFJqGEcKAR8lt3N8fjA"
            r0 = 4
            r2[r0] = r1
            if (r5 == 0) goto L51
        L4b:
            com.facebook.ads.redexgen.X.CK r0 = new com.facebook.ads.redexgen.X.CK
            r0.<init>(r3, r4)
            return r0
        L51:
            r4 = 0
            goto L4b
        L53:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.CL.A0A(com.facebook.ads.redexgen.X.md):com.facebook.ads.redexgen.X.CK");
    }

    public final void A0B() {
        this.A00 = false;
        this.A01.removeCallbacksAndMessages(null);
    }

    public final void A0C(String str, C08902h c08902h, String str2) {
        A0B();
        A06(str, c08902h, str2, this.A02 != null ? this.A02.A0Z() : 2000L);
    }

    public final void A0D(String str, C08902h c08902h, String str2) {
        A0B();
        A06(str, c08902h, str2, this.A02 != null ? this.A02.A0a() : 2000L);
    }
}
