package com.facebook.ads.redexgen.core;

import com.facebook.internal.NativeProtocol;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Zh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1699Zh implements PC {
    public static byte[] A0B;
    public static String[] A0C = {"jdifV9NSKFgBfA6xcTjJSx5M3mBsLS", "7Bo6McMdkVA9mEt", "7M2kCs67bICZmC1", "qEXS6zSKBwG", "g7ygpaxuI", "CO", "a4Ab6jnOeckgnUlTzJxrHjzr1qc1VJkR", "QIAJLi3L177ELmNvbWpUTg2BA3j6dB9W"};
    public int A00;
    public boolean A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final long A07;
    public final Q5 A08;
    public final boolean A09;
    public final boolean A0A;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0C;
            if (strArr[1].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[7] = "j5ANPDpq4yvrn6dumAYzk3L0Hj2UFh8o";
            strArr2[6] = "myAPgYEonp6qT7f5Rpmd70fXQeyiyhdZ";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 35);
            i4++;
        }
    }

    public static void A03() {
        A0B = new byte[]{-94, -27, -29, -16, -16, -15, -10, -94, -28, -25, -94, -18, -25, -11, -11, -94, -10, -22, -29, -16, -94, -85, -69, -36, -35, -40, -20, -29, -21, -61, -26, -40, -37, -70, -26, -27, -21, -23, -26, -29, -29, -16, 1, -10, -12, 3, -81, -15, 4, -11, -11, -12, 1, -81, 2, -8, 9, -12, -81, 1, -12, -16, -14, -9, -12, -13, -81, 6, -8, 3, -9, -81, -5, -12, 2, 2, -81, 3, -9, -16, -3, -81, -60, -65, -65, -4, 2, -81, -2, -11, -81, -15, 4, -11, -11, -12, 1, -12, -13, -81, -4, -12, -13, -8, -16, -81, -13, -16, 3, -16, -67, -77, -78, -76, -68, -109, -58, -73, -73, -74, -61, -107, -58, -61, -78, -59, -70, -64, -65, -98, -60, -98, -79, -94, -94, -95, -82, -126, -85, -82, -116, -88, -99, -75, -98, -99, -97, -89, 125, -94, -80, -95, -82, -114, -95, -98, -79, -94, -94, -95, -82, -119, -81, -80, -61, -76, -76, -77, -64, -108, -67, -64, -98, -70, -81, -57, -80, -81, -79, -71, -101, -63, -33, -45, -22, -76, -25, -40, -40, -41, -28, -65, -27, -107, -111, -106, 106, -99, -114, -114, -115, -102, 117, -101};
    }

    static {
        A03();
    }

    public C1699Zh() {
        this(new Q5(true, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    public C1699Zh(Q5 q5, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        int i7;
        String A02 = A02(163, 19, 43);
        String A022 = A02(21, 1, 88);
        A04(i3, 0, A02, A022);
        String A023 = A02(131, 32, 25);
        A04(i4, 0, A023, A022);
        String A024 = A02(193, 11, 5);
        A04(i, i3, A024, A02);
        A04(i, i4, A024, A023);
        A04(i2, i, A02(182, 11, 79), A024);
        A04(i6, 0, A02(FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 20, 46), A022);
        this.A08 = q5;
        this.A07 = AbstractC2094gE.A0O(i);
        this.A06 = AbstractC2094gE.A0O(i2);
        this.A05 = AbstractC2094gE.A0O(i3);
        this.A04 = AbstractC2094gE.A0O(i4);
        this.A02 = i5;
        if (this.A02 != -1) {
            i7 = this.A02;
        } else {
            i7 = 13107200;
        }
        this.A00 = i7;
        this.A09 = z;
        this.A03 = AbstractC2094gE.A0O(i6);
        this.A0A = z2;
    }

    public static int A00(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return 131072000;
            case 3:
                return 131072;
            case 4:
                return 131072;
            case 5:
                return 131072;
            case 6:
                return 131072;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0003 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int A01(com.facebook.ads.redexgen.core.InterfaceC1682Yq[] r4, com.facebook.ads.redexgen.core.QD[] r5) {
        /*
            r3 = this;
            r2 = 0
            r1 = 0
        L2:
            int r0 = r4.length
            if (r1 >= r0) goto L17
            r0 = r5[r1]
            if (r0 == 0) goto L14
            r0 = r4[r1]
            int r0 = r0.A9D()
            int r0 = A00(r0)
            int r2 = r2 + r0
        L14:
            int r1 = r1 + 1
            goto L2
        L17:
            r0 = 13107200(0xc80000, float:1.8367099E-38)
            int r0 = java.lang.Math.max(r0, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1699Zh.A01(com.facebook.ads.redexgen.X.Yq[], com.facebook.ads.redexgen.X.QD[]):int");
    }

    public static void A04(int i, int i2, String str, String str2) {
        AbstractC2011es.A09(i >= i2, str + A02(0, 21, 95) + str2);
    }

    private void A05(boolean z) {
        int i;
        if (this.A02 == -1) {
            i = 13107200;
        } else {
            i = this.A02;
        }
        this.A00 = i;
        this.A01 = false;
        if (z) {
            this.A08.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final Q5 A6l() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final long A6q() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final void AEm() {
        A05(true);
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final void AFF() {
        A05(true);
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final void AFN(InterfaceC1682Yq[] interfaceC1682YqArr, C1486Qs c1486Qs, QD[] qdArr) {
        int i;
        if (this.A02 == -1) {
            i = A01(interfaceC1682YqArr, qdArr);
        } else {
            i = this.A02;
        }
        this.A00 = i;
        this.A08.A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final boolean AHt() {
        return this.A0A;
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final boolean AJ1(long j, long j2, float f, boolean z) {
        boolean z2 = true;
        boolean z3 = this.A08.A00() >= this.A00;
        long j3 = this.A07;
        if (f > 1.0f) {
            j3 = Math.min(AbstractC2094gE.A0Q(j3, f), this.A06);
        }
        if (j2 < Math.max(j3, 500000L)) {
            if (!this.A09 && z3) {
                z2 = false;
            }
            this.A01 = z2;
            if (!this.A01 && j2 < 500000) {
                AbstractC2055fb.A07(A02(22, 18, 84), A02(40, 71, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
            }
        } else if (j2 >= this.A06 || z3) {
            this.A01 = false;
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final boolean AJ4(long j, float f, boolean z, boolean z2, long j2) {
        long A0R = AbstractC2094gE.A0R(j, f);
        long j3 = z ? this.A04 : this.A05;
        if (j2 != -9223372036854775807L) {
            j3 = Math.min(j2 / 2, j3);
        }
        return j3 <= 0 || A0R >= j3 || (!this.A09 && this.A08.A00() >= this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.PC
    public final void onPrepared() {
        A05(false);
    }
}
