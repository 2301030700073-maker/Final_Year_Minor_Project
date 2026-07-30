package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class XH {
    public static String[] A09 = {"xF1OVNhv34gr", "Z7KEplstrlhp0Mgg5lnC96tu7Ro43ZW2", "WKJpnrwSAFjEypSgaaiNhG5ke6onxRnV", "TXJRIsixK5yJqCMq", "MYA61", "9p9ZkMvKr2sXIZYYePUOEmwkk", "aBf", "QgfrcumWTp5RiW3AItOPO2ws9WzLPU1Z"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public boolean A06;
    public final C2070fq A07 = new C2070fq();
    public final int[] A08 = new int[256];

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(C2070fq c2070fq, int i) {
        int totalLength;
        if (i < 4) {
            return;
        }
        c2070fq.A0g(3);
        int i2 = i - 4;
        if ((c2070fq.A0I() & 128) != 0) {
            if (i2 < 7 || (totalLength = c2070fq.A0K()) < 4) {
                return;
            }
            this.A01 = c2070fq.A0M();
            this.A00 = c2070fq.A0M();
            this.A07.A0d(totalLength - 4);
            i2 -= 7;
        }
        int limit = this.A07.A09();
        int position = this.A07.A0A();
        if (limit < position && i2 > 0) {
            int min = Math.min(i2, position - limit);
            c2070fq.A0k(this.A07.A0l(), limit, min);
            this.A07.A0f(limit + min);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(C2070fq c2070fq, int i) {
        if (i < 19) {
            return;
        }
        this.A05 = c2070fq.A0M();
        this.A04 = c2070fq.A0M();
        c2070fq.A0g(11);
        this.A02 = c2070fq.A0M();
        this.A03 = c2070fq.A0M();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(C2070fq c2070fq, int i) {
        if (i % 5 != 2) {
            return;
        }
        c2070fq.A0g(2);
        if (A09[7].charAt(17) == 'T') {
            throw new RuntimeException();
        }
        String[] strArr = A09;
        strArr[4] = "3RQMu";
        strArr[3] = "rWU8GgymZzHN6Y7o";
        Arrays.fill(this.A08, 0);
        int i2 = i / 5;
        for (int entryCount = 0; entryCount < i2; entryCount++) {
            int A0I = c2070fq.A0I();
            int a = c2070fq.A0I();
            int A0I2 = c2070fq.A0I();
            int A0I3 = c2070fq.A0I();
            int index = A0I2 - 128;
            int cr = (int) (a + (index * 1.402d));
            int g = (int) ((a - ((A0I3 - 128) * 0.34414d)) - ((A0I2 - 128) * 0.71414d));
            int index2 = c2070fq.A0I() << 24;
            this.A08[A0I] = index2 | (AbstractC2094gE.A07(cr, 0, 255) << 16) | (AbstractC2094gE.A07(g, 0, 255) << 8) | AbstractC2094gE.A07((int) (a + ((A0I3 - 128) * 1.772d)), 0, 255);
        }
        this.A06 = true;
    }

    public final C1476Qh A06() {
        int A0I;
        if (this.A05 == 0 || this.A04 == 0 || this.A01 == 0 || this.A00 == 0 || this.A07.A0A() == 0 || this.A07.A09() != this.A07.A0A() || !this.A06) {
            return null;
        }
        C2070fq c2070fq = this.A07;
        if (A09[7].charAt(17) == 'T') {
            throw new RuntimeException();
        }
        A09[7] = "F5HzokmVQmdDygrKCJ97sg2uYkX7B305";
        c2070fq.A0f(0);
        int[] iArr = new int[this.A01 * this.A00];
        int runLength = 0;
        while (runLength < iArr.length) {
            int argbBitmapDataIndex = this.A07.A0I();
            if (argbBitmapDataIndex != 0) {
                int[] argbBitmapData = this.A08;
                iArr[runLength] = argbBitmapData[argbBitmapDataIndex];
                runLength++;
            } else {
                int color = this.A07.A0I();
                if (color == 0) {
                    continue;
                } else {
                    if ((color & 64) == 0) {
                        A0I = color & 63;
                    } else {
                        int i = (color & 63) << 8;
                        String[] strArr = A09;
                        if (strArr[2].charAt(15) != strArr[1].charAt(15)) {
                            A0I = i | this.A07.A0I();
                        } else {
                            String[] strArr2 = A09;
                            strArr2[2] = "9D911ciwCuAj6ORgduX3FTYAC6SlDkA0";
                            strArr2[1] = "AccULesfp8Tib20gvKc4QOGABTaHRosb";
                            A0I = i | this.A07.A0I();
                        }
                    }
                    Arrays.fill(iArr, runLength, runLength + A0I, (color & 128) == 0 ? 0 : this.A08[this.A07.A0I()]);
                    if (A09[7].charAt(17) == 'T') {
                        throw new RuntimeException();
                    }
                    A09[7] = "DZG1MT9YxdpyyOKXBSZofRRvdncZFrZt";
                    runLength += A0I;
                }
            }
        }
        return new C1868cY().A0D(Bitmap.createBitmap(iArr, this.A01, this.A00, Bitmap.Config.ARGB_8888)).A04(this.A02 / this.A05).A0A(0).A07(this.A03 / this.A04, 0).A09(0).A06(this.A01 / this.A05).A03(this.A00 / this.A04).A0H();
    }

    public final void A07() {
        this.A05 = 0;
        this.A04 = 0;
        this.A02 = 0;
        this.A03 = 0;
        this.A01 = 0;
        this.A00 = 0;
        this.A07.A0d(0);
        this.A06 = false;
    }
}
