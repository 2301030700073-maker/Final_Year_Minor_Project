package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class N6 extends AbstractC2122gh {
    public static byte[] A02;
    public static String[] A03 = {"dvnbyrX9L5Wlup6c2JnWkpTYBAz3QIun", "ITj", "KqeTcLSx6Zay5vtxcnHqZ", "bGeXa7nDz1byFpBCq22utpLnb", "UYph9iPsD3jee8BOLuPQ6r57rjKJpmVb", "DfaYbRSw6X21pxGApii0qweOJ64z1eNB", "52vckdype7aS5lLwU46sLHF0XTMQAze7", "uuBWL9In1wjj"};
    public final /* synthetic */ N5 A00;
    public final /* synthetic */ C2489mo A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{67, 116, 116, 105, 116, 38, 99, 126, 99, 101, 115, 114, 111, 104, 97, 38, 103, 101, 114, 111, 105, 104, 119, 117, 120, 120, 113, 102, 64, 109, 100, 113, 116, 112, 115, 118, 66, 77, 72, 80, 65, 86, 65, 64, 123, 71, 72, 77, 71, 79, 123, 64, 65, 72, 69, 93, 123, 73, 87, 2, 24, 52, 8, 25, 14, 10, 31, 2, 29, 14, 52, 10, 24, 52, 8, 31, 10, 52, 29, 89, 102, 125, 122, 98, 102, 118, 90, 119};
    }

    static {
        A01();
    }

    public N6(N5 n5, C2489mo c2489mo) {
        this.A00 = n5;
        this.A01 = c2489mo;
    }

    @Override // com.facebook.ads.redexgen.core.F4
    public final void ACH() {
        boolean z;
        this.A00.A0G = true;
        z = this.A00.A0H;
        if (z) {
            this.A00.A0A();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0171  */
    @Override // com.facebook.ads.redexgen.core.AbstractC2122gh, com.facebook.ads.redexgen.core.F4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void ACc(java.lang.String r12, java.util.Map<java.lang.String, java.lang.String> r13) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.N6.ACc(java.lang.String, java.util.Map):void");
    }

    @Override // com.facebook.ads.redexgen.core.F4
    public final void ADP() {
        M5 m5;
        C2487mm c2487mm;
        C2487mm c2487mm2;
        C2487mm c2487mm3;
        m5 = this.A00.A04;
        InterfaceC2528nR A0F = m5.A0F();
        c2487mm = this.A00.A02;
        A0F.A4G(c2487mm != null);
        c2487mm2 = this.A00.A02;
        if (c2487mm2 != null) {
            c2487mm3 = this.A00.A02;
            c2487mm3.A03();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2122gh, com.facebook.ads.redexgen.core.F4
    public final void AEN() {
        M5 m5;
        C2487mm c2487mm;
        m5 = this.A00.A04;
        m5.A0F().A4I();
        c2487mm = this.A00.A02;
        c2487mm.A09();
    }

    @Override // com.facebook.ads.redexgen.core.F4
    public final void AFo() {
    }
}
