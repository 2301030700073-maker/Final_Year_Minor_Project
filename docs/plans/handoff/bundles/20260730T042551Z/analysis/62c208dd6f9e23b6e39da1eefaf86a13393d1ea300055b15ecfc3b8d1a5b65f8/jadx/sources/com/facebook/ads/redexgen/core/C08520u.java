package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.0u, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C08520u extends AbstractC09835z {
    public static byte[] A0H;
    public static String[] A0I = {"NvI8w9M6tlyvGt07ROp5gcDFRuKjs8sbr", "o6o1GZjn6w5iD3TuD7IypBj6qZhE8LE6", "03eW3cAl0TOGEZ", "1BnEJcPqgm2BbABF4O4jACcV83pPEeQV", "FKmOFb8XU4uKcVg885KEf0akfF0rU573", "m3moL65Zf5ywac", "r8huNeiZhEpXsxRNP4WAvwel03jPBrv7", "gLbeJV9t5Lmu237q9Xp5Qy3JaC8KcwEH"};
    public AnonymousClass64 A00;
    public float A01;
    public int A02;
    public int A03;
    public long A04;
    public final float A05;
    public final int A06;
    public final int A07;
    public final long A08;
    public final long A09;
    public final long A0A;
    public final OI<C1884co> A0B;
    public final float A0C;
    public final int A0D;
    public final long A0E;
    public final InterfaceC1924dS A0F;
    public final InterfaceC2018ez A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public C08520u(@MetaExoPlayerCustomization("Used for OculusAdaptiveTrackSelection") C1669Yc c1669Yc, @MetaExoPlayerCustomization("Used to retain old value for Oculus") int[] iArr, int i, InterfaceC1924dS interfaceC1924dS, int i2, long j, long j2, long j3, int i3, int i4, float f, float f2, long j4, List<C1884co> list, InterfaceC2018ez interfaceC2018ez) {
        super(c1669Yc, iArr, i);
        if (j3 < j) {
            AbstractC2055fb.A07(A03(0, 22, 97), A03(22, 90, 73));
            j3 = j;
        }
        this.A0F = interfaceC1924dS;
        this.A0D = i2;
        this.A08 = j * 1000;
        this.A0E = j2 * 1000;
        this.A09 = 1000 * j3;
        this.A07 = i3;
        this.A06 = i4;
        this.A0C = f;
        this.A05 = f2;
        this.A0B = OI.A05(list);
        this.A0A = j4;
        this.A0G = interfaceC2018ez;
        this.A01 = 1.0f;
        this.A02 = 0;
        this.A04 = -9223372036854775807L;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0H = new byte[]{94, 123, 126, 111, 107, 118, 105, 122, 75, 109, 126, 124, 116, 76, 122, 115, 122, 124, 107, 118, 112, 113, 118, 83, 93, 66, 68, 67, 94, 89, 80, 23, 90, 94, 89, 115, 66, 69, 86, 67, 94, 88, 89, 99, 88, 101, 82, 67, 86, 94, 89, 118, 81, 67, 82, 69, 115, 94, 68, 84, 86, 69, 83, 122, 68, 23, 67, 88, 23, 85, 82, 23, 86, 67, 23, 91, 82, 86, 68, 67, 23, 90, 94, 89, 115, 66, 69, 86, 67, 94, 88, 89, 113, 88, 69, 102, 66, 86, 91, 94, 67, 78, 126, 89, 84, 69, 82, 86, 68, 82, 122, 68};
    }

    static {
        A04();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        if (r11.length == 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0099, code lost:
    
        r3 = r8[r5][0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0096, code lost:
    
        if (r11.length == 0) goto L24;
     */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4T != com.google.common.collect.ImmutableList$Builder<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4T != com.google.common.collect.ImmutableList$Builder<com.google.common.collect.ImmutableList<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint>> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.OI != com.google.common.collect.ImmutableList<java.lang.Integer> */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.core.OI<com.facebook.ads.redexgen.core.OI<com.facebook.ads.redexgen.core.C1884co>> A00(com.facebook.ads.redexgen.core.C1901d5[] r12) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C08520u.A00(com.facebook.ads.redexgen.X.d5[]):com.facebook.ads.redexgen.X.OI");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nH != com.google.common.collect.Multimap<java.lang.Double, java.lang.Integer> */
    public static OI<Integer> A02(long[][] jArr) {
        InterfaceC2518nH A00 = AbstractC2520nJ.A02().A03().A00();
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i].length > 1) {
                double[] logBitrates = new double[jArr[i].length];
                int i2 = 0;
                while (true) {
                    double d = 0.0d;
                    if (i2 >= jArr[i].length) {
                        break;
                    }
                    if (jArr[i][i2] != -1) {
                        d = Math.log(jArr[i][i2]);
                    }
                    logBitrates[i2] = d;
                    i2++;
                }
                double d2 = logBitrates[logBitrates.length - 1] - logBitrates[0];
                int i3 = 0;
                for (int i4 = 1; i3 < logBitrates.length - i4; i4 = 1) {
                    A00.AGM(Double.valueOf(d2 == 0.0d ? 1.0d : (((logBitrates[i3] + logBitrates[i3 + 1]) * 0.5d) - logBitrates[0]) / d2), Integer.valueOf(i));
                    i3++;
                }
            }
        }
        Collection values = A00.values();
        if (A0I[6].charAt(9) != 'E') {
            throw new RuntimeException();
        }
        String[] strArr = A0I;
        strArr[7] = "fccdpFL18VU70aMgRkcSNTW0PyqGAz3V";
        strArr[1] = "acyPQfwETLj0MHixODwctPUCudb6Lo1G";
        return OI.A05(values);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4T != com.google.common.collect.ImmutableList$Builder<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    public static void A05(List<C4T<C1884co>> list, long[] jArr) {
        long j = 0;
        for (long totalBitrate : jArr) {
            j += totalBitrate;
        }
        int i = 0;
        while (true) {
            int size = list.size();
            String[] strArr = A0I;
            if (strArr[7].charAt(10) == strArr[1].charAt(10)) {
                throw new RuntimeException();
            }
            A0I[3] = "bQnYpudw8mff8zjN61SfJHhNQb2nbe8x";
            if (i < size) {
                C4T<C1884co> c4t = list.get(i);
                if (c4t != null) {
                    c4t.A04(new C1884co(j, jArr[i]));
                }
                i++;
            } else {
                return;
            }
        }
    }

    public static long[][] A06(C1901d5[] c1901d5Arr) {
        long j;
        long[] jArr;
        long[][] jArr2 = new long[c1901d5Arr.length][];
        for (int i = 0; i < c1901d5Arr.length; i++) {
            C1901d5 c1901d5 = c1901d5Arr[i];
            int i2 = A0I[3].charAt(29);
            if (i2 == 101) {
                String[] strArr = A0I;
                strArr[4] = "aSvaoGQLGgOa9buJlpv9o2k7cZpDmtG8";
                strArr[0] = "t9s5xDQEFZXiIwVGN4zCrxq7Hjw4B6GmB";
                if (c1901d5 == null) {
                    int i3 = A0I[6].charAt(9);
                    if (i3 == 69) {
                        String[] strArr2 = A0I;
                        strArr2[7] = "5RSJOnMVbtsbO4kxzXJNTV8CxqlDEspb";
                        strArr2[1] = "LGic1BtlSbbsvncSfV1yEytiCGz3Td7Q";
                        jArr2[i] = new long[0];
                    }
                } else {
                    jArr2[i] = new long[c1901d5.A02.length];
                    for (int i4 = 0; i4 < c1901d5.A02.length; i4++) {
                        C1669Yc c1669Yc = c1901d5.A01;
                        String[] strArr3 = A0I;
                        String str = strArr3[2];
                        String str2 = strArr3[5];
                        int i5 = str.length();
                        if (i5 != str2.length()) {
                            j = c1669Yc.A08(c1901d5.A02[i4]).A05;
                            jArr = jArr2[i];
                            if (j != -1) {
                                jArr[i4] = j;
                            }
                            j = 0;
                            jArr[i4] = j;
                        } else {
                            String[] strArr4 = A0I;
                            strArr4[2] = "XRfby8rpBMRzlH";
                            strArr4[5] = "c4CCeZBcxZ1Xb3";
                            j = c1669Yc.A08(c1901d5.A02[i4]).A05;
                            jArr = jArr2[i];
                            if (j != -1) {
                                jArr[i4] = j;
                            }
                            j = 0;
                            jArr[i4] = j;
                        }
                    }
                    Arrays.sort(jArr2[i]);
                }
            }
            throw new RuntimeException();
        }
        return jArr2;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09835z, com.facebook.ads.redexgen.core.QD
    public final void A5n() {
        this.A00 = null;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09835z, com.facebook.ads.redexgen.core.QD
    public final void A6A() {
        this.A04 = -9223372036854775807L;
        this.A00 = null;
    }

    @Override // com.facebook.ads.redexgen.core.QD
    public final int A8t() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09835z, com.facebook.ads.redexgen.core.QD
    public final void AEW(float f) {
        this.A01 = f;
    }
}
