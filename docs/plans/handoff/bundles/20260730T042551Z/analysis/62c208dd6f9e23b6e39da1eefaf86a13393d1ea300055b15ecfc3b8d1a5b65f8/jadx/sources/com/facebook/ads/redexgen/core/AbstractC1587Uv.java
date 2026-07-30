package com.facebook.ads.redexgen.core;

import android.util.Base64;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.Metadata;
import com.google.android.exoplayer2.extractor.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.extractor.metadata.vorbis.VorbisComment;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Uv, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1587Uv {
    public static byte[] A00;
    public static String[] A01 = {"K3Hvcn0QQZPqeTXlDvWNe1WQnNJGU4eO", "CrxDDnVP6T8axTGQ3xBb8C6obcEa6z", "luczMKT4QPUJt9pPpwptiBTuc1nxPY", "dc5VY6vrXlBjohbU4WOLC507PCDplm", "vLl1dRUqOhYJTcch0Lu8hqOpyXWph2Y2", "dBvQ4rm21Gvm3xo3tJ8ZErGDau928biw", "4K6zukpQLRs6ycFwEsql16shLElNJvVX", "tmniLU8yRwHHqnX2vfI0lIFQNHGyvqAK"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 16 out of bounds for length 16
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C1586Uu A06(C2070fq c2070fq) throws Q6 {
        A0C(1, c2070fq, false);
        int A0F = c2070fq.A0F();
        int A0I = c2070fq.A0I();
        int A0F2 = c2070fq.A0F();
        int A0E = c2070fq.A0E();
        if (A0E <= 0) {
            A0E = -1;
        }
        int A0E2 = c2070fq.A0E();
        if (A0E2 <= 0) {
            A0E2 = -1;
        }
        int A0E3 = c2070fq.A0E();
        if (A0E3 <= 0) {
            A0E3 = -1;
        }
        int A0I2 = c2070fq.A0I();
        return new C1586Uu(A0F, A0I, A0F2, A0E, A0E2, A0E3, (int) Math.pow(2.0d, A0I2 & 15), (int) Math.pow(2.0d, (A0I2 & 240) >> 4), (c2070fq.A0I() & 1) > 0, Arrays.copyOf(c2070fq.A0l(), c2070fq.A0A()));
    }

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 53);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{10, 115, 84, 92, 89, 80, 81, 21, 65, 90, 21, 69, 84, 71, 70, 80, 21, 99, 90, 71, 87, 92, 70, 21, 86, 90, 88, 88, 80, 91, 65, 15, 21, 115, 84, 92, 89, 80, 81, 21, 65, 90, 21, 69, 84, 71, 70, 80, 21, 67, 90, 71, 87, 92, 70, 21, 69, 92, 86, 65, 64, 71, 80, 20, 28, 13, 24, 29, 24, 13, 24, 6, 27, 21, 22, 26, 18, 6, 9, 16, 26, 13, 12, 11, 28, 121, 64, 93, 77, 70, 92, 122, 91, 70, 67, 38, 59, 51, 38, 32, 55, 38, 39, 99, 32, 43, 34, 49, 34, 32, 55, 38, 49, 48, 99, 100, 53, 44, 49, 33, 42, 48, 100, 57, 36, 44, 57, 63, 40, 57, 56, 124, 63, 51, 56, 57, 124, 62, 51, 51, 55, 124, 40, 51, 124, 47, 40, 61, 46, 40, 124, 43, 53, 40, 52, 124, 7, 108, 36, 105, 106, 112, 124, 108, 36, 104, 111, 112, 124, 108, 36, 104, 110, 1, 124, 61, 40, 124, 123, 102, 110, 123, 125, 106, 123, 122, 62, 118, 123, Byte.MAX_VALUE, 122, 123, 108, 62, 106, 103, 110, 123, 62, 40, 34, 33, 33, 60, 110, 58, 55, 62, 43, 110, 41, 60, 43, 47, 58, 43, 60, 110, 58, 38, 47, 32, 110, Byte.MAX_VALUE, 110, 32, 33, 58, 110, 42, 43, 45, 33, 42, 47, 44, 34, 43, 116, 110, 14, 26, 9, 5, 1, 6, 15, 72, 10, 1, 28, 72, 9, 14, 28, 13, 26, 72, 5, 7, 12, 13, 27, 72, 6, 7, 28, 72, 27, 13, 28, 72, 9, 27, 72, 13, 16, 24, 13, 11, 28, 13, 12, 81, 69, 86, 90, 94, 89, 80, 23, 85, 94, 67, 23, 82, 79, 71, 82, 84, 67, 82, 83, 23, 67, 88, 23, 85, 82, 23, 68, 82, 67, 110, 109, 109, 105, 119, 114, 34, 118, 123, 114, 103, 34, 101, 112, 103, 99, 118, 103, 112, 34, 118, 106, 99, 108, 34, 48, 34, 108, 109, 118, 34, 102, 103, 97, 109, 102, 99, 96, 110, 103, 56, 34, 103, 107, 122, 122, 99, 100, 109, 42, 126, 115, 122, 111, 42, 101, 126, 98, 111, 120, 42, 126, 98, 107, 100, 42, 58, 42, 100, 101, 126, 42, 121, Byte.MAX_VALUE, 122, 122, 101, 120, 126, 111, 110, 48, 42, 31, 3, 14, 12, 10, 7, 0, 3, 11, 10, 29, 79, 0, 9, 79, 27, 6, 2, 10, 79, 11, 0, 2, 14, 6, 1, 79, 27, 29, 14, 1, 28, 9, 0, 29, 2, 28, 79, 1, 0, 27, 79, 21, 10, 29, 0, 10, 11, 79, 0, 26, 27, 86, 65, 87, 77, 64, 81, 65, 112, 93, 84, 65, 4, 67, 86, 65, 69, 80, 65, 86, 4, 80, 76, 69, 74, 4, 22, 4, 77, 87, 4, 74, 75, 80, 4, 64, 65, 71, 75, 64, 69, 70, 72, 65, 89, 66, 13, 95, 72, 94, 72, 95, 91, 72, 73, 13, 79, 68, 89, 94, 13, 64, 88, 94, 89, 13, 79, 72, 13, 87, 72, 95, 66, 13, 76, 75, 89, 72, 95, 13, 64, 76, 93, 93, 68, 67, 74, 13, 78, 66, 88, 93, 65, 68, 67, 74, 13, 94, 89, 72, 93, 94, 95, 68, 68, 11, 88, 67, 68, 89, 95, 11, 67, 78, 74, 79, 78, 89, 17, 11};
    }

    static {
        A08();
    }

    public static int A00(int i) {
        int val = 0;
        while (i > 0) {
            val++;
            i >>>= 1;
        }
        return val;
    }

    public static long A01(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    public static Metadata A02(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String[] A1P = AbstractC2094gE.A1P(str, A07(0, 1, 2));
            int length = A1P.length;
            String A07 = A07(85, 10, 26);
            if (length != 2) {
                AbstractC2055fb.A07(A07, A07(1, 32, 0) + str);
            } else if (A1P[0].equals(A07(63, 22, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS))) {
                try {
                    arrayList.add(PictureFrame.A00(new C2070fq(Base64.decode(A1P[1], 0))));
                } catch (RuntimeException e) {
                    AbstractC2055fb.A0A(A07, A07(33, 30, 0), e);
                }
            } else {
                arrayList.add(new VorbisComment(A1P[0], A1P[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    /* JADX WARN: Incorrect condition in loop: B:12:0x008b */
    /* JADX WARN: Incorrect condition in loop: B:43:0x0065 */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.core.C1583Ur A03(com.facebook.ads.redexgen.core.C1582Uq r13) throws com.facebook.ads.redexgen.core.Q6 {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.AbstractC1587Uv.A03(com.facebook.ads.redexgen.X.Uq):com.facebook.ads.redexgen.X.Ur");
    }

    public static C1584Us A04(C2070fq c2070fq) throws Q6 {
        return A05(c2070fq, true, true);
    }

    /* JADX WARN: Incorrect condition in loop: B:5:0x0025 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.core.C1584Us A05(com.facebook.ads.redexgen.core.C2070fq r9, boolean r10, boolean r11) throws com.facebook.ads.redexgen.core.Q6 {
        /*
            if (r10 == 0) goto L7
            r1 = 3
            r0 = 0
            A0C(r1, r9, r0)
        L7:
            r3 = 7
            long r1 = r9.A0O()
            int r0 = (int) r1
            int r3 = r3 + 4
            java.lang.String r6 = r9.A0W(r0)
            int r0 = r6.length()
            int r3 = r3 + r0
            long r1 = r9.A0O()
            int r0 = (int) r1
            java.lang.String[] r5 = new java.lang.String[r0]
            int r7 = r3 + 4
            r8 = 0
        L22:
            long r3 = (long) r8
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 >= 0) goto L3e
            long r3 = r9.A0O()
            int r0 = (int) r3
            int r7 = r7 + 4
            java.lang.String r0 = r9.A0W(r0)
            r5[r8] = r0
            r0 = r5[r8]
            int r0 = r0.length()
            int r7 = r7 + r0
            int r8 = r8 + 1
            goto L22
        L3e:
            if (r11 == 0) goto L48
            int r0 = r9.A0I()
            r0 = r0 & 1
            if (r0 == 0) goto L50
        L48:
            int r1 = r7 + 1
            com.facebook.ads.redexgen.X.Us r0 = new com.facebook.ads.redexgen.X.Us
            r0.<init>(r6, r5, r1)
            return r0
        L50:
            r2 = 283(0x11b, float:3.97E-43)
            r1 = 30
            r0 = 2
            java.lang.String r1 = A07(r2, r1, r0)
            r0 = 0
            com.facebook.ads.redexgen.X.Q6 r0 = com.facebook.ads.redexgen.core.Q6.A01(r1, r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.AbstractC1587Uv.A05(com.facebook.ads.redexgen.X.fq, boolean, boolean):com.facebook.ads.redexgen.X.Us");
    }

    public static void A09(int i, C1582Uq c1582Uq) throws Q6 {
        int i2;
        int A02 = c1582Uq.A02(6) + 1;
        for (int i3 = 0; i3 < A02; i3++) {
            int A022 = c1582Uq.A02(16);
            if (A022 != 0) {
                AbstractC2055fb.A05(A07(85, 10, 26), A07(355, 41, 63) + A022);
            } else {
                if (c1582Uq.A04()) {
                    i2 = c1582Uq.A02(4) + 1;
                } else {
                    i2 = 1;
                }
                if (c1582Uq.A04()) {
                    int j = c1582Uq.A02(8) + 1;
                    for (int i4 = 0; i4 < j; i4++) {
                        int mappingsCount = i - 1;
                        c1582Uq.A03(A00(mappingsCount));
                        int mappingsCount2 = i - 1;
                        c1582Uq.A03(A00(mappingsCount2));
                    }
                }
                int mappingsCount3 = c1582Uq.A02(2);
                if (mappingsCount3 == 0) {
                    if (i2 > 1) {
                        for (int mappingsCount4 = 0; mappingsCount4 < i; mappingsCount4++) {
                            c1582Uq.A03(4);
                        }
                    }
                    for (int mappingsCount5 = 0; mappingsCount5 < i2; mappingsCount5++) {
                        c1582Uq.A03(8);
                        c1582Uq.A03(8);
                        c1582Uq.A03(8);
                    }
                } else {
                    throw Q6.A01(A07(491, 58, 24), null);
                }
            }
        }
    }

    public static void A0A(C1582Uq c1582Uq) throws Q6 {
        int A02 = c1582Uq.A02(6) + 1;
        for (int floorNumberOfBooks = 0; floorNumberOfBooks < A02; floorNumberOfBooks++) {
            int A022 = c1582Uq.A02(16);
            switch (A022) {
                case 0:
                    c1582Uq.A03(8);
                    c1582Uq.A03(16);
                    c1582Uq.A03(16);
                    c1582Uq.A03(6);
                    c1582Uq.A03(8);
                    int floorCount = c1582Uq.A02(4);
                    int floorCount2 = floorCount + 1;
                    for (int i = 0; i < floorCount2; i++) {
                        c1582Uq.A03(8);
                    }
                    break;
                case 1:
                    int count = c1582Uq.A02(5);
                    int j = -1;
                    int floorCount3 = A01[4].charAt(15);
                    if (floorCount3 == 104) {
                        String[] strArr = A01;
                        strArr[7] = "APngblGrETjX7Rlp4aNVR8VQbBdiHdvI";
                        strArr[0] = "CjhLYKx32jgQnRJ0j2aEX8hQ0Odkx9P4";
                        int[] iArr = new int[count];
                        for (int i2 = 0; i2 < count; i2++) {
                            int floorCount4 = c1582Uq.A02(4);
                            iArr[i2] = floorCount4;
                            int floorCount5 = iArr[i2];
                            if (floorCount5 > j) {
                                j = iArr[i2];
                            }
                        }
                        int[] iArr2 = new int[j + 1];
                        for (int i3 = 0; i3 < iArr2.length; i3++) {
                            iArr2[i3] = c1582Uq.A02(3) + 1;
                            int A023 = c1582Uq.A02(2);
                            if (A023 > 0) {
                                c1582Uq.A03(8);
                            }
                            for (int floorCount6 = 0; floorCount6 < (1 << A023); floorCount6++) {
                                c1582Uq.A03(8);
                            }
                        }
                        c1582Uq.A03(2);
                        int j2 = c1582Uq.A02(4);
                        int i4 = 0;
                        int maximumClass = 0;
                        for (int i5 = 0; i5 < count; i5++) {
                            int idx = iArr[i5];
                            String[] strArr2 = A01;
                            String str = strArr2[7];
                            String str2 = strArr2[0];
                            int floorCount7 = str.charAt(23);
                            if (floorCount7 == str2.charAt(23)) {
                                A01[4] = "0XYpGybw1VOGnmkhxfDizr1jAAtJPNAx";
                                i4 += iArr2[idx];
                                while (maximumClass < i4) {
                                    c1582Uq.A03(j2);
                                    maximumClass++;
                                }
                            }
                        }
                        break;
                    }
                    throw new RuntimeException();
                default:
                    throw Q6.A01(A07(199, 41, 123) + A022, null);
            }
        }
    }

    public static void A0B(C1582Uq c1582Uq) throws Q6 {
        int A02 = c1582Uq.A02(6) + 1;
        for (int i = 0; i < A02; i++) {
            int residueCount = c1582Uq.A02(16);
            if (residueCount <= 2) {
                c1582Uq.A03(24);
                c1582Uq.A03(24);
                c1582Uq.A03(24);
                int A022 = c1582Uq.A02(6) + 1;
                c1582Uq.A03(8);
                int[] iArr = new int[A022];
                for (int i2 = 0; i2 < A022; i2++) {
                    int i3 = 0;
                    int residueCount2 = c1582Uq.A02(3);
                    if (c1582Uq.A04()) {
                        i3 = c1582Uq.A02(5);
                    }
                    iArr[i2] = (i3 * 8) + residueCount2;
                }
                for (int i4 = 0; i4 < A022; i4++) {
                    for (int i5 = 0; i5 < 8; i5++) {
                        int residueCount3 = iArr[i4];
                        if ((residueCount3 & (1 << i5)) != 0) {
                            c1582Uq.A03(8);
                        }
                    }
                }
            } else {
                throw Q6.A01(A07(448, 43, 17), null);
            }
        }
    }

    public static boolean A0C(int i, C2070fq c2070fq, boolean z) throws Q6 {
        if (c2070fq.A07() < 7) {
            if (z) {
                return false;
            }
            throw Q6.A01(A07(549, 18, 30) + c2070fq.A07(), null);
        }
        if (c2070fq.A0I() != i) {
            if (z) {
                return false;
            }
            throw Q6.A01(A07(178, 21, 43) + Integer.toHexString(i), null);
        }
        if (c2070fq.A0I() != 118 || c2070fq.A0I() != 111 || c2070fq.A0I() != 114 || c2070fq.A0I() != 98 || c2070fq.A0I() != 105 || c2070fq.A0I() != 115) {
            if (z) {
                return false;
            }
            throw Q6.A01(A07(95, 28, 118), null);
        }
        return true;
    }

    public static C1585Ut[] A0D(C1582Uq c1582Uq) {
        int A02 = c1582Uq.A02(6) + 1;
        C1585Ut[] c1585UtArr = new C1585Ut[A02];
        for (int windowType = 0; windowType < A02; windowType++) {
            boolean A04 = c1582Uq.A04();
            int A022 = c1582Uq.A02(16);
            int i = c1582Uq.A02(16);
            c1585UtArr[windowType] = new C1585Ut(A04, A022, i, c1582Uq.A02(8));
        }
        return c1585UtArr;
    }

    public static C1585Ut[] A0E(C2070fq c2070fq, int i) throws Q6 {
        A0C(5, c2070fq, false);
        int A0I = c2070fq.A0I() + 1;
        C1582Uq c1582Uq = new C1582Uq(c2070fq.A0l());
        int numberOfBooks = c2070fq.A09();
        c1582Uq.A03(numberOfBooks * 8);
        for (int i2 = 0; i2 < A0I; i2++) {
            A03(c1582Uq);
            String[] strArr = A01;
            String str = strArr[5];
            String str2 = strArr[6];
            int charAt = str.charAt(27);
            int numberOfBooks2 = str2.charAt(27);
            if (charAt == numberOfBooks2) {
                throw new RuntimeException();
            }
            A01[3] = "74cTHtRYpeQKzhZv6wn9jFrgtrQ2qO";
        }
        int numberOfBooks3 = c1582Uq.A02(6);
        int timeCount = numberOfBooks3 + 1;
        for (int i3 = 0; i3 < timeCount; i3++) {
            int numberOfBooks4 = c1582Uq.A02(16);
            if (numberOfBooks4 != 0) {
                throw Q6.A01(A07(396, 52, 90), null);
            }
        }
        A0A(c1582Uq);
        String[] strArr2 = A01;
        String str3 = strArr2[1];
        String str4 = strArr2[2];
        int length = str3.length();
        int numberOfBooks5 = str4.length();
        if (length != numberOfBooks5) {
            throw new RuntimeException();
        }
        A01[3] = "e0G1wddwIFNckCOWajmZBKihiSzbHl";
        A0B(c1582Uq);
        A09(i, c1582Uq);
        C1585Ut[] A0D = A0D(c1582Uq);
        if (c1582Uq.A04()) {
            return A0D;
        }
        throw Q6.A01(A07(240, 43, 93), null);
    }
}
