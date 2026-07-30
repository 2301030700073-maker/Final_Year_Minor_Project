package com.facebook.ads.redexgen.core;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Set;

/* renamed from: com.facebook.ads.redexgen.X.fq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2070fq {
    public static byte[] A03;
    public static String[] A04 = {"sgZHF6WMmNxVNdT9Mvl6Q6eeNMrwMOQZ", "jGwn8aeGQCxBekE5FDCkmDw7GrnOmTWR", "0y8vMtDCGrbVU8SscKTuCWVKvyPZNN9Z", "1cf8sYJm05YI0H75zbqk3Isx5IhXC0R7", "RnxjHFNoW9S", "3CaCneN7411g617UmyF9jQBTzqrPlwcf", "IDDsILUBRhrpc1euPTRCRNr2seKql7oY", "kBhvxkQf94zBJaZRERNvuDiNxBHjsyP5"};
    public static final Set<Charset> A05;
    public static final char[] A06;
    public static final char[] A07;
    public byte[] A00;
    public int A01;
    public int A02;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A04[0].charAt(22) != 'e') {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[2] = "2nOv0WyHq1Pd1PfBQVHUVKbkSKSWcZRN";
            strArr[7] = "8oZvcmEd48OR3iG9WtUW0yYKO7XoUIjF";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 118);
            i4++;
        }
    }

    public static void A04() {
        A03 = new byte[]{70, 97, 121, 110, 99, 102, 107, 47, 90, 91, 73, 34, 55, 47, 124, 106, 126, 122, 106, 97, 108, 106, 47, 108, 96, 97, 123, 102, 97, 122, 110, 123, 102, 96, 97, 47, 109, 118, 123, 106, 53, 47, 96, 71, 95, 72, 69, 64, 77, 9, 124, 125, 111, 4, 17, 9, 90, 76, 88, 92, 76, 71, 74, 76, 9, 79, 64, 91, 90, 93, 9, 75, 80, 93, 76, 19, 9, 30, 37, 58, 106, 40, 35, 62, 106, 36, 37, 62, 106, 48, 47, 56, 37, 112, 106, 36, 31, 2, 4, 1, 1, 30, 3, 5, 20, 21, 81, 18, 25, 16, 3, 2, 20, 5, 75, 81};
    }

    static {
        A04();
        A06 = new char[]{'\r', '\n'};
        A07 = new char[]{'\n'};
        A05 = MetaExoPlayerCustomizedCollections.A05(AbstractC2180hd.A02, AbstractC2180hd.A06, AbstractC2180hd.A03, AbstractC2180hd.A04, AbstractC2180hd.A05);
    }

    public C2070fq() {
        this.A00 = AbstractC2094gE.A07;
    }

    public C2070fq(int i) {
        this.A00 = new byte[i];
        this.A01 = i;
    }

    public C2070fq(byte[] bArr) {
        this.A00 = bArr;
        this.A01 = bArr.length;
    }

    public C2070fq(byte[] bArr, int i) {
        this.A00 = bArr;
        this.A01 = i;
    }

    private char A00(Charset charset, char[] cArr) {
        char A01;
        int i;
        if ((charset.equals(AbstractC2180hd.A06) || charset.equals(AbstractC2180hd.A02)) && A07() >= 1) {
            A01 = AbstractC1752ad.A01(AbstractC2591op.A00(this.A00[this.A02]));
            i = 1;
        } else if ((charset.equals(AbstractC2180hd.A03) || charset.equals(AbstractC2180hd.A04)) && A07() >= 2) {
            A01 = AbstractC1752ad.A00(this.A00[this.A02], this.A00[this.A02 + 1]);
            i = 2;
        } else {
            if (!charset.equals(AbstractC2180hd.A05) || A07() < 2) {
                return (char) 0;
            }
            A01 = AbstractC1752ad.A00(this.A00[this.A02 + 1], this.A00[this.A02]);
            i = 2;
        }
        if (!AbstractC1752ad.A04(cArr, A01)) {
            return (char) 0;
        }
        this.A02 += i;
        char character = AbstractC1752ad.A01(A01);
        return character;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00f0, code lost:
    
        if (r7.equals(com.facebook.ads.redexgen.core.AbstractC2180hd.A05) != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00f8, code lost:
    
        if (r7.equals(com.facebook.ads.redexgen.core.AbstractC2180hd.A04) == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0129, code lost:
    
        throw new java.lang.IllegalArgumentException(A03(95, 21, 7) + r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00fa, code lost:
    
        r5 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006b, code lost:
    
        if (r4 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        r4 = r7.equals(com.facebook.ads.redexgen.core.AbstractC2180hd.A04);
        r1 = com.facebook.ads.redexgen.core.C2070fq.A04[6].charAt(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0080, code lost:
    
        if (r1 == 114) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0092, code lost:
    
        com.facebook.ads.redexgen.core.C2070fq.A04[4] = "IHZGXntpU11GnTLE5ebG2qUBH80DT5";
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
    
        if (r4 == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0087, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x009f, code lost:
    
        if (r6.A00[r3] != 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ab, code lost:
    
        if (com.facebook.ads.redexgen.core.AbstractC2094gE.A16(r6.A00[r3 + 1]) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ad, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x008f, code lost:
    
        if (r4 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0104, code lost:
    
        if (r3 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x00e8, code lost:
    
        if (r3 == false) goto L51;
     */
    /* JADX WARN: Incorrect condition in loop: B:19:0x0018 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int A01(java.nio.charset.Charset r7) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C2070fq.A01(java.nio.charset.Charset):int");
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x000c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String A02(char r5) {
        /*
            r4 = this;
            int r0 = r4.A07()
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            int r3 = r4.A02
        La:
            int r0 = r4.A01
            if (r3 >= r0) goto L17
            byte[] r0 = r4.A00
            r0 = r0[r3]
            if (r0 == r5) goto L17
            int r3 = r3 + 1
            goto La
        L17:
            byte[] r2 = r4.A00
            int r1 = r4.A02
            int r0 = r4.A02
            int r0 = r3 - r0
            java.lang.String r2 = com.facebook.ads.redexgen.core.AbstractC2094gE.A0r(r2, r1, r0)
            r4.A02 = r3
            int r1 = r4.A02
            int r0 = r4.A01
            if (r1 >= r0) goto L31
            int r0 = r4.A02
            int r0 = r0 + 1
            r4.A02 = r0
        L31:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C2070fq.A02(char):java.lang.String");
    }

    private void A05(Charset charset) {
        if (A00(charset, A06) == '\r') {
            A00(charset, A07);
        }
    }

    public final double A06() {
        return Double.longBitsToDouble(A0P());
    }

    public final int A07() {
        return this.A01 - this.A02;
    }

    public final int A08() {
        return this.A00.length;
    }

    public final int A09() {
        return this.A02;
    }

    public final int A0A() {
        return this.A01;
    }

    public final int A0B() {
        return this.A00[this.A02] & 255;
    }

    public final int A0C() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = (bArr[i] & 255) << 24;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 16);
        byte[] bArr3 = this.A00;
        int i5 = this.A02;
        this.A02 = i5 + 1;
        int i6 = i4 | ((bArr3[i5] & 255) << 8);
        byte[] bArr4 = this.A00;
        int i7 = this.A02;
        this.A02 = i7 + 1;
        return i6 | (bArr4[i7] & 255);
    }

    public final int A0D() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = ((bArr[i] & 255) << 24) >> 8;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 8);
        byte[] bArr3 = this.A00;
        int i5 = this.A02;
        this.A02 = i5 + 1;
        return i4 | (bArr3[i5] & 255);
    }

    public final int A0E() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 8);
        byte[] bArr3 = this.A00;
        int i5 = this.A02;
        this.A02 = i5 + 1;
        int i6 = i4 | ((bArr3[i5] & 255) << 16);
        byte[] bArr4 = this.A00;
        int i7 = this.A02;
        this.A02 = i7 + 1;
        return i6 | ((bArr4[i7] & 255) << 24);
    }

    public final int A0F() {
        int A0E = A0E();
        if (A0E >= 0) {
            return A0E;
        }
        throw new IllegalStateException(A03(77, 18, 60) + A0E);
    }

    public final int A0G() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        return i2 | ((bArr2[i3] & 255) << 8);
    }

    public final int A0H() {
        int b2 = A0I();
        int b1 = A0I();
        int b4 = A0I();
        int b3 = A0I();
        int b22 = (b2 << 21) | (b1 << 14);
        int b12 = b4 << 7;
        return b22 | b12 | b3;
    }

    public final int A0I() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        return bArr[i] & 255;
    }

    public final int A0J() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        int i4 = i2 | (bArr2[i3] & 255);
        int result = this.A02;
        this.A02 = result + 2;
        return i4;
    }

    public final int A0K() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = (bArr[i] & 255) << 16;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & 255) << 8);
        byte[] bArr3 = this.A00;
        int i5 = this.A02;
        this.A02 = i5 + 1;
        return i4 | (bArr3[i5] & 255);
    }

    public final int A0L() {
        int A0C = A0C();
        if (A0C >= 0) {
            return A0C;
        }
        throw new IllegalStateException(A03(77, 18, 60) + A0C);
    }

    public final int A0M() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        return i2 | (bArr2[i3] & 255);
    }

    public final long A0N() {
        byte[] bArr = this.A00;
        this.A02 = this.A02 + 1;
        long j = bArr[r1] & 255;
        byte[] bArr2 = this.A00;
        this.A02 = this.A02 + 1;
        long j2 = j | ((bArr2[r1] & 255) << 8);
        byte[] bArr3 = this.A00;
        this.A02 = this.A02 + 1;
        long j3 = j2 | ((bArr3[r1] & 255) << 16);
        byte[] bArr4 = this.A00;
        this.A02 = this.A02 + 1;
        long j4 = j3 | ((bArr4[r1] & 255) << 24);
        byte[] bArr5 = this.A00;
        this.A02 = this.A02 + 1;
        long j5 = j4 | ((bArr5[r1] & 255) << 32);
        byte[] bArr6 = this.A00;
        this.A02 = this.A02 + 1;
        long j6 = j5 | ((bArr6[r1] & 255) << 40);
        byte[] bArr7 = this.A00;
        this.A02 = this.A02 + 1;
        long j7 = j6 | ((bArr7[r1] & 255) << 48);
        byte[] bArr8 = this.A00;
        this.A02 = this.A02 + 1;
        return j7 | ((255 & bArr8[r1]) << 56);
    }

    public final long A0O() {
        byte[] bArr = this.A00;
        this.A02 = this.A02 + 1;
        long j = bArr[r1] & 255;
        byte[] bArr2 = this.A00;
        this.A02 = this.A02 + 1;
        long j2 = j | ((bArr2[r1] & 255) << 8);
        byte[] bArr3 = this.A00;
        this.A02 = this.A02 + 1;
        long j3 = j2 | ((bArr3[r1] & 255) << 16);
        byte[] bArr4 = this.A00;
        this.A02 = this.A02 + 1;
        return j3 | ((255 & bArr4[r1]) << 24);
    }

    public final long A0P() {
        byte[] bArr = this.A00;
        this.A02 = this.A02 + 1;
        long j = (bArr[r1] & 255) << 56;
        byte[] bArr2 = this.A00;
        this.A02 = this.A02 + 1;
        long j2 = j | ((bArr2[r1] & 255) << 48);
        byte[] bArr3 = this.A00;
        this.A02 = this.A02 + 1;
        long j3 = j2 | ((bArr3[r1] & 255) << 40);
        byte[] bArr4 = this.A00;
        this.A02 = this.A02 + 1;
        long j4 = j3 | ((bArr4[r1] & 255) << 32);
        byte[] bArr5 = this.A00;
        this.A02 = this.A02 + 1;
        long j5 = j4 | ((bArr5[r1] & 255) << 24);
        byte[] bArr6 = this.A00;
        this.A02 = this.A02 + 1;
        long j6 = j5 | ((bArr6[r1] & 255) << 16);
        byte[] bArr7 = this.A00;
        this.A02 = this.A02 + 1;
        long j7 = j6 | ((bArr7[r1] & 255) << 8);
        byte[] bArr8 = this.A00;
        this.A02 = this.A02 + 1;
        return j7 | (255 & bArr8[r1]);
    }

    public final long A0Q() {
        byte[] bArr = this.A00;
        this.A02 = this.A02 + 1;
        long j = (bArr[r1] & 255) << 24;
        byte[] bArr2 = this.A00;
        this.A02 = this.A02 + 1;
        long j2 = j | ((bArr2[r1] & 255) << 16);
        byte[] bArr3 = this.A00;
        this.A02 = this.A02 + 1;
        long j3 = j2 | ((bArr3[r1] & 255) << 8);
        byte[] bArr4 = this.A00;
        this.A02 = this.A02 + 1;
        return j3 | (255 & bArr4[r1]);
    }

    public final long A0R() {
        long A0P = A0P();
        if (A0P >= 0) {
            return A0P;
        }
        throw new IllegalStateException(A03(77, 18, 60) + A0P);
    }

    public final long A0S() {
        int i = 0;
        byte[] bArr = this.A00;
        int length = this.A02;
        long j = bArr[length];
        int i2 = 7;
        while (true) {
            if (i2 < 0) {
                break;
            }
            int i3 = 1 << i2;
            String[] strArr = A04;
            String str = strArr[2];
            String str2 = strArr[7];
            int charAt = str.charAt(3);
            int length2 = str2.charAt(3);
            if (charAt != length2) {
                throw new RuntimeException();
            }
            A04[4] = "ETCZXvmlxAco69DMc1yhp35R898zYg2c";
            if ((i3 & j) != 0) {
                i2--;
            } else if (i2 < 6) {
                int length3 = 1 << i2;
                j &= length3 - 1;
                i = 7 - i2;
            } else if (i2 == 7) {
                i = 1;
            }
        }
        if (i != 0) {
            for (int x = 1; x < i; x++) {
                byte[] bArr2 = this.A00;
                int length4 = this.A02;
                byte b = bArr2[length4 + x];
                if (A04[6].charAt(10) != 'r') {
                    if ((b & 192) == 128) {
                        int length5 = b & 63;
                        j = (j << 6) | length5;
                    } else {
                        throw new NumberFormatException(A03(0, 42, 121) + j);
                    }
                } else {
                    A04[0] = "ABLHFtiHTBntQUf582rh98ec122CeBpJ";
                    if ((b & 192) == 128) {
                        int length52 = b & 63;
                        j = (j << 6) | length52;
                    } else {
                        throw new NumberFormatException(A03(0, 42, 121) + j);
                    }
                }
            }
            int x2 = this.A02;
            int i4 = x2 + i;
            if (A04[4].length() == 10) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[1] = "SnOiIeyqmXHOny9ULGbkAWIlY2fxst1T";
            strArr2[3] = "n7vuYFEmJGDN0NemylZkb0tXGkCP6fKV";
            this.A02 = i4;
            return j;
        }
        throw new NumberFormatException(A03(42, 35, 95) + j);
    }

    public final String A0T() {
        return A0Y(AbstractC2180hd.A06);
    }

    public final String A0U() {
        return A02((char) 0);
    }

    public final String A0V(int i) {
        if (i == 0) {
            return A03(0, 0, 82);
        }
        int i2 = i;
        int stringLength = this.A02;
        int lastIndex = (stringLength + i) - 1;
        int stringLength2 = this.A01;
        if (lastIndex < stringLength2) {
            int stringLength3 = this.A00[lastIndex];
            if (stringLength3 == 0) {
                i2--;
            }
        }
        byte[] bArr = this.A00;
        int stringLength4 = this.A02;
        String A0r = AbstractC2094gE.A0r(bArr, stringLength4, i2);
        int stringLength5 = this.A02;
        this.A02 = stringLength5 + i;
        return A0r;
    }

    public final String A0W(int i) {
        return A0X(i, AbstractC2180hd.A06);
    }

    public final String A0X(int i, Charset charset) {
        String str = new String(this.A00, this.A02, i, charset);
        this.A02 += i;
        return str;
    }

    public final String A0Y(Charset charset) {
        AbstractC2011es.A09(A05.contains(charset), A03(95, 21, 7) + charset);
        if (A07() == 0) {
            return null;
        }
        if (!charset.equals(AbstractC2180hd.A02)) {
            A0Z();
        }
        int A01 = A01(charset);
        int lineLimit = this.A02;
        String A0X = A0X(A01 - lineLimit, charset);
        int i = this.A02;
        String line = A04[0];
        if (line.charAt(22) != 'e') {
            throw new RuntimeException();
        }
        A04[4] = "PcHNAKzW7Id9pw1";
        int lineLimit2 = this.A01;
        if (i == lineLimit2) {
            return A0X;
        }
        A05(charset);
        return A0X;
    }

    public final Charset A0Z() {
        if (A07() >= 3 && this.A00[this.A02] == -17 && this.A00[this.A02 + 1] == -69 && this.A00[this.A02 + 2] == -65) {
            this.A02 += 3;
            return AbstractC2180hd.A06;
        }
        if (A07() >= 2) {
            if (this.A00[this.A02] == -2 && this.A00[this.A02 + 1] == -1) {
                this.A02 += 2;
                if (A04[6].charAt(10) != 'r') {
                    throw new RuntimeException();
                }
                A04[5] = "VycTU3eqfjfr47GcRLoMj5IUz22El6lK";
                return AbstractC2180hd.A04;
            }
            if (this.A00[this.A02] == -1 && this.A00[this.A02 + 1] == -2) {
                this.A02 += 2;
                return AbstractC2180hd.A05;
            }
            return null;
        }
        return null;
    }

    public final short A0a() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        return (short) (i2 | ((bArr2[i3] & 255) << 8));
    }

    public final short A0b() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        this.A02 = i3 + 1;
        return (short) (i2 | (bArr2[i3] & 255));
    }

    public final void A0c(int i) {
        if (i > A08()) {
            this.A00 = Arrays.copyOf(this.A00, i);
        }
    }

    public final void A0d(int i) {
        A0j(A08() < i ? new byte[i] : this.A00, i);
    }

    public final void A0e(int i) {
        AbstractC2011es.A07(i >= 0 && i <= this.A00.length);
        this.A01 = i;
    }

    public final void A0f(int i) {
        AbstractC2011es.A07(i >= 0 && i <= this.A01);
        this.A02 = i;
    }

    public final void A0g(int i) {
        A0f(this.A02 + i);
    }

    public final void A0h(C2069fp c2069fp, int i) {
        A0k(c2069fp.A00, 0, i);
        c2069fp.A08(0);
    }

    public final void A0i(byte[] bArr) {
        A0j(bArr, bArr.length);
    }

    public final void A0j(byte[] bArr, int i) {
        this.A00 = bArr;
        this.A01 = i;
        this.A02 = 0;
    }

    public final void A0k(byte[] bArr, int i, int i2) {
        System.arraycopy(this.A00, this.A02, bArr, i, i2);
        this.A02 += i2;
    }

    public final byte[] A0l() {
        return this.A00;
    }
}
