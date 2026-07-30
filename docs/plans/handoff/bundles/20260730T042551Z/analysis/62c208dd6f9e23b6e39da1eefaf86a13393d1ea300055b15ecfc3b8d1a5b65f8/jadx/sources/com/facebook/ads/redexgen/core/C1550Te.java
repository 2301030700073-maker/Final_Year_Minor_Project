package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.DrmInitData;
import com.google.android.exoplayer2.extractor.metadata.emsg.EventMessage;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* renamed from: com.facebook.ads.redexgen.X.Te, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1550Te implements UK {
    public static byte[] A0e;
    public static String[] A0f = {"EevHyolFte0G1EnkLnRUTQFXdN8MLfPk", "QSPEwTNQ0RmhXbXcGdXVvlgO7iKYXnEx", "GidA194vrhacl8sOIXGNDds2Wjdh2DeM", "UW6wZdrFtIj6d44xYDZqFY4bxNAZwAPZ", "8Te35dNd8QvizhpjzChSxM3FvpaFw4ja", "1LGGtWGhgY1LpVrEZjBFoB", "4tmgHwu9atO3YgkZqxtGVdro9ECoMU5s", "mi"};
    public static final UO A0g;
    public static final ZM A0h;
    public static final byte[] A0i;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public SparseArray<WI> A0D;
    public UL A0E;
    public WI A0F;
    public C2070fq A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public InterfaceC1580Uo[] A0K;
    public InterfaceC1580Uo[] A0L;
    public final int A0M;
    public final DrmInitData A0N;
    public final InterfaceC1580Uo A0O;
    public final VB A0P;
    public final WZ A0Q;
    public final C2070fq A0R;
    public final C2070fq A0S;
    public final C2070fq A0T;
    public final C2070fq A0U;
    public final C2070fq A0V;
    public final C2084g4 A0W;
    public final ArrayDeque<C1557Tm> A0X;
    public final ArrayDeque<WH> A0Y;
    public final List<ZM> A0Z;
    public final boolean A0a;
    public final boolean A0b;
    public final boolean A0c;
    public final byte[] A0d;

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0081, code lost:
    
        if (r8 != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0083, code lost:
    
        r23 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ba, code lost:
    
        if (r8[0] == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bc, code lost:
    
        r18 = r11.A09[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0186, code lost:
    
        if (r8[0] == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a6, code lost:
    
        r23 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01a2, code lost:
    
        if (r8 != 0) goto L18;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A00(com.facebook.ads.redexgen.core.WI r25, int r26, long r27, int r29, com.facebook.ads.redexgen.core.C2070fq r30, int r31) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1550Te.A00(com.facebook.ads.redexgen.X.WI, int, long, int, com.facebook.ads.redexgen.X.fq, int):int");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, WY> A04(C2070fq c2070fq, long j) throws Q6 {
        long A0R;
        long A0R2;
        c2070fq.A0f(8);
        int A03 = W5.A03(c2070fq.A0C());
        c2070fq.A0g(4);
        long A0Q = c2070fq.A0Q();
        if (A03 == 0) {
            A0R = c2070fq.A0Q();
            A0R2 = j + c2070fq.A0Q();
            String[] strArr = A0f;
            if (strArr[0].charAt(7) != strArr[3].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0f;
            strArr2[5] = "S5A8WZMRBjOOkYATnh9vwU";
            strArr2[7] = "px";
        } else {
            A0R = c2070fq.A0R();
            A0R2 = j + c2070fq.A0R();
        }
        long A0U = AbstractC2094gE.A0U(A0R, 1000000L, A0Q);
        c2070fq.A0g(2);
        int A0M = c2070fq.A0M();
        int[] iArr = new int[A0M];
        long[] jArr = new long[A0M];
        long[] jArr2 = new long[A0M];
        long[] jArr3 = new long[A0M];
        long j2 = A0U;
        for (int i = 0; i < A0M; i++) {
            int A0C = c2070fq.A0C();
            if ((Integer.MIN_VALUE & A0C) != 0) {
                throw new Q6(A0B(634, 28, 30));
            }
            long A0Q2 = c2070fq.A0Q();
            iArr[i] = Integer.MAX_VALUE & A0C;
            jArr[i] = A0R2;
            jArr3[i] = j2;
            A0R += A0Q2;
            j2 = AbstractC2094gE.A0U(A0R, 1000000L, A0Q);
            jArr2[i] = j2 - jArr3[i];
            c2070fq.A0g(4);
            A0R2 += iArr[i];
        }
        return Pair.create(Long.valueOf(A0U), new WY(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static WI A09(C2070fq c2070fq, SparseArray<WI> sparseArray, boolean z) {
        c2070fq.A0f(8);
        int A02 = W5.A02(c2070fq.A0C());
        WI A08 = A08(sparseArray, c2070fq.A0C(), z);
        if (A08 == null) {
            return null;
        }
        if ((A02 & 1) != 0) {
            long A0R = c2070fq.A0R();
            A08.A07.A04 = A0R;
            A08.A07.A03 = A0R;
        }
        WC wc = A08.A04;
        int A0L = (A02 & 2) != 0 ? c2070fq.A0L() - 1 : wc.A02;
        int A0L2 = (A02 & 8) != 0 ? c2070fq.A0L() : wc.A00;
        int i = A02 & 16;
        if (A0f[1].charAt(24) == 'o') {
            throw new RuntimeException();
        }
        String[] strArr = A0f;
        strArr[6] = "qnuhCGCLhtAQyxSDy77Bkdg9YX36L1iE";
        strArr[2] = "fcfyB5Wa85KGu22CFrMwLdnjoHe57wIB";
        A08.A07.A06 = new WC(A0L, A0L2, i != 0 ? c2070fq.A0L() : wc.A03, (A02 & 32) != 0 ? c2070fq.A0L() : wc.A01);
        return A08;
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 82);
        }
        return new String(copyOfRange);
    }

    public static void A0E() {
        byte[] bArr = {-25, -37, -89, -38, -43, -45, -122, -39, -49, -32, -53, -122, -46, -53, -39, -39, -122, -38, -50, -57, -44, -122, -50, -53, -57, -54, -53, -40, -122, -46, -53, -44, -51, -38, -50, -122, -114, -37, -44, -39, -37, -42, -42, -43, -40, -38, -53, -54, -113, -108, 8, 49, 55, 53, 60, -29, 38, 50, 56, 49, 55, -29, 44, 49, -29, 54, 37, 42, 51, -29, -28, 0, -29, -12, -29, -21, 56, 49, 54, 56, 51, 51, 50, 53, 55, 40, 39, -20, -15, -42, -1, 5, 3, 10, -79, -12, 0, 6, -1, 5, -79, -6, -1, -79, 4, -8, 1, -11, -79, -78, -50, -79, -62, -79, -71, 6, -1, 4, 6, 1, 1, 0, 3, 5, -10, -11, -70, -65, 19, 63, 46, 52, 58, 50, 59, 65, 50, 49, 26, 61, 1, 18, 69, 65, 63, 46, 48, 65, 60, 63, -22, 8, 15, 16, 19, 10, 15, 8, -63, 15, 6, 8, 2, 21, 10, 23, 6, -63, 16, 7, 7, 20, 6, 21, -63, 21, 16, -63, 20, 2, 14, 17, 13, 6, -63, 5, 2, 21, 2, -49, -25, 12, 20, -1, 10, 7, 2, -66, -20, -33, -22, -66, 10, 3, 12, 5, 18, 6, -31, -6, -10, -5, -75, -10, 9, 4, 2, -75, -7, -6, -5, -2, 3, -6, 8, -75, -6, 13, 9, -6, 3, -7, -6, -7, -75, -10, 9, 4, 2, -75, 8, -2, 15, -6, -75, -67, 10, 3, 8, 10, 5, 5, 4, 7, 9, -6, -7, -66, -61, -57, -32, -36, -31, -101, -36, -17, -22, -24, -101, -14, -28, -17, -29, -101, -25, -32, -23, -30, -17, -29, -101, -71, -101, -83, -84, -81, -78, -81, -77, -82, -79, -81, -78, -101, -93, -16, -23, -18, -16, -21, -21, -22, -19, -17, -32, -33, -92, -87, -12, 13, 22, 15, 28, 16, -56, 21, 17, 27, 21, 9, 28, 11, 16, -30, -56, -56, -33, -33, -20, -34, -19, -103, -19, -24, -103, -34, -25, -36, -21, -14, -23, -19, -30, -24, -25, -103, -35, -38, -19, -38, -103, -16, -38, -20, -103, -25, -34, -32, -38, -19, -30, -17, -34, -89, -80, -57, -57, -44, -58, -43, -127, -43, -48, -127, -58, -49, -59, -127, -48, -57, -127, -50, -59, -62, -43, -127, -40, -62, -44, -127, -49, -58, -56, -62, -43, -54, -41, -58, -113, -72, -33, -50, -37, -37, -46, -51, -46, -41, -48, -119, -67, -37, -54, -52, -44, -82, -41, -52, -37, -30, -39, -35, -46, -40, -41, -85, -40, -31, -119, -39, -54, -37, -54, -42, -50, -35, -50, -37, -36, -119, -46, -36, -119, -34, -41, -36, -34, -39, -39, -40, -37, -35, -50, -51, -105, -58, -34, -36, -29, -29, -40, -41, -109, -29, -26, -26, -37, -109, -44, -25, -30, -32, -109, -101, -39, -44, -36, -33, -40, -41, -109, -25, -30, -109, -40, -21, -25, -27, -44, -42, -25, -109, -24, -24, -36, -41, -100, -5, 19, 17, 24, 24, 17, 22, 15, -56, 9, 28, 23, 21, -56, 31, 17, 28, 16, -56, 20, 13, 22, 15, 28, 16, -56, -26, -56, -38, -39, -36, -33, -36, -32, -37, -34, -36, -33, -56, -48, 29, 22, 27, 29, 24, 24, 23, 26, 28, 13, 12, -47, -42, -50, -26, -28, -21, -21, -28, -23, -30, -101, -16, -23, -18, -16, -21, -21, -22, -19, -17, -32, -33, -101, -32, -24, -18, -30, -101, -15, -32, -19, -18, -28, -22, -23, -75, -101, -87, -62, -71, -52, -60, -71, -73, -56, -71, -72, 116, -63, -61, -61, -54, 116, -74, -61, -52, -126, -1, 24, 15, 34, 26, 15, 13, 30, 15, 14, -54, 29, 11, 19, 25, -54, 15, 24, 30, 28, 35, -54, 13, 25, 31, 24, 30, -28, -54, -59, -34, -40, -47, -34, -44, -36, -43, -44, -112, -39, -34, -44, -39, -30, -43, -45, -28, -112, -30, -43, -42, -43, -30, -43, -34, -45, -43, 19, 30, 47, 38, 30, 31, 41, 34, -35, 41, 34, 43, 36, 49, 37, -35, 33, 34, 48, 32, 47, 38, 45, 49, 38, 44, 43, -35, 38, 43, -35, 48, 36, 45, 33, -35, 35, 44, 50, 43, 33, -35, -27, 50, 43, 48, 50, 45, 45, 44, 47, 49, 34, 33, -26, -33, -18, -18, -22, -25, -31, -33, -14, -25, -19, -20, -83, -10, -85, -29, -21, -15, -27, 34, 49, 49, 45, 42, 36, 34, 53, 42, 48, 47, -16, 57, -18, 46, 49, -11, -18, 55, 53, 53, 30, 17, 12, 13, 23, -41, 16, 13, 30, 11, 29, 16, 11, 12, 22, -42, 20, 23, -37};
        String[] strArr = A0f;
        if (strArr[5].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        A0f[1] = "XzlsT9WICyFi4v7F4txdI5GHDh9gQrz1";
        A0e = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0L(C1557Tm c1557Tm) throws Q6 {
        AbstractC2011es.A0A(this.A0Q == null, A0B(585, 20, 2));
        DrmInitData A05 = A05(c1557Tm.A02);
        C1557Tm c1557Tm2 = (C1557Tm) AbstractC2011es.A01(c1557Tm.A02(1836475768));
        SparseArray<WC> sparseArray = new SparseArray<>();
        long j = -9223372036854775807L;
        int size = c1557Tm2.A02.size();
        for (int i = 0; i < size; i++) {
            C1556Tl c1556Tl = c1557Tm2.A02.get(i);
            if (((W5) c1556Tl).A00 == 1953654136) {
                Pair<Integer, WC> A03 = A03(c1556Tl.A00);
                sparseArray.put(((Integer) A03.first).intValue(), (WC) A03.second);
            } else if (((W5) c1556Tl).A00 == 1835362404) {
                j = A01(c1556Tl.A00);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = c1557Tm.A01.size();
        for (int i2 = 0; i2 < size2; i2++) {
            C1557Tm c1557Tm3 = c1557Tm.A01.get(i2);
            if (((W5) c1557Tm3).A00 == 1953653099) {
                WZ A0A = A0A(WB.A0J(c1557Tm3, c1557Tm.A03(1836476516), j, A05, (this.A0M & 16) != 0, false));
                if (A0A != null) {
                    sparseArray2.put(A0A.A00, A0A);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.A0D.size() != 0) {
            AbstractC2011es.A08(this.A0D.size() == size3);
            for (int i3 = 0; i3 < size3; i3++) {
                WZ wz = (WZ) sparseArray2.valueAt(i3);
                this.A0D.get(wz.A00).A08(wz, A06(sparseArray, wz.A00));
            }
            return;
        }
        for (int i4 = 0; i4 < size3; i4++) {
            WZ wz2 = (WZ) sparseArray2.valueAt(i4);
            WI wi = new WI(this.A0E.AJX(i4, wz2.A03));
            wi.A08(wz2, A06(sparseArray, wz2.A00));
            this.A0D.put(wz2.A00, wi);
            this.A08 = Math.max(this.A08, wz2.A04);
        }
        A0D();
        this.A0E.A6E();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0N(C1557Tm c1557Tm, SparseArray<WI> sparseArray, int i, byte[] bArr, boolean z) throws Q6 {
        WI A09 = A09(c1557Tm.A03(1952868452).A00, sparseArray, z);
        if (A09 == null) {
            return;
        }
        C1617Wb c1617Wb = A09.A07;
        long j = c1617Wb.A05;
        A09.A05();
        if (c1557Tm.A03(1952867444) != null && (i & 2) == 0) {
            j = A02(c1557Tm.A03(1952867444).A00);
        }
        A0O(c1557Tm, A09, j, i);
        C1616Wa A00 = A09.A05.A00(c1617Wb.A06.A02);
        C1556Tl A03 = c1557Tm.A03(1935763834);
        if (A03 != null) {
            C2070fq c2070fq = A03.A00;
            String[] strArr = A0f;
            if (strArr[0].charAt(7) != strArr[3].charAt(7)) {
                throw new RuntimeException();
            }
            A0f[1] = "Sr9pWAk7BtPVrR8rbkWUazKj3QSNMXGS";
            A0Q(A00, c2070fq, c1617Wb);
        }
        C1556Tl A032 = c1557Tm.A03(1935763823);
        if (A032 != null) {
            A0T(A032.A00, c1617Wb);
        }
        C1556Tl A033 = c1557Tm.A03(1936027235);
        if (A033 != null) {
            A0U(A033.A00, c1617Wb);
        }
        C1556Tl A034 = c1557Tm.A03(1935828848);
        C1556Tl A035 = c1557Tm.A03(1936158820);
        if (A034 != null && A035 != null) {
            A0W(A034.A00, A035.A00, A00 != null ? A00.A02 : null, c1617Wb);
        }
        int size = c1557Tm.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1556Tl c1556Tl = c1557Tm.A02.get(i2);
            if (((W5) c1556Tl).A00 == 1970628964) {
                A0V(c1556Tl.A00, c1617Wb, bArr);
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0Q(C1616Wa c1616Wa, C2070fq c2070fq, C1617Wb c1617Wb) throws Q6 {
        int i = c1616Wa.A00;
        c2070fq.A0f(8);
        if ((W5.A02(c2070fq.A0C()) & 1) == 1) {
            c2070fq.A0g(8);
        }
        int A0I = c2070fq.A0I();
        int A0L = c2070fq.A0L();
        if (A0L != c1617Wb.A00) {
            throw new Q6(A0B(308, 17, 86) + A0L + A0B(0, 2, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS) + c1617Wb.A00);
        }
        int i2 = 0;
        if (A0I == 0) {
            boolean[] zArr = c1617Wb.A0F;
            for (int i3 = 0; i3 < A0L; i3++) {
                int A0I2 = c2070fq.A0I();
                i2 += A0I2;
                zArr[i3] = A0I2 > i;
            }
        } else {
            boolean z = A0I > i;
            i2 = 0 + (A0I * A0L);
            boolean[] zArr2 = c1617Wb.A0F;
            String[] strArr = A0f;
            if (strArr[6].charAt(21) != strArr[2].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0f;
            strArr2[6] = "PnVCLJYBlE9bOnV602QoUdMJp4Mo7QJx";
            strArr2[2] = "sYNUhpThMzT2vK5VQCJjpdIvHA5Cw7Wa";
            Arrays.fill(zArr2, 0, A0L, z);
        }
        c1617Wb.A02(i2);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0S(C2070fq c2070fq, Uri uri) {
        String str;
        String str2;
        long j;
        long A0U;
        long A0Q;
        if (this.A0L == null || this.A0L.length == 0) {
            return;
        }
        c2070fq.A0f(8);
        int A03 = W5.A03(c2070fq.A0C());
        long j2 = -9223372036854775807L;
        switch (A03) {
            case 0:
                str = (String) AbstractC2011es.A01(c2070fq.A0U());
                str2 = (String) AbstractC2011es.A01(c2070fq.A0U());
                long A0Q2 = c2070fq.A0Q();
                j2 = AbstractC2094gE.A0U(c2070fq.A0Q(), 1000000L, A0Q2);
                j = this.A0C != -9223372036854775807L ? this.A0C + j2 : -9223372036854775807L;
                A0U = AbstractC2094gE.A0U(c2070fq.A0Q(), 1000L, A0Q2);
                A0Q = c2070fq.A0Q();
                break;
            case 1:
                long A0Q3 = c2070fq.A0Q();
                j = AbstractC2094gE.A0U(c2070fq.A0R(), 1000000L, A0Q3);
                A0U = AbstractC2094gE.A0U(c2070fq.A0Q(), 1000L, A0Q3);
                A0Q = c2070fq.A0Q();
                str = (String) AbstractC2011es.A01(c2070fq.A0U());
                str2 = (String) AbstractC2011es.A01(c2070fq.A0U());
                break;
            default:
                AbstractC2055fb.A07(A0B(128, 22, 123), A0B(550, 35, 41) + A03);
                return;
        }
        byte[] bArr = new byte[c2070fq.A07()];
        c2070fq.A0k(bArr, 0, c2070fq.A07());
        int i = 0;
        C2070fq c2070fq2 = new C2070fq(this.A0P.A01(new EventMessage(str, str2, A0U, A0Q, bArr)));
        int A07 = c2070fq2.A07();
        InterfaceC1580Uo[] interfaceC1580UoArr = this.A0L;
        int length = interfaceC1580UoArr.length;
        int i2 = 0;
        while (i2 < length) {
            InterfaceC1580Uo interfaceC1580Uo = interfaceC1580UoArr[i2];
            c2070fq2.A0f(i);
            interfaceC1580Uo.AJk(uri);
            interfaceC1580Uo.AHx(c2070fq2, A07);
            i2++;
            i = 0;
        }
        if (j == -9223372036854775807L) {
            this.A0Y.addLast(new WH(j2, A07));
            this.A03 += A07;
            return;
        }
        if (this.A0W != null) {
            j = this.A0W.A05(j);
        }
        if (this.A0b && this.A0A != -9223372036854775807L) {
            j = this.A0A;
        }
        for (InterfaceC1580Uo interfaceC1580Uo2 : this.A0L) {
            interfaceC1580Uo2.AI0(j, 1, A07, 0, null);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0W(C2070fq c2070fq, C2070fq c2070fq2, String str, C1617Wb c1617Wb) throws Q6 {
        c2070fq.A0f(8);
        int A0C = c2070fq.A0C();
        if (c2070fq.A0C() != 1936025959) {
            return;
        }
        if (W5.A03(A0C) == 1) {
            c2070fq.A0g(4);
        }
        if (c2070fq.A0C() != 1) {
            throw new Q6(A0B(50, 39, 113));
        }
        c2070fq2.A0f(8);
        int A0C2 = c2070fq2.A0C();
        if (A0f[1].charAt(24) == 'o') {
            throw new RuntimeException();
        }
        String[] strArr = A0f;
        strArr[5] = "t417Cca0I6YObHWsDP73PC";
        strArr[7] = "F8";
        if (c2070fq2.A0C() != 1936025959) {
            return;
        }
        int A03 = W5.A03(A0C2);
        if (A03 != 1) {
            String[] strArr2 = A0f;
            if (strArr2[6].charAt(21) != strArr2[2].charAt(21)) {
                throw new RuntimeException();
            }
            A0f[4] = "SSmN8G5czCwiEyEBLCEM8L84Zx7CwlW0";
            if (A03 >= 2) {
                c2070fq2.A0g(4);
            }
        } else if (c2070fq2.A0Q() == 0) {
            throw new Q6(A0B(662, 55, FacebookMediationAdapter.ERROR_NULL_CONTEXT));
        }
        if (c2070fq2.A0Q() != 1) {
            throw new Q6(A0B(89, 39, 63));
        }
        c2070fq2.A0g(1);
        int A0I = c2070fq2.A0I();
        int i = (A0I & 240) >> 4;
        int i2 = A0I & 15;
        boolean z = c2070fq2.A0I() == 1;
        if (z) {
            int A0I2 = c2070fq2.A0I();
            byte[] bArr = new byte[16];
            c2070fq2.A0k(bArr, 0, bArr.length);
            byte[] bArr2 = null;
            if (A0I2 == 0) {
                int A0I3 = c2070fq2.A0I();
                bArr2 = new byte[A0I3];
                c2070fq2.A0k(bArr2, 0, A0I3);
            }
            c1617Wb.A08 = true;
            c1617Wb.A07 = new C1616Wa(z, str, A0I2, bArr, i, i2, bArr2);
        }
    }

    static {
        A0E();
        A0g = new UO() { // from class: com.facebook.ads.redexgen.X.Ti
            @Override // com.facebook.ads.redexgen.core.UO
            public final UK[] A5D() {
                return C1550Te.A0b();
            }

            @Override // com.facebook.ads.redexgen.core.UO
            public final /* synthetic */ UK[] A5E(Uri uri, Map map) {
                return UN.A01(this, uri, map);
            }
        };
        A0i = new byte[]{-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
        A0h = new P5().A11(A0B(717, 18, 44)).A14();
    }

    public C1550Te() {
        this(0);
    }

    public C1550Te(int i) {
        this(i, null);
    }

    public C1550Te(int i, C2084g4 c2084g4) {
        this(i, c2084g4, null, null);
    }

    public C1550Te(int i, C2084g4 c2084g4, WZ wz, DrmInitData drmInitData) {
        this(i, c2084g4, wz, drmInitData, Collections.emptyList());
    }

    public C1550Te(int i, C2084g4 c2084g4, WZ wz, DrmInitData drmInitData, List<ZM> list) {
        this(i, c2084g4, wz, drmInitData, list, null, false, false, false);
    }

    public C1550Te(int i, C2084g4 c2084g4, WZ wz, DrmInitData drmInitData, List<ZM> list, InterfaceC1580Uo interfaceC1580Uo, boolean z, boolean z2, boolean z3) {
        this.A0A = -9223372036854775807L;
        this.A0M = (wz != null ? 8 : 0) | i;
        this.A0W = c2084g4;
        this.A0Q = wz;
        this.A0N = drmInitData;
        this.A0Z = Collections.unmodifiableList(list);
        this.A0O = interfaceC1580Uo;
        this.A0c = z;
        this.A0b = z2;
        this.A0a = z3;
        this.A0P = new VB();
        this.A0R = new C2070fq(16);
        this.A0U = new C2070fq(AbstractC1572Ud.A03);
        this.A0T = new C2070fq(5);
        this.A0S = new C2070fq();
        this.A0d = new byte[16];
        this.A0V = new C2070fq(this.A0d);
        this.A0X = new ArrayDeque<>();
        this.A0Y = new ArrayDeque<>();
        this.A0D = new SparseArray<>();
        this.A08 = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0C = -9223372036854775807L;
        A0C();
    }

    public static long A01(C2070fq c2070fq) {
        c2070fq.A0f(8);
        int fullAtom = c2070fq.A0C();
        return W5.A03(fullAtom) == 0 ? c2070fq.A0Q() : c2070fq.A0R();
    }

    public static long A02(C2070fq c2070fq) {
        c2070fq.A0f(8);
        int fullAtom = c2070fq.A0C();
        int version = W5.A03(fullAtom);
        return version == 1 ? c2070fq.A0R() : c2070fq.A0Q();
    }

    public static Pair<Integer, WC> A03(C2070fq c2070fq) {
        c2070fq.A0f(12);
        int defaultSampleDescriptionIndex = c2070fq.A0C();
        int trackId = c2070fq.A0L();
        int defaultSampleFlags = c2070fq.A0L();
        int defaultSampleSize = c2070fq.A0L();
        int defaultSampleDuration = c2070fq.A0C();
        return Pair.create(Integer.valueOf(defaultSampleDescriptionIndex), new WC(trackId - 1, defaultSampleFlags, defaultSampleSize, defaultSampleDuration));
    }

    public static DrmInitData A05(List<C1556Tl> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C1556Tl c1556Tl = list.get(i);
            int leafChildrenSize = ((W5) c1556Tl).A00;
            if (leafChildrenSize == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = c1556Tl.A00.A00;
                UUID A02 = WS.A02(bArr);
                if (A02 == null) {
                    AbstractC2055fb.A07(A0B(128, 22, 123), A0B(455, 42, 33));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(A02, A0B(766, 9, 85), bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private WC A06(SparseArray<WC> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            WC valueAt = sparseArray.valueAt(0);
            String[] strArr = A0f;
            if (strArr[0].charAt(7) != strArr[3].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0f;
            strArr2[0] = "E9JlvB7FFYm2IdqIzB2u3etF1ohyBnc5";
            strArr2[3] = "HfyCbzKFUlOYvgUmzmPlUBmF6PSFOMgS";
            return valueAt;
        }
        return (WC) AbstractC2011es.A01(sparseArray.get(i));
    }

    public static WI A07(SparseArray<WI> sparseArray) {
        WI wi = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            WI valueAt = sparseArray.valueAt(i);
            if (valueAt.A02 != valueAt.A07.A01) {
                long nextTrackRunOffset = valueAt.A07.A0E[valueAt.A02];
                if (nextTrackRunOffset < j) {
                    wi = valueAt;
                    j = nextTrackRunOffset;
                }
            }
        }
        return wi;
    }

    public static WI A08(SparseArray<WI> sparseArray, int i, boolean z) {
        if (sparseArray.size() == 1 && !z) {
            return sparseArray.valueAt(0);
        }
        return sparseArray.get(i);
    }

    private final WZ A0A(WZ wz) {
        return wz;
    }

    private void A0C() {
        this.A02 = 0;
        this.A00 = 0;
    }

    /* JADX WARN: Incorrect condition in loop: B:22:0x007e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0D() {
        /*
            r7 = this;
            com.facebook.ads.redexgen.X.Uo[] r0 = r7.A0L
            if (r0 != 0) goto L6c
            r0 = 2
            com.facebook.ads.redexgen.X.Uo[] r0 = new com.facebook.ads.redexgen.core.InterfaceC1580Uo[r0]
            r7.A0L = r0
            r5 = 0
            com.facebook.ads.redexgen.X.Uo r0 = r7.A0O
            if (r0 == 0) goto L32
            com.facebook.ads.redexgen.X.Uo[] r6 = r7.A0L
            int r4 = r5 + 1
            com.facebook.ads.redexgen.X.Uo r3 = r7.A0O
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C1550Te.A0f
            r0 = 1
            r1 = r1[r0]
            r0 = 24
            char r1 = r1.charAt(r0)
            r0 = 111(0x6f, float:1.56E-43)
            if (r1 == r0) goto L66
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1550Te.A0f
            java.lang.String r1 = "Otao9S6B8JKRBRCJelyh5dyuagpQ7cPo"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "jKKhzqvWvDTveD7TkbWc2dM4REBiPpyn"
            r0 = 2
            r2[r0] = r1
            r6[r5] = r3
            r5 = r4
        L32:
            int r0 = r7.A0M
            r0 = r0 & 4
            if (r0 == 0) goto L4c
            com.facebook.ads.redexgen.X.Uo[] r4 = r7.A0L
            int r3 = r5 + 1
            com.facebook.ads.redexgen.X.UL r2 = r7.A0E
            android.util.SparseArray<com.facebook.ads.redexgen.X.WI> r0 = r7.A0D
            int r1 = r0.size()
            r0 = 5
            com.facebook.ads.redexgen.X.Uo r0 = r2.AJX(r1, r0)
            r4[r5] = r0
            r5 = r3
        L4c:
            com.facebook.ads.redexgen.X.Uo[] r0 = r7.A0L
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r5)
            com.facebook.ads.redexgen.X.Uo[] r0 = (com.facebook.ads.redexgen.core.InterfaceC1580Uo[]) r0
            r7.A0L = r0
            com.facebook.ads.redexgen.X.Uo[] r4 = r7.A0L
            int r3 = r4.length
            r2 = 0
        L5a:
            if (r2 >= r3) goto L6c
            r1 = r4[r2]
            com.facebook.ads.redexgen.X.ZM r0 = com.facebook.ads.redexgen.core.C1550Te.A0h
            r1.A6U(r0)
            int r2 = r2 + 1
            goto L5a
        L66:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L6c:
            com.facebook.ads.redexgen.X.Uo[] r0 = r7.A0K
            if (r0 != 0) goto La2
            java.util.List<com.facebook.ads.redexgen.X.ZM> r0 = r7.A0Z
            int r0 = r0.size()
            com.facebook.ads.redexgen.X.Uo[] r0 = new com.facebook.ads.redexgen.core.InterfaceC1580Uo[r0]
            r7.A0K = r0
            r3 = 0
        L7b:
            com.facebook.ads.redexgen.X.Uo[] r0 = r7.A0K
            int r0 = r0.length
            if (r3 >= r0) goto La2
            com.facebook.ads.redexgen.X.UL r2 = r7.A0E
            android.util.SparseArray<com.facebook.ads.redexgen.X.WI> r0 = r7.A0D
            int r0 = r0.size()
            int r1 = r0 + 1
            int r1 = r1 + r3
            r0 = 3
            com.facebook.ads.redexgen.X.Uo r1 = r2.AJX(r1, r0)
            java.util.List<com.facebook.ads.redexgen.X.ZM> r0 = r7.A0Z
            java.lang.Object r0 = r0.get(r3)
            com.facebook.ads.redexgen.X.ZM r0 = (com.facebook.ads.redexgen.core.ZM) r0
            r1.A6U(r0)
            com.facebook.ads.redexgen.X.Uo[] r0 = r7.A0K
            r0[r3] = r1
            int r3 = r3 + 1
            goto L7b
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1550Te.A0D():void");
    }

    private void A0F(long j) {
        while (!this.A0Y.isEmpty()) {
            WH removeFirst = this.A0Y.removeFirst();
            this.A03 -= removeFirst.A00;
            long j2 = j + removeFirst.A01;
            if (this.A0W != null) {
                j2 = this.A0W.A05(j2);
            }
            for (InterfaceC1580Uo interfaceC1580Uo : this.A0L) {
                int i = removeFirst.A00;
                int i2 = this.A03;
                String[] strArr = A0f;
                if (strArr[0].charAt(7) != strArr[3].charAt(7)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0f;
                strArr2[5] = "fQbfxQG6SMNXg0FhrXnOaI";
                strArr2[7] = "iA";
                interfaceC1580Uo.AI0(j2, 1, i, i2, null);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0095, code lost:
    
        A0C();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0098, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0G(long r5) throws com.facebook.ads.redexgen.core.Q6 {
        /*
            r4 = this;
        L0:
            java.util.ArrayDeque<com.facebook.ads.redexgen.X.Tm> r0 = r4.A0X
            boolean r3 = r0.isEmpty()
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C1550Te.A0f
            r0 = 1
            r1 = r1[r0]
            r0 = 24
            char r1 = r1.charAt(r0)
            r0 = 111(0x6f, float:1.56E-43)
            if (r1 == r0) goto L99
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1550Te.A0f
            java.lang.String r1 = "rtOhTF8yR1NjovFJo2QA4K"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "sO"
            r0 = 7
            r2[r0] = r1
            if (r3 != 0) goto L95
            java.util.ArrayDeque<com.facebook.ads.redexgen.X.Tm> r3 = r4.A0X
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C1550Te.A0f
            r0 = 1
            r1 = r1[r0]
            r0 = 24
            char r1 = r1.charAt(r0)
            r0 = 111(0x6f, float:1.56E-43)
            if (r1 == r0) goto L8f
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1550Te.A0f
            java.lang.String r1 = "DdLoo1PiGVKxZaMTgZaVBC"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "kP"
            r0 = 7
            r2[r0] = r1
            java.lang.Object r0 = r3.peek()
            com.facebook.ads.redexgen.X.Tm r0 = (com.facebook.ads.redexgen.core.C1557Tm) r0
            long r1 = r0.A00
            int r0 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r0 != 0) goto L95
            java.util.ArrayDeque<com.facebook.ads.redexgen.X.Tm> r3 = r4.A0X
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1550Te.A0f
            r0 = 6
            r1 = r2[r0]
            r0 = 2
            r2 = r2[r0]
            r0 = 21
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L78
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1550Te.A0f
            java.lang.String r1 = "9E3oRw3ViZYggqirEMBsZv"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "ZB"
            r0 = 7
            r2[r0] = r1
            java.lang.Object r0 = r3.pop()
            com.facebook.ads.redexgen.X.Tm r0 = (com.facebook.ads.redexgen.core.C1557Tm) r0
            r4.A0J(r0)
            goto L0
        L78:
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1550Te.A0f
            java.lang.String r1 = "kUNHKxqFOXY4spNWtGdM6AEMGUmbTZDs"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "gxOLplHFDql1O9FrrqUV8k9xLLw9Tw5V"
            r0 = 3
            r2[r0] = r1
            java.lang.Object r0 = r3.pop()
            com.facebook.ads.redexgen.X.Tm r0 = (com.facebook.ads.redexgen.core.C1557Tm) r0
            r4.A0J(r0)
            goto L0
        L8f:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L95:
            r4.A0C()
            return
        L99:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1550Te.A0G(long):void");
    }

    private void A0H(WJ wj) throws IOException {
        int i = ((int) this.A07) - this.A00;
        if (this.A0G != null) {
            wj.readFully(this.A0G.A00, 8, i);
            A0P(new C1556Tl(this.A01, this.A0G), wj);
        } else {
            wj.AJ9(i);
        }
        A0G(wj.A8d());
    }

    private void A0I(WJ wj) throws IOException {
        WI wi = null;
        long j = Long.MAX_VALUE;
        int size = this.A0D.size();
        for (int i = 0; i < size; i++) {
            WI nextTrackBundle = this.A0D.valueAt(i);
            C1617Wb c1617Wb = nextTrackBundle.A07;
            if (c1617Wb.A0A && c1617Wb.A03 < j) {
                j = c1617Wb.A03;
                wi = this.A0D.valueAt(i);
            }
        }
        if (wi == null) {
            this.A02 = 3;
            return;
        }
        long A8d = j - wj.A8d();
        String[] strArr = A0f;
        if (strArr[6].charAt(21) != strArr[2].charAt(21)) {
            throw new RuntimeException();
        }
        A0f[1] = "gcAbbdIzqOcdZFeDnXSNnUh1mMsQxJRh";
        int i2 = (int) A8d;
        if (i2 >= 0) {
            wj.AJ9(i2);
            wi.A07.A04(wj);
            return;
        }
        throw new Q6(A0B(325, 39, 39));
    }

    private void A0J(C1557Tm c1557Tm) throws Q6 {
        if (((W5) c1557Tm).A00 == 1836019574) {
            A0L(c1557Tm);
        } else if (((W5) c1557Tm).A00 == 1836019558) {
            A0K(c1557Tm);
        } else {
            if (this.A0X.isEmpty()) {
                return;
            }
            this.A0X.peek().A04(c1557Tm);
        }
    }

    private void A0K(C1557Tm c1557Tm) throws Q6 {
        DrmInitData A05;
        A0M(c1557Tm, this.A0D, this.A0M, this.A0d, this.A0c);
        if (this.A0N != null) {
            A05 = null;
        } else {
            List<C1556Tl> list = c1557Tm.A02;
            if (A0f[4].charAt(11) != 'i') {
                A05 = A05(list);
            } else {
                A0f[1] = "zo9UWr2fG4ODubRWxx7SWFCIumY3q8qe";
                A05 = A05(list);
            }
        }
        if (A05 != null) {
            SparseArray<WI> sparseArray = this.A0D;
            if (A0f[4].charAt(11) != 'i') {
                throw new RuntimeException();
            }
            String[] strArr = A0f;
            strArr[0] = "keKdPKZF29nnaWtRQ6tP4lqsuyeIeDxp";
            strArr[3] = "eJnCkFNFZhcQclYTVLGIuQ4G0Pq9G9XC";
            int size = sparseArray.size();
            for (int trackCount = 0; trackCount < size; trackCount++) {
                this.A0D.valueAt(trackCount).A07(A05);
            }
        }
        if (this.A0B != -9223372036854775807L) {
            int size2 = this.A0D.size();
            for (int i = 0; i < size2; i++) {
                this.A0D.valueAt(i).A06(this.A0B);
            }
            this.A0B = -9223372036854775807L;
        }
    }

    public static void A0M(C1557Tm c1557Tm, SparseArray<WI> sparseArray, int i, byte[] bArr, boolean z) throws Q6 {
        int size = c1557Tm.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1557Tm child = c1557Tm.A01.get(i2);
            int i3 = ((W5) child).A00;
            if (i3 == 1953653094) {
                boolean z2 = true;
                if (size <= 1 || !z) {
                    z2 = false;
                }
                A0N(child, sparseArray, i, bArr, z2);
            }
        }
    }

    public static void A0O(C1557Tm c1557Tm, WI wi, long j, int i) {
        int i2 = 0;
        int i3 = 0;
        List<C1556Tl> list = c1557Tm.A02;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            C1556Tl c1556Tl = list.get(i4);
            if (((W5) c1556Tl).A00 == 1953658222) {
                C2070fq trunData = c1556Tl.A00;
                trunData.A0f(12);
                int A0L = trunData.A0L();
                if (A0L > 0) {
                    i3 += A0L;
                    i2++;
                }
            }
        }
        wi.A02 = 0;
        wi.A00 = 0;
        wi.A01 = 0;
        wi.A07.A03(i2, i3);
        int i5 = 0;
        int trunStartPosition = 0;
        for (int i6 = 0; i6 < size; i6++) {
            C1556Tl c1556Tl2 = list.get(i6);
            if (((W5) c1556Tl2).A00 == 1953658222) {
                trunStartPosition = A00(wi, i5, j, i, c1556Tl2.A00, trunStartPosition);
                i5++;
            }
        }
    }

    private void A0P(C1556Tl c1556Tl, WJ wj) throws Q6 {
        Uri A9F;
        if (!this.A0X.isEmpty()) {
            this.A0X.peek().A05(c1556Tl);
            return;
        }
        int i = ((W5) c1556Tl).A00;
        if (A0f[4].charAt(11) != 'i') {
            throw new RuntimeException();
        }
        A0f[4] = "Z8NuU1FJ3dWiSTg8IJ1adcUJAiKRKniR";
        if (i == 1936286840) {
            Pair<Long, WY> A04 = A04(c1556Tl.A00, wj.A8d());
            this.A0C = ((Long) A04.first).longValue();
            this.A0E.AID((Uj) A04.second);
            String[] strArr = A0f;
            if (strArr[0].charAt(7) == strArr[3].charAt(7)) {
                String[] strArr2 = A0f;
                strArr2[0] = "dPNwBoLFaS619S2FTWEMiGWz4f07WCVk";
                strArr2[3] = "pzdU5B9Fvj5vels0EudX6vPmZsHnZs5T";
                this.A0H = true;
                return;
            }
            this.A0H = true;
            return;
        }
        if (((W5) c1556Tl).A00 != 1701671783 || (A9F = wj.A9F()) == null) {
            return;
        }
        C2070fq c2070fq = c1556Tl.A00;
        if (A0f[4].charAt(11) != 'i') {
            A0f[4] = "pnEHoF2xq5OiEj5G1yHJ6GrD4oXbKKQQ";
            A0S(c2070fq, A9F);
        } else {
            String[] strArr3 = A0f;
            strArr3[5] = "y4mH3Z8Qw7jej47exD7OHE";
            strArr3[7] = "Ke";
            A0S(c2070fq, A9F);
        }
    }

    public static void A0R(C2070fq c2070fq, int i, C1617Wb c1617Wb) throws Q6 {
        c2070fq.A0f(i + 8);
        int fullAtom = c2070fq.A0C();
        int flags = W5.A02(fullAtom);
        int fullAtom2 = flags & 1;
        if (fullAtom2 == 0) {
            int fullAtom3 = flags & 2;
            boolean z = fullAtom3 != 0;
            int sampleCount = c2070fq.A0L();
            int fullAtom4 = c1617Wb.A00;
            if (sampleCount == fullAtom4) {
                Arrays.fill(c1617Wb.A0F, 0, sampleCount, z);
                int fullAtom5 = c2070fq.A07();
                c1617Wb.A02(fullAtom5);
                c1617Wb.A05(c2070fq);
                return;
            }
            StringBuilder append = new StringBuilder().append(A0B(308, 17, 86)).append(sampleCount).append(A0B(0, 2, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS));
            int fullAtom6 = c1617Wb.A00;
            throw new Q6(append.append(fullAtom6).toString());
        }
        throw new Q6(A0B(399, 56, 23));
    }

    public static void A0T(C2070fq c2070fq, C1617Wb c1617Wb) throws Q6 {
        c2070fq.A0f(8);
        int flags = c2070fq.A0C();
        int fullAtom = W5.A02(flags) & 1;
        if (fullAtom == 1) {
            c2070fq.A0g(8);
        }
        int A0L = c2070fq.A0L();
        if (A0L == 1) {
            int entryCount = W5.A03(flags);
            c1617Wb.A03 += entryCount == 0 ? c2070fq.A0Q() : c2070fq.A0R();
            return;
        }
        throw new Q6(A0B(605, 29, 88) + A0L);
    }

    public static void A0U(C2070fq c2070fq, C1617Wb c1617Wb) throws Q6 {
        A0R(c2070fq, 0, c1617Wb);
    }

    public static void A0V(C2070fq c2070fq, C1617Wb c1617Wb, byte[] bArr) throws Q6 {
        c2070fq.A0f(8);
        c2070fq.A0k(bArr, 0, 16);
        if (!Arrays.equals(bArr, A0i)) {
            return;
        }
        A0R(c2070fq, 16, c1617Wb);
    }

    public static boolean A0X(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    public static boolean A0Y(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    private boolean A0Z(WJ wj) throws IOException {
        if (this.A00 == 0) {
            C2070fq c2070fq = this.A0R;
            if (A0f[1].charAt(24) != 'o') {
                A0f[4] = "lPKwuHzbm68idL8gtBFrrItTSb9iwKIX";
                if (!wj.AGZ(c2070fq.A00, 0, 8, true)) {
                    return false;
                }
                this.A00 = 8;
                this.A0R.A0f(0);
                this.A07 = this.A0R.A0Q();
                this.A01 = this.A0R.A0C();
            }
            throw new RuntimeException();
        }
        if (this.A07 == 1) {
            wj.readFully(this.A0R.A00, 8, 8);
            int headerBytesRemaining = this.A00;
            this.A00 = headerBytesRemaining + 8;
            this.A07 = this.A0R.A0R();
        } else if (this.A07 == 0) {
            long A8E = wj.A8E();
            if (A8E == -1 && !this.A0X.isEmpty()) {
                A8E = this.A0X.peek().A00;
            }
            String[] strArr = A0f;
            String str = strArr[5];
            String str2 = strArr[7];
            int length = str.length();
            int trackCount = str2.length();
            if (length != trackCount) {
                String[] strArr2 = A0f;
                strArr2[5] = "1vszd3IUu5CKcITvC9Vovs";
                strArr2[7] = "Gu";
                if (A8E != -1) {
                    long A8d = A8E - wj.A8d();
                    int trackCount2 = this.A00;
                    this.A07 = A8d + trackCount2;
                }
            }
            throw new RuntimeException();
        }
        if (this.A07 >= this.A00) {
            long A8d2 = wj.A8d() - this.A00;
            if (this.A01 == 1836019558) {
                int size = this.A0D.size();
                for (int i = 0; i < size; i++) {
                    C1617Wb c1617Wb = this.A0D.valueAt(i).A07;
                    c1617Wb.A02 = A8d2;
                    c1617Wb.A03 = A8d2;
                    c1617Wb.A04 = A8d2;
                }
            }
            if (this.A01 == 1835295092) {
                this.A0F = null;
                this.A09 = this.A07 + A8d2;
                if (!this.A0H) {
                    this.A0E.AID(new C1614Vy(this.A08, A8d2));
                    this.A0H = true;
                }
                this.A02 = 2;
                return true;
            }
            if (A0X(this.A01)) {
                long A8d3 = (wj.A8d() + this.A07) - 8;
                this.A0X.push(new C1557Tm(this.A01, A8d3));
                if (this.A07 == this.A00) {
                    A0G(A8d3);
                } else {
                    A0C();
                }
            } else {
                if (!A0Y(this.A01)) {
                    if (this.A07 <= 2147483647L) {
                        this.A0G = null;
                        String[] strArr3 = A0f;
                        if (strArr3[5].length() != strArr3[7].length()) {
                            String[] strArr4 = A0f;
                            strArr4[0] = "bB1AQc0FjQuYWae1J5U5UzIuH4OZnupQ";
                            strArr4[3] = "6HEVKtbFPSbSK2HhHASpS7BShQYaKlDR";
                            this.A02 = 1;
                        }
                        throw new RuntimeException();
                    }
                    throw new Q6(A0B(497, 53, 86));
                }
                if (this.A00 != 8) {
                    throw new Q6(A0B(208, 51, 67));
                }
                if (this.A07 <= 2147483647L) {
                    this.A0G = new C2070fq((int) this.A07);
                    System.arraycopy(this.A0R.A00, 0, this.A0G.A00, 0, 8);
                    this.A02 = 1;
                } else {
                    throw new Q6(A0B(259, 49, 41));
                }
            }
            return true;
        }
        throw new Q6(A0B(2, 48, 20));
    }

    private boolean A0a(WJ wj) throws IOException {
        int i;
        C1616Wa A00;
        int AHv;
        int i2 = 4;
        int i3 = 1;
        int i4 = 0;
        if (this.A02 == 3) {
            if (this.A0F == null) {
                WI A07 = A07(this.A0D);
                if (A07 == null) {
                    int A8d = (int) (this.A09 - wj.A8d());
                    if (A8d >= 0) {
                        wj.AJ9(A8d);
                        A0C();
                        return false;
                    }
                    throw new Q6(A0B(364, 35, 15));
                }
                int A8d2 = (int) (A07.A07.A0E[A07.A02] - wj.A8d());
                if (A8d2 < 0) {
                    String A0B = A0B(128, 22, 123);
                    if (A0f[1].charAt(24) != 'o') {
                        A0f[4] = "TNyVZxDnlQNi1xjxhm5fj1vwXvJdJvvx";
                        AbstractC2055fb.A07(A0B, A0B(150, 40, 79));
                        A8d2 = 0;
                    }
                    throw new RuntimeException();
                }
                wj.AJ9(A8d2);
                this.A0F = A07;
            }
            this.A06 = this.A0F.A07.A0B[this.A0F.A01];
            if (this.A0F.A01 < this.A0F.A03) {
                wj.AJ9(this.A06);
                this.A0F.A02();
                if (!this.A0F.A09()) {
                    this.A0F = null;
                }
                this.A02 = 3;
                return true;
            }
            if (this.A0F.A05.A02 == 1) {
                this.A06 -= 8;
                wj.AJ9(8);
            }
            this.A04 = this.A0F.A04();
            this.A06 += this.A04;
            this.A02 = 4;
            this.A05 = 0;
        }
        C1617Wb c1617Wb = this.A0F.A07;
        WZ wz = this.A0F.A05;
        InterfaceC1580Uo interfaceC1580Uo = this.A0F.A06;
        int i5 = this.A0F.A01;
        long A002 = c1617Wb.A00(i5);
        if (this.A0W != null) {
            A002 = this.A0W.A05(A002);
            if (A0f[1].charAt(24) == 'o') {
                throw new RuntimeException();
            }
            String[] strArr = A0f;
            strArr[6] = "LpYyw3Lgs3zE3WRmQllI9djHwhkxxKCg";
            strArr[2] = "AMhLojMwcHCpwar3oWtcddGKHFOWYqQD";
        }
        if (wz.A01 != 0) {
            byte[] bArr = this.A0T.A00;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i6 = wz.A01 + 1;
            int i7 = 4 - wz.A01;
            while (this.A04 < this.A06) {
                int i8 = this.A05;
                if (A0f[1].charAt(24) == 'o') {
                    throw new RuntimeException();
                }
                A0f[4] = "1qDKHw1P6vkipYaBOgzmBjmn0dXzYpTj";
                if (i8 == 0) {
                    wj.readFully(bArr, i7, i6);
                    this.A0T.A0f(i4);
                    int A0C = this.A0T.A0C();
                    if (A0C >= i3) {
                        this.A05 = A0C - 1;
                        this.A0U.A0f(i4);
                        interfaceC1580Uo.AHx(this.A0U, i2);
                        interfaceC1580Uo.AHx(this.A0T, i3);
                        this.A0J = this.A0K.length > 0 && AbstractC1572Ud.A0I(wz.A07.A0W, bArr[i2]);
                        this.A04 += 5;
                        String[] strArr2 = A0f;
                        if (strArr2[0].charAt(7) != strArr2[3].charAt(7)) {
                            break;
                        }
                        String[] strArr3 = A0f;
                        strArr3[6] = "rZ94R6P7RQqIK8D81rUFFdS2JFbRf80e";
                        strArr3[2] = "1aEdHpHZ0k9daaafV2wC4dc7qdVRqaRS";
                        this.A06 += i7;
                        i3 = 1;
                    } else {
                        throw new Q6(A0B(FacebookRequestErrorClassification.EC_INVALID_TOKEN, 18, 76));
                    }
                } else {
                    if (this.A0J) {
                        this.A0S.A0d(this.A05);
                        wj.readFully(this.A0S.A00, i4, this.A05);
                        interfaceC1580Uo.AHx(this.A0S, this.A05);
                        AHv = this.A05;
                        int A02 = AbstractC1572Ud.A02(this.A0S.A00, this.A0S.A0A());
                        C2070fq c2070fq = this.A0S;
                        String str = wz.A07.A0W;
                        if (A0f[1].charAt(24) == 'o') {
                            throw new RuntimeException();
                        }
                        String[] strArr4 = A0f;
                        strArr4[6] = "JZ6CEvSQuLHGlkYYaIfjXdg19IAA3WTq";
                        strArr4[2] = "SvqukunW2lA6zFJCBFc64ddUO6mmL63c";
                        c2070fq.A0f(A0B(756, 10, 86).equals(str) ? 1 : 0);
                        this.A0S.A0e(A02);
                        X4.A03(A002, this.A0S, this.A0K);
                    } else {
                        AHv = interfaceC1580Uo.AHv(wj, this.A05, false);
                    }
                    this.A04 += AHv;
                    this.A05 -= AHv;
                    i2 = 4;
                    i3 = 1;
                    i4 = 0;
                }
            }
        } else {
            boolean z = this.A0I;
            String[] strArr5 = A0f;
            if (strArr5[5].length() == strArr5[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr6 = A0f;
            strArr6[6] = "3oG3ro6c6C6dhlpRForIudcfaC8KH54O";
            strArr6[2] = "9WRqTQKssWtQllLMkZA1Hdma0ClRptku";
            if (z) {
                U5.A07(this.A06, this.A0V);
                int A0A = this.A0V.A0A();
                interfaceC1580Uo.AHx(this.A0V, A0A);
                this.A06 += A0A;
                this.A04 += A0A;
                this.A0I = false;
            }
            while (this.A04 < this.A06) {
                int i9 = this.A06;
                int i10 = this.A04;
                String[] strArr7 = A0f;
                if (strArr7[0].charAt(7) != strArr7[3].charAt(7)) {
                    String[] strArr8 = A0f;
                    strArr8[5] = "kOKUbtThXAfVEbZBtV4o3t";
                    strArr8[7] = "sw";
                    this.A04 += interfaceC1580Uo.AHv(wj, i9 - i10, false);
                } else {
                    String[] strArr9 = A0f;
                    strArr9[5] = "z6QhgG7wjRv1MMHSCe0HJl";
                    strArr9[7] = "m2";
                    this.A04 += interfaceC1580Uo.AHv(wj, i9 - i10, false);
                }
            }
        }
        if (c1617Wb.A0G[i5]) {
            i = 1;
        } else {
            i = 0;
        }
        C1579Um c1579Um = null;
        A00 = this.A0F.A00();
        if (A00 != null) {
            String[] strArr10 = A0f;
            if (strArr10[5].length() != strArr10[7].length()) {
                A0f[1] = "mMKX3fta0GSDwUHHyjpVdf70h4DY7b7o";
                i |= 1073741824;
                c1579Um = A00.A01;
            }
            throw new RuntimeException();
        }
        if (this.A0F != null && this.A0F.A05 != null && this.A0F.A05.A07 != null && this.A0F.A05.A07.A0W == A0B(735, 21, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION)) {
            i |= 1;
        }
        long j = A002;
        interfaceC1580Uo.AI0(A002, i, this.A06, 0, c1579Um);
        this.A0A = j;
        A0F(j);
        if (!this.A0F.A09()) {
            this.A0F = null;
        }
        this.A02 = 3;
        return true;
    }

    public static /* synthetic */ UK[] A0b() {
        return new UK[]{new C1550Te()};
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final void AA0(UL ul) {
        this.A0E = ul;
        if (this.A0Q != null) {
            WI wi = new WI(ul.AJX(0, this.A0Q.A03));
            wi.A08(this.A0Q, new WC(0, 0, 0, 0));
            this.A0D.put(0, wi);
            A0D();
            this.A0E.A6E();
        }
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final int AGT(WJ wj, C1575Ug c1575Ug) throws IOException {
        while (true) {
            switch (this.A02) {
                case 0:
                    if (!A0Z(wj)) {
                        return -1;
                    }
                    break;
                case 1:
                    A0H(wj);
                    break;
                case 2:
                    A0I(wj);
                    break;
                default:
                    if (!A0a(wj)) {
                        break;
                    } else {
                        return 0;
                    }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final void AGj() {
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final void AIC(long j, long j2) {
        int size = this.A0D.size();
        for (int i = 0; i < size; i++) {
            this.A0D.valueAt(i).A05();
            int i2 = A0f[1].charAt(24);
            if (i2 == 111) {
                throw new RuntimeException();
            }
            String[] strArr = A0f;
            strArr[0] = "3tiJN5gF8ZGUW3QgkqSiZewttnV23Jud";
            strArr[3] = "35rgEDIFkTn7PAD1C9FSUFqT4oV91SWi";
        }
        this.A0Y.clear();
        this.A03 = 0;
        this.A0B = j2;
        this.A0X.clear();
        this.A0I = false;
        A0C();
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final boolean AJB(WJ wj) throws IOException {
        return WX.A01(wj);
    }
}
