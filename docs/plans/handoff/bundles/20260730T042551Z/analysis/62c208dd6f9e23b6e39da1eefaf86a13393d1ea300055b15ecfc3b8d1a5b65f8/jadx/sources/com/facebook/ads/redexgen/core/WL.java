package com.facebook.ads.redexgen.core;

import com.google.android.exoplayer2.DrmInitData;

/* loaded from: assets/audience_network.dex */
public final class WL {
    public static String[] A0C = {"Zrd6uyxy", "vFKQr45TOct89ZfhaUaYUg6BLrfY60", "4ECVfXAXq9cozf3fcV0vXQ5rCLuUsYEl", "QAiPwJTOIU4HP6qqKpIQL6D0qJyJ", "nZ8VN4SZo", "uZfngjyxWKdzRYPVpcJqM40vVCq1XNEL", "Zg4kEXUA6csoYy2RDICvr1Cjq2QrEj", "U"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public WC A04;
    public C1618Wc A05;
    public boolean A06;
    public final InterfaceC1580Uo A07;
    public final C1617Wb A08 = new C1617Wb();
    public final C2070fq A09 = new C2070fq();
    public final C2070fq A0B = new C2070fq(1);
    public final C2070fq A0A = new C2070fq();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final int A04(int i, int i2) {
        C2070fq c2070fq;
        int length;
        C1616Wa A07 = A07();
        if (A07 == null) {
            return 0;
        }
        int i3 = A07.A00;
        String[] strArr = A0C;
        if (strArr[6].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0C;
        strArr2[6] = "gt5i5jnF8aN0UoncZ6FpmGCIeV43ol";
        strArr2[1] = "CwvcK5zNSgmoxol92UAPtG1soOCl19";
        if (i3 != 0) {
            c2070fq = this.A08.A0H;
            length = A07.A00;
        } else {
            byte[] bArr = (byte[]) AbstractC2094gE.A0f(A07.A04);
            this.A0A.A0j(bArr, bArr.length);
            c2070fq = this.A0A;
            length = bArr.length;
        }
        boolean A06 = this.A08.A06(this.A01);
        boolean z = A06 || i2 != 0;
        this.A0B.A0l()[0] = (byte) ((z ? 128 : 0) | length);
        this.A0B.A0f(0);
        this.A07.AHy(this.A0B, 1, 1);
        this.A07.AHy(c2070fq, length, 1);
        if (!z) {
            return length + 1;
        }
        if (!A06) {
            this.A09.A0d(8);
            byte[] A0l = this.A09.A0l();
            A0l[0] = 0;
            A0l[1] = 1;
            A0l[2] = (byte) ((i2 >> 8) & 255);
            A0l[3] = (byte) (i2 & 255);
            A0l[4] = (byte) ((i >> 24) & 255);
            A0l[5] = (byte) ((i >> 16) & 255);
            A0l[6] = (byte) ((i >> 8) & 255);
            A0l[7] = (byte) (i & 255);
            this.A07.AHy(this.A09, 8, 1);
            return length + 1 + 8;
        }
        C2070fq c2070fq2 = this.A08.A0H;
        int A0M = c2070fq2.A0M();
        c2070fq2.A0g(-2);
        int i4 = (A0M * 6) + 2;
        if (i2 != 0) {
            this.A09.A0d(i4);
            byte[] A0l2 = this.A09.A0l();
            c2070fq2.A0k(A0l2, 0, i4);
            int i5 = (((A0l2[2] & 255) << 8) | (A0l2[3] & 255)) + i2;
            A0l2[2] = (byte) ((i5 >> 8) & 255);
            A0l2[3] = (byte) (i5 & 255);
            c2070fq2 = this.A09;
        }
        this.A07.AHy(c2070fq2, i4, 1);
        return length + 1 + i4;
    }

    public WL(InterfaceC1580Uo interfaceC1580Uo, C1618Wc c1618Wc, WC wc) {
        this.A07 = interfaceC1580Uo;
        this.A05 = c1618Wc;
        this.A04 = wc;
        A0C(c1618Wc, wc);
    }

    public final int A02() {
        int i;
        if (!this.A06) {
            i = this.A05.A04[this.A01];
        } else {
            boolean[] zArr = this.A08.A0G;
            int flags = this.A01;
            i = zArr[flags] ? 1 : 0;
        }
        C1616Wa A07 = A07();
        String[] strArr = A0C;
        String str = strArr[6];
        String str2 = strArr[1];
        int length = str.length();
        int flags2 = str2.length();
        if (length != flags2) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0C;
        strArr2[6] = "6AJRHwsUS8RXngKZJc3qLIpgpJriJj";
        strArr2[1] = "k1Q7SD5DHXGIGC1tSYK8DbQBChI57F";
        if (A07 != null) {
            return i | 1073741824;
        }
        return i;
    }

    public final int A03() {
        if (!this.A06) {
            return this.A05.A05[this.A01];
        }
        return this.A08.A0B[this.A01];
    }

    public final long A05() {
        if (!this.A06) {
            return this.A05.A06[this.A01];
        }
        return this.A08.A0E[this.A02];
    }

    public final long A06() {
        if (!this.A06) {
            return this.A05.A07[this.A01];
        }
        return this.A08.A00(this.A01);
    }

    public final C1616Wa A07() {
        C1616Wa A00;
        if (!this.A06) {
            return null;
        }
        int i = ((WC) AbstractC2094gE.A0f(this.A08.A06)).A02;
        if (this.A08.A07 != null) {
            A00 = this.A08.A07;
        } else {
            A00 = this.A05.A03.A00(i);
        }
        if (A00 == null || !A00.A03) {
            return null;
        }
        C1616Wa encryptionBox = A00;
        return encryptionBox;
    }

    public final void A08() {
        this.A08.A01();
        this.A01 = 0;
        this.A02 = 0;
        this.A00 = 0;
        this.A03 = 0;
        this.A06 = false;
    }

    public final void A09() {
        C1616Wa A07 = A07();
        if (A07 == null) {
            return;
        }
        C2070fq c2070fq = this.A08.A0H;
        if (A07.A00 != 0) {
            c2070fq.A0g(A07.A00);
        }
        if (this.A08.A06(this.A01)) {
            int A0M = c2070fq.A0M() * 6;
            if (A0C[2].charAt(6) != 'A') {
                throw new RuntimeException();
            }
            A0C[7] = "m8P1DFOF";
            c2070fq.A0g(A0M);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0006 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0A(long r5) {
        /*
            r4 = this;
            int r3 = r4.A01
        L2:
            com.facebook.ads.redexgen.X.Wb r0 = r4.A08
            int r0 = r0.A00
            if (r3 >= r0) goto L1f
            com.facebook.ads.redexgen.X.Wb r0 = r4.A08
            long r1 = r0.A00(r3)
            int r0 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r0 > 0) goto L1f
            com.facebook.ads.redexgen.X.Wb r0 = r4.A08
            boolean[] r0 = r0.A0G
            boolean r0 = r0[r3]
            if (r0 == 0) goto L1c
            r4.A03 = r3
        L1c:
            int r3 = r3 + 1
            goto L2
        L1f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.WL.A0A(long):void");
    }

    public final void A0B(DrmInitData drmInitData) {
        C1616Wa encryptionBox = this.A05.A03.A00(((WC) AbstractC2094gE.A0f(this.A08.A06)).A02);
        this.A07.A6U(this.A05.A03.A07.A07().A0u(drmInitData.A01(encryptionBox != null ? encryptionBox.A02 : null)).A14());
    }

    public final void A0C(C1618Wc c1618Wc, WC wc) {
        this.A05 = c1618Wc;
        this.A04 = wc;
        this.A07.A6U(c1618Wc.A03.A07);
        A08();
    }

    public final boolean A0D() {
        this.A01++;
        if (!this.A06) {
            return false;
        }
        this.A00++;
        if (this.A00 != this.A08.A0C[this.A02]) {
            return true;
        }
        this.A02++;
        this.A00 = 0;
        return false;
    }
}
