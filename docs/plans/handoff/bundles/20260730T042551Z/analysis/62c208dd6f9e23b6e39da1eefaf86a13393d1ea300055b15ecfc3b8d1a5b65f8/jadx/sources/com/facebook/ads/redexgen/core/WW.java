package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.Metadata;
import com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class WW {
    public static byte[] A03;
    public static String[] A04 = {"xVv6a3kBgHP291y1mY3efrymRkAiXkaQ", "FTwpQIugICtYOWGkZwYZthxUL7HKEmyC", "s3us1ScbO6rGbl466sPykO4ixE9i", "93pxYvyEPedWD4X2BuFQjC1zpHbmfg", "mmgF18", "CGAsalvoWJx0Das9bhiV8YnFSBpu1Qq0", "aeq4LsRlfFrzZtlLm07ekl9NPEbmriYf", "NwzOnY7JkM9Q7fUISy9jkeWQndblTKKo"};
    public static final C2219iK A05;
    public static final C2219iK A06;
    public int A01;
    public final List<WT> A02 = new ArrayList();
    public int A00 = 0;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 122);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        byte[] bArr = {55, 92, 100, 79, 90, 87, 82, 14, 65, 51, 52, 14, 92, 79, 91, 83, 48, 73, 76, 84, 42, 76, 81, 70, 76, 75, 60, 33, 62, 81, 62, 19, 53, 48, 37, 50, 31, 19, 44, 47, 55, 13, 47, 52, 41, 47, 46, 31, 2, 7, 13, 10, 44, 39, 28, 41, 22, 10, 35, 38, 46, 4, 38, 43, 32, 38, 37, 22, -5, 24, 43, 24, 16, 50, 45, 34, 47, 28, 16, 41, 44, 52, 10, 44, 49, 38, 44, 43, 28, 1, 34, 35, 41, 38, 32, 40, 34, 47, 38, 43, 36, 28, 12, 43, -44, -10, -15, -26, -13, -32, -44, -19, -16, -8, -50, -16, -11, -22, -16, -17, -32, -58, -27, -22, -11, -32, -59, -30, -11, -30};
        String[] strArr = A04;
        if (strArr[0].charAt(23) == strArr[5].charAt(23)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[4] = "V1SfVw";
        strArr2[3] = "YMS7HvlwTDyXKOqSWiRbw5ErY8r3aH";
        A03 = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A06(WJ wj, List<Metadata.Entry> list) throws IOException {
        long A8d = wj.A8d();
        int A8E = (int) ((wj.A8E() - wj.A8d()) - this.A01);
        C2070fq c2070fq = new C2070fq(A8E);
        wj.readFully(c2070fq.A0l(), 0, A8E);
        for (int i = 0; i < this.A02.size(); i++) {
            WT wt = this.A02.get(i);
            c2070fq.A0f((int) (wt.A02 - A8d));
            c2070fq.A0g(4);
            int A0E = c2070fq.A0E();
            int A00 = A00(c2070fq.A0W(A0E));
            int i2 = wt.A01 - (A0E + 8);
            switch (A00) {
                case 2192:
                    list.add(A01(c2070fq, i2));
                    break;
                case 2816:
                case 2817:
                case 2819:
                case 2820:
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    static {
        A03();
        A06 = C2219iK.A02(':');
        A05 = C2219iK.A02('*');
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A00(String str) throws Q6 {
        char c;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals(A02(16, 15, 99))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1332107749:
                if (str.equals(A02(FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 26, 7))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1251387154:
                if (str.equals(A02(51, 21, 61))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -830665521:
                if (str.equals(A02(72, 32, 67))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1760745220:
                if (str.equals(A02(31, 20, 70))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 2192;
            case 1:
                return 2816;
            case 2:
                return 2817;
            case 3:
                return 2819;
            case 4:
                return 2820;
            default:
                throw Q6.A01(A02(0, 16, 116), null);
        }
    }

    public static SlowMotionData A01(C2070fq c2070fq, int i) throws Q6 {
        List<SlowMotionData.Segment> segments = new ArrayList<>();
        String dataString = c2070fq.A0W(i);
        List<String> A062 = A05.A06(dataString);
        for (int i2 = 0; i2 < A062.size(); i2++) {
            List<String> A063 = A06.A06(A062.get(i2));
            if (A063.size() == 3) {
                try {
                    long parseLong = Long.parseLong(A063.get(0));
                    long startTimeMs = Long.parseLong(A063.get(1));
                    segments.add(new SlowMotionData.Segment(parseLong, startTimeMs, 1 << (Integer.parseInt(A063.get(2)) - 1)));
                } catch (NumberFormatException e) {
                    throw Q6.A01(null, e);
                }
            } else {
                throw Q6.A01(null, null);
            }
        }
        return new SlowMotionData(segments);
    }

    private void A04(WJ wj, C1575Ug c1575Ug) throws IOException {
        C2070fq c2070fq = new C2070fq(8);
        wj.readFully(c2070fq.A0l(), 0, 8);
        this.A01 = c2070fq.A0E() + 8;
        if (c2070fq.A0C() != 1397048916) {
            c1575Ug.A00 = 0L;
        } else {
            c1575Ug.A00 = wj.A8d() - (this.A01 - 12);
            this.A00 = 2;
        }
    }

    private void A05(WJ wj, C1575Ug c1575Ug) throws IOException {
        long A8E = wj.A8E();
        int i = (this.A01 - 12) - 8;
        C2070fq c2070fq = new C2070fq(i);
        wj.readFully(c2070fq.A0l(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            c2070fq.A0g(2);
            int i3 = c2070fq.A0a();
            switch (i3) {
                case 2192:
                case 2816:
                case 2817:
                case 2819:
                case 2820:
                    long streamLength = this.A01;
                    long j = A8E - streamLength;
                    long streamLength2 = c2070fq.A0E();
                    int size = c2070fq.A0E();
                    this.A02.add(new WT(i3, j - streamLength2, size));
                    break;
                default:
                    c2070fq.A0g(8);
                    break;
            }
        }
        if (this.A02.isEmpty()) {
            c1575Ug.A00 = 0L;
            return;
        }
        this.A00 = 3;
        long streamLength3 = this.A02.get(0).A02;
        c1575Ug.A00 = streamLength3;
    }

    public final int A07(WJ wj, C1575Ug c1575Ug, List<Metadata.Entry> slowMotionMetadataEntries) throws IOException {
        long j = 0;
        switch (this.A00) {
            case 0:
                long A8E = wj.A8E();
                if (A8E != -1 && A8E >= 8) {
                    j = A8E - 8;
                }
                c1575Ug.A00 = j;
                this.A00 = 1;
                return 1;
            case 1:
                A04(wj, c1575Ug);
                return 1;
            case 2:
                A05(wj, c1575Ug);
                return 1;
            case 3:
                A06(wj, slowMotionMetadataEntries);
                if (A04[7].charAt(2) != 'z') {
                    throw new RuntimeException();
                }
                A04[2] = "bsIVJfH6fCpgF02bzpDTwrDyie4t";
                c1575Ug.A00 = 0L;
                return 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final void A08() {
        this.A02.clear();
        this.A00 = 0;
    }
}
