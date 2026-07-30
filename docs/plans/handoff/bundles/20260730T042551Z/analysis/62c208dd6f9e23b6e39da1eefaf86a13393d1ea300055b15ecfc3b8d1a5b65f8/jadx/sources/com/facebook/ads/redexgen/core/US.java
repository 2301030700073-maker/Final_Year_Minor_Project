package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.exoplayer2.Metadata;
import com.google.android.exoplayer2.extractor.metadata.flac.PictureFrame;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@MetaExoPlayerCustomization("Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections")
/* loaded from: assets/audience_network.dex */
public abstract class US {
    public static byte[] A00;
    public static String[] A01 = {"7xrPmsNNd1unvJpEfGKxRElcl", "UF6TMW5ECNWn0ZgVy6X49cXfyO7gkJiE", "E", "RDu94cFDn72yF7GpK0dr", "Y", "Ii87nBGvK8Q0hhczZRY1", "vqoXMgf1LSeO3kCxRF8sJspBkbslDPq2", "Jk0EpoMWrnH7PRkGzB"};

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = (copyOfRange[i4] - i3) - 47;
            String[] strArr = A01;
            if (strArr[2].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A01[6] = "hZwP6y6oyh76aU1TPWI3XaYDcV3tuEqo";
            copyOfRange[i4] = (byte) i5;
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{-47, -20, -12, -9, -16, -17, -85, -1, -6, -85, -3, -16, -20, -17, -85, -47, -41, -52, -50, -85, -2, -1, -3, -16, -20, -8, -85, -8, -20, -3, -10, -16, -3, -71, -58, -23, -14, -13, -12, -96, -26, -14, -31, -19, -27, -96, -28, -17, -27, -13, -96, -18, -17, -12, -96, -13, -12, -31, -14, -12, -96, -9, -23, -12, -24, -96, -13, -7, -18, -29, -96, -29, -17, -28, -27, -82};
    }

    static {
        A08();
    }

    public static int A00(WJ wj) throws IOException {
        wj.AHr();
        C2070fq c2070fq = new C2070fq(2);
        wj.AG1(c2070fq.A0l(), 0, 2);
        int syncCode = c2070fq.A0M();
        int frameStartMarker = syncCode >> 2;
        if (frameStartMarker == 16382) {
            wj.AHr();
            return syncCode;
        }
        wj.AHr();
        throw Q6.A01(A06(34, 42, 81), null);
    }

    public static Metadata A01(WJ wj, boolean z) throws IOException {
        VP id3FramePredicate;
        if (z) {
            id3FramePredicate = null;
        } else {
            id3FramePredicate = B2.A03;
        }
        Metadata A002 = new UX().A00(wj, id3FramePredicate);
        if (A002 == null || A002.A02() == 0) {
            return null;
        }
        return A002;
    }

    public static Metadata A02(WJ wj, boolean z) throws IOException {
        wj.AHr();
        long A8Y = wj.A8Y();
        Metadata A012 = A01(wj, z);
        wj.AJ9((int) (wj.A8Y() - A8Y));
        return A012;
    }

    public static UT A03(WJ wj, int i) throws IOException {
        C2070fq c2070fq = new C2070fq(i);
        wj.readFully(c2070fq.A0l(), 0, i);
        return A04(c2070fq);
    }

    public static UT A04(C2070fq c2070fq) {
        c2070fq.A0g(1);
        int A0K = c2070fq.A0K();
        int length = c2070fq.A09();
        long j = length + A0K;
        int i = A0K / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long A0P = c2070fq.A0P();
            if (A0P == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = A0P;
            jArr2[i2] = c2070fq.A0P();
            c2070fq.A0g(2);
            i2++;
        }
        int length2 = c2070fq.A09();
        c2070fq.A0g((int) (j - length2));
        return new UT(jArr, jArr2);
    }

    public static UU A05(WJ wj) throws IOException {
        byte[] bArr = new byte[38];
        wj.readFully(bArr, 0, 38);
        return new UU(bArr, 4);
    }

    public static List<String> A07(WJ wj, int i) throws IOException {
        C2070fq c2070fq = new C2070fq(i);
        wj.readFully(c2070fq.A0l(), 0, i);
        c2070fq.A0g(4);
        return Arrays.asList(AbstractC1587Uv.A05(c2070fq, false, false).A02);
    }

    public static void A09(WJ wj) throws IOException {
        C2070fq c2070fq = new C2070fq(4);
        wj.readFully(c2070fq.A0l(), 0, 4);
        if (c2070fq.A0Q() == 1716281667) {
        } else {
            throw Q6.A01(A06(0, 34, 92), null);
        }
    }

    public static boolean A0A(WJ wj) throws IOException {
        C2070fq c2070fq = new C2070fq(4);
        wj.AG1(c2070fq.A0l(), 0, 4);
        return c2070fq.A0Q() == 1716281667;
    }

    public static boolean A0B(WJ wj, UR ur) throws IOException {
        wj.AHr();
        C2069fp c2069fp = new C2069fp(new byte[4]);
        wj.AG1(c2069fp.A00, 0, 4);
        boolean A0H = c2069fp.A0H();
        int A04 = c2069fp.A04(7);
        int A042 = c2069fp.A04(24) + 4;
        if (A04 == 0) {
            UU A05 = A05(wj);
            String[] strArr = A01;
            if (strArr[3].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "4gxQC6i9k4AoNZbM3f30";
            strArr2[5] = "AhWhbFWdu27jwwP6x47z";
            ur.A00 = A05;
        } else {
            UU uu = ur.A00;
            if (uu != null) {
                if (A04 != 3) {
                    if (A04 == 4) {
                        ur.A00 = uu.A0B(A07(wj, A042));
                    } else if (A04 == 6) {
                        C2070fq c2070fq = new C2070fq(A042);
                        wj.readFully(c2070fq.A0l(), 0, A042);
                        c2070fq.A0g(4);
                        PictureFrame pictureFrame = PictureFrame.A00(c2070fq);
                        ur.A00 = uu.A0A(MetaExoPlayerCustomizedCollections.A03(pictureFrame));
                    } else {
                        wj.AJ9(A042);
                    }
                } else {
                    ur.A00 = uu.A09(A03(wj, A042));
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return A0H;
    }
}
