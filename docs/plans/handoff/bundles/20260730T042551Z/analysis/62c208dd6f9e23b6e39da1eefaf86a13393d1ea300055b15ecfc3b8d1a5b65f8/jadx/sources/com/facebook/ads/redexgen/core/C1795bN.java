package com.facebook.ads.redexgen.core;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.bN, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1795bN {
    public static String[] A07 = {"K4xrGqafDQDRAhZSdWhuk587fTAY7MFb", "i1IysyxujImbAMMJpoCKgo8tfO0bOyoC", "rwWqJPEt5zHE5awNJTD09hJhTdsjiq1J", "kApBPijEbT2iCyiztTt35QXvkWAJXahs", "Th8C", "HcngvQofEhe8UbYnWIZRdwufCrY", "hzopP5tPacE7lb1riREOzi3", "Ox0o8AmhRhpBtQfkCDQ1Dk"};
    public long A00;
    public C1492Qy A01;
    public C1492Qy A02;
    public C1492Qy A03;
    public final int A04;
    public final InterfaceC1918dM A05;
    public final C2070fq A06 = new C2070fq(32);

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C1492Qy A04(C1492Qy c1492Qy, C1637Ww c1637Ww, C1797bP c1797bP, C2070fq c2070fq) {
        int i;
        long j = c1797bP.A01;
        c2070fq.A0d(1);
        C1492Qy A03 = A03(c1492Qy, j, c2070fq.A0l(), 1);
        long j2 = j + 1;
        byte b = c2070fq.A0l()[0];
        boolean z = (b & 128) != 0;
        int i2 = b & Byte.MAX_VALUE;
        C1530Sk c1530Sk = c1637Ww.A05;
        if (c1530Sk.A04 == null) {
            c1530Sk.A04 = new byte[16];
        } else {
            Arrays.fill(c1530Sk.A04, (byte) 0);
        }
        C1492Qy A032 = A03(A03, j2, c1530Sk.A04, i2);
        long j3 = j2 + i2;
        if (z) {
            c2070fq.A0d(2);
            A032 = A03(A032, j3, c2070fq.A0l(), 2);
            j3 += 2;
            i = c2070fq.A0M();
        } else {
            i = 1;
        }
        int[] iArr = c1530Sk.A06;
        if (iArr == null || iArr.length < i) {
            iArr = new int[i];
        }
        int[] iArr2 = c1530Sk.A07;
        if (iArr2 == null || iArr2.length < i) {
            iArr2 = new int[i];
        }
        if (z) {
            int i3 = i * 6;
            c2070fq.A0d(i3);
            A032 = A03(A032, j3, c2070fq.A0l(), i3);
            j3 += i3;
            c2070fq.A0f(0);
            for (int i4 = 0; i4 < i; i4++) {
                iArr[i4] = c2070fq.A0M();
                iArr2[i4] = c2070fq.A0L();
            }
        } else {
            iArr[0] = 0;
            iArr2[0] = c1797bP.A00 - ((int) (j3 - c1797bP.A01));
        }
        C1579Um c1579Um = (C1579Um) AbstractC2094gE.A0f(c1797bP.A02);
        c1530Sk.A02(i, iArr, iArr2, c1579Um.A03, c1530Sk.A04, c1579Um.A01, c1579Um.A02, c1579Um.A00);
        int i5 = (int) (j3 - c1797bP.A01);
        c1797bP.A01 += i5;
        c1797bP.A00 -= i5;
        return A032;
    }

    public C1795bN(InterfaceC1918dM interfaceC1918dM) {
        this.A05 = interfaceC1918dM;
        this.A04 = interfaceC1918dM.A88();
        this.A01 = new C1492Qy(0L, this.A04);
        this.A02 = this.A01;
        this.A03 = this.A01;
    }

    private int A00(int i) {
        if (this.A03.A03 == null) {
            this.A03.A03(this.A05.A3z(), new C1492Qy(this.A03.A00, this.A04));
        }
        return Math.min(i, (int) (this.A03.A00 - this.A00));
    }

    public static C1492Qy A01(C1492Qy c1492Qy, long j) {
        while (j >= c1492Qy.A00) {
            c1492Qy = c1492Qy.A02;
        }
        return c1492Qy;
    }

    public static C1492Qy A02(C1492Qy c1492Qy, long j, ByteBuffer byteBuffer, int i) {
        C1492Qy A01 = A01(c1492Qy, j);
        while (i > 0) {
            int remaining = (int) (A01.A00 - j);
            int min = Math.min(i, remaining);
            byte[] bArr = A01.A03.A01;
            int remaining2 = A01.A00(j);
            byteBuffer.put(bArr, remaining2, min);
            i -= min;
            j += min;
            if (j == A01.A00) {
                A01 = A01.A02;
            }
        }
        return A01;
    }

    public static C1492Qy A03(C1492Qy c1492Qy, long j, byte[] bArr, int i) {
        C1492Qy A01 = A01(c1492Qy, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (A01.A00 - j));
            byte[] bArr2 = A01.A03.A01;
            int toCopy = A01.A00(j);
            int remaining = i - i2;
            System.arraycopy(bArr2, toCopy, bArr, remaining, min);
            i2 -= min;
            j += min;
            if (j == A01.A00) {
                A01 = A01.A02;
            }
        }
        return A01;
    }

    public static C1492Qy A05(C1492Qy c1492Qy, C1637Ww c1637Ww, C1797bP c1797bP, C2070fq c2070fq) {
        if (c1637Ww.A0E()) {
            c1492Qy = A04(c1492Qy, c1637Ww, c1797bP, c2070fq);
        }
        if (c1637Ww.A03()) {
            c2070fq.A0d(4);
            C1492Qy A03 = A03(c1492Qy, c1797bP.A01, c2070fq.A0l(), 4);
            int A0L = c2070fq.A0L();
            c1797bP.A01 += 4;
            c1797bP.A00 -= 4;
            c1637Ww.A0C(A0L);
            C1492Qy A02 = A02(A03, c1797bP.A01, c1637Ww.A02, A0L);
            c1797bP.A01 += A0L;
            c1797bP.A00 -= A0L;
            String[] strArr = A07;
            String str = strArr[7];
            String str2 = strArr[4];
            int sampleSize = str.length();
            if (sampleSize == str2.length()) {
                throw new RuntimeException();
            }
            A07[3] = "FBV6Hh7qKs7coCG2tPdPGbZ4jODJmT0u";
            c1637Ww.A0D(c1797bP.A00);
            return A02(A02, c1797bP.A01, c1637Ww.A03, c1797bP.A00);
        }
        c1637Ww.A0C(c1797bP.A00);
        return A02(c1492Qy, c1797bP.A01, c1637Ww.A02, c1797bP.A00);
    }

    private void A06(int i) {
        this.A00 += i;
        if (this.A00 == this.A03.A00) {
            this.A03 = this.A03.A02;
        }
    }

    private void A07(C1492Qy c1492Qy) {
        if (c1492Qy.A03 == null) {
            return;
        }
        this.A05.AGm(c1492Qy);
        c1492Qy.A01();
    }

    public final int A08(O9 o9, int i, boolean z) throws IOException {
        int read = o9.read(this.A03.A03.A01, this.A03.A00(this.A00), A00(i));
        if (read == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        A06(read);
        return read;
    }

    public final long A09() {
        return this.A00;
    }

    public final void A0A() {
        A07(this.A01);
        this.A01.A02(0L, this.A04);
        this.A02 = this.A01;
        this.A03 = this.A01;
        this.A00 = 0L;
        this.A05.AJY();
    }

    public final void A0B() {
        this.A02 = this.A01;
    }

    public final void A0C(long j) {
        if (j == -1) {
            return;
        }
        while (true) {
            long j2 = this.A01.A00;
            String[] strArr = A07;
            if (strArr[7].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            A07[6] = "Y0CaqHQLZ7PmbtNCYm";
            if (j < j2) {
                if (this.A02.A01 < this.A01.A01) {
                    C1492Qy c1492Qy = this.A01;
                    if (A07[6].length() != 31) {
                        String[] strArr2 = A07;
                        strArr2[1] = "dP6aAoHkUL99AaxS6PgiDBg5BTNZmNNt";
                        strArr2[0] = "grmUak7ijGAaApnjW1yWZUsAKbuAYPVj";
                        this.A02 = c1492Qy;
                        return;
                    }
                    this.A02 = c1492Qy;
                    return;
                }
                return;
            }
            this.A05.AGl(this.A01.A03);
            this.A01 = this.A01.A01();
        }
    }

    public final void A0D(C1637Ww c1637Ww, C1797bP c1797bP) {
        A05(this.A02, c1637Ww, c1797bP, this.A06);
    }

    public final void A0E(C1637Ww c1637Ww, C1797bP c1797bP) {
        this.A02 = A05(this.A02, c1637Ww, c1797bP, this.A06);
    }

    public final void A0F(C2070fq c2070fq, int i) {
        while (i > 0) {
            int A00 = A00(i);
            byte[] bArr = this.A03.A03.A01;
            int bytesAppended = this.A03.A00(this.A00);
            c2070fq.A0k(bArr, bytesAppended, A00);
            i -= A00;
            A06(A00);
        }
    }
}
