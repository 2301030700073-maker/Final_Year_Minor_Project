package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.1C, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C1C extends AbstractC10508p {
    public static byte[] A0I;
    public static String[] A0J = {"JOrxgdgiFNMyZ9RXjIHlzJxtpjszybzI", "oPBAxKYQr0Me06AxtpAn0CFFbug0ExVP", "3PbYO8mPqqsjp2fkHbF27iuv0Pg2A", "rArTtd6flA01yT4YDpnam2ze9qDCyC9k", "MEESK6nD2Bl84NJ7oAvb5bZxrRtNlybV", "hPdq7yXPxpqmpCU", "iauHzW8b2Crd3cwA9TjIEToqeMWdtOwH", "acbVvXpnLojQLWC"};
    public static final int[] A0K;
    public static final int[] A0L;
    public static final int[] A0M;
    public static final int[] A0N;
    public static final int[] A0O;
    public static final int[] A0P;
    public static final int[] A0Q;
    public static final boolean[] A0R;
    public byte A00;
    public byte A01;
    public int A02;
    public int A03;
    public long A05;
    public List<C1476Qh> A07;
    public List<C1476Qh> A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final int A0C;
    public final int A0D;
    public final int A0E;
    public final long A0F;
    public final C2070fq A0G = new C2070fq();
    public final ArrayList<C1639Wy> A0H = new ArrayList<>();
    public C1639Wy A06 = new C1639Wy(0, 4);
    public int A04 = 0;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 47);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0I = new byte[]{-102, -68, -72, -115, -121, -113, -101, -68, -70, -58, -69, -68, -55, -86, -49, -41, -62, -51, -54, -59, -127, -60, -55, -62, -49, -49, -58, -51, -113, -127, -91, -58, -57, -62, -42, -51, -43, -54, -49, -56, -127, -43, -48, -127, -92, -92, -110, -113, 12, 27, 27, 23, 20, 14, 12, 31, 20, 26, 25, -38, 35, -40, 24, 27, -33, -40, 14, 16, 12, -40, -31, -37, -29};
    }

    static {
        A09();
        A0M = new int[]{11, 1, 3, 12, 14, 5, 7, 9};
        A0L = new int[]{0, 4, 8, 12, 16, 20, 24, 28};
        A0Q = new int[]{-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
        A0K = new int[]{32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS, 102, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, FacebookMediationAdapter.ERROR_NULL_CONTEXT, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
        A0N = new int[]{174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
        A0O = new int[]{193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};
        A0P = new int[]{195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
        A0R = new boolean[]{false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    }

    public C1C(String str, int i, long j) {
        this.A0F = j > 0 ? 1000 * j : -9223372036854775807L;
        this.A0C = A06(48, 25, 124).equals(str) ? 2 : 3;
        switch (i) {
            case 1:
                this.A0D = 0;
                this.A0E = 0;
                break;
            case 2:
                this.A0D = 1;
                this.A0E = 0;
                break;
            case 3:
                this.A0D = 0;
                this.A0E = 1;
                break;
            case 4:
                this.A0D = 1;
                this.A0E = 1;
                break;
            default:
                AbstractC2055fb.A07(A06(0, 13, 40), A06(13, 35, 50));
                this.A0D = 0;
                this.A0E = 0;
                break;
        }
        A0E(0);
        A08();
        this.A0A = true;
        this.A05 = -9223372036854775807L;
    }

    public static char A00(byte b) {
        int index = A0K[(b & Byte.MAX_VALUE) - 32];
        return (char) index;
    }

    public static char A01(byte b) {
        int index = A0O[b & 31];
        return (char) index;
    }

    public static char A02(byte b) {
        int index = A0P[b & 31];
        return (char) index;
    }

    public static char A03(byte b) {
        int index = A0N[b & 15];
        return (char) index;
    }

    public static char A04(byte b, byte b2) {
        if ((b & 1) == 0) {
            return A01(b2);
        }
        return A02(b2);
    }

    public static int A05(byte b) {
        return (b >> 3) & 1;
    }

    private List<C1476Qh> A07() {
        int i = 2;
        int size = this.A0H.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            C1476Qh A08 = this.A0H.get(i2).A08(Integer.MIN_VALUE);
            arrayList.add(A08);
            if (A08 != null) {
                int positionAnchor = A08.A08;
                i = Math.min(i, positionAnchor);
            }
        }
        List<Cue> displayCues = new ArrayList<>(size);
        for (int i3 = 0; i3 < size; i3++) {
            C1476Qh c1476Qh = (C1476Qh) arrayList.get(i3);
            if (c1476Qh != null) {
                int cueBuilderCount = c1476Qh.A08;
                if (cueBuilderCount != i) {
                    c1476Qh = (C1476Qh) AbstractC2011es.A01(this.A0H.get(i3).A08(i));
                }
                displayCues.add(c1476Qh);
            }
        }
        return displayCues;
    }

    private void A08() {
        this.A06.A0C(this.A02);
        this.A0H.clear();
        this.A0H.add(this.A06);
    }

    private void A0A(byte b) {
        this.A06.A0B(' ');
        int style = (b >> 1) & 7;
        this.A06.A0F(style, (b & 1) == 1);
    }

    private void A0B(byte b) {
        switch (b) {
            case 32:
                A0E(2);
                return;
            case 33:
            case 34:
            case 35:
            case 36:
            case 40:
            default:
                if (this.A02 == 0) {
                    return;
                }
                switch (b) {
                    case 33:
                        this.A06.A09();
                        return;
                    case 36:
                    default:
                        return;
                    case 44:
                        this.A07 = Collections.emptyList();
                        if (this.A02 != 1 && this.A02 != 3) {
                            return;
                        }
                        A08();
                        return;
                    case 45:
                        if (this.A02 != 1 || this.A06.A0G()) {
                            return;
                        }
                        C1639Wy c1639Wy = this.A06;
                        String[] strArr = A0J;
                        if (strArr[3].charAt(2) != strArr[0].charAt(2)) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A0J;
                        strArr2[5] = "Lc1Yjr0HK8NXd2n";
                        strArr2[7] = "dJfz9fpqBDlf3VC";
                        c1639Wy.A0A();
                        return;
                    case 46:
                        A08();
                        return;
                    case 47:
                        this.A07 = A07();
                        A08();
                        return;
                }
            case 37:
                A0E(1);
                A0F(2);
                return;
            case 38:
                A0E(1);
                A0F(3);
                return;
            case 39:
                A0E(1);
                A0F(4);
                return;
            case 41:
                A0E(3);
                return;
        }
    }

    private void A0C(byte b, byte b2) {
        int i = A0M[b & 7];
        int row = b2 & 32;
        int row2 = row != 0 ? 1 : 0;
        if (row2 != 0) {
            i++;
        }
        int row3 = this.A06.A03;
        if (i != row3) {
            int row4 = this.A02;
            if (row4 != 1 && !this.A06.A0G()) {
                this.A06 = new C1639Wy(this.A02, this.A03);
                this.A0H.add(this.A06);
            }
            this.A06.A03 = i;
        }
        int cursorOrStyle = (b2 & 16) == 16 ? 1 : 0;
        int row5 = b2 & 1;
        boolean isCursor = row5 == 1;
        int row6 = b2 >> 1;
        int i2 = row6 & 7;
        C1639Wy c1639Wy = this.A06;
        int row7 = cursorOrStyle != 0 ? 8 : i2;
        c1639Wy.A0F(row7, isCursor);
        if (cursorOrStyle != 0) {
            C1639Wy c1639Wy2 = this.A06;
            int row8 = A0L[i2];
            c1639Wy2.A02 = row8;
        }
    }

    private void A0D(byte b, byte b2) {
        if (A0L(b)) {
            this.A0A = false;
        }
        if (!A0K(b)) {
            return;
        }
        switch (b2) {
            case 32:
            case 37:
            case 38:
            case 39:
            case 41:
            case 47:
                this.A0A = true;
                break;
            case 42:
            case 43:
                this.A0A = false;
                break;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:9:0x0013 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0E(int r5) {
        /*
            r4 = this;
            int r0 = r4.A02
            if (r0 != r5) goto L5
            return
        L5:
            int r1 = r4.A02
            r4.A02 = r5
            r0 = 3
            if (r5 != r0) goto L24
            r1 = 0
        Ld:
            java.util.ArrayList<com.facebook.ads.redexgen.X.Wy> r0 = r4.A0H
            int r0 = r0.size()
            if (r1 >= r0) goto L23
            java.util.ArrayList<com.facebook.ads.redexgen.X.Wy> r0 = r4.A0H
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.Wy r0 = (com.facebook.ads.redexgen.core.C1639Wy) r0
            r0.A0D(r5)
            int r1 = r1 + 1
            goto Ld
        L23:
            return
        L24:
            r4.A08()
            if (r1 == r0) goto L2e
            r0 = 1
            if (r5 == r0) goto L2e
            if (r5 != 0) goto L55
        L2e:
            java.util.List r3 = java.util.Collections.emptyList()
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C1C.A0J
            r0 = 6
            r1 = r1[r0]
            r0 = 13
            char r1 = r1.charAt(r0)
            r0 = 99
            if (r1 == r0) goto L47
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L47:
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1C.A0J
            java.lang.String r1 = "rMKwEMRY1QeDuPW"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "WmuJjvlHz3sGanz"
            r0 = 7
            r2[r0] = r1
            r4.A07 = r3
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1C.A0E(int):void");
    }

    private void A0F(int i) {
        this.A03 = i;
        this.A06.A0E(i);
    }

    private boolean A0G() {
        if (this.A0F == -9223372036854775807L || this.A05 == -9223372036854775807L) {
            return false;
        }
        long A0V = A0V() - this.A05;
        long elapsedUs = this.A0F;
        String[] strArr = A0J;
        if (strArr[3].charAt(2) != strArr[0].charAt(2)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0J;
        strArr2[3] = "XJrowmVAFXHysfPDB41J1xavPOk7wH1b";
        strArr2[0] = "EHrQbnhhlkFKfulOFYsjMEdqByDYvVKb";
        return A0V >= elapsedUs;
    }

    private boolean A0H(byte b) {
        if (A0I(b)) {
            this.A04 = A05(b);
        }
        return this.A04 == this.A0D;
    }

    public static boolean A0I(byte b) {
        return (b & 224) == 0;
    }

    public static boolean A0J(byte b) {
        return (b & 240) == 16;
    }

    public static boolean A0K(byte b) {
        return (b & 247) == 20;
    }

    public static boolean A0L(byte b) {
        return 1 <= b && b <= 15;
    }

    public static boolean A0M(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    public static boolean A0N(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    public static boolean A0O(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    public static boolean A0P(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    public static boolean A0Q(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    public static boolean A0R(byte b, byte b2) {
        if ((b & 247) == 23) {
            String[] strArr = A0J;
            if (strArr[3].charAt(2) != strArr[0].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[4] = "xMb33ooyLnuvXDRusnX73TlfyEHk9Z1H";
            strArr2[1] = "pBEmnV5JvWclTt74gCdVEpE9vEyIU7wY";
            if (b2 >= 33 && b2 <= 35) {
                return true;
            }
        }
        return false;
    }

    private boolean A0S(boolean z, byte b, byte b2) {
        if (z && A0J(b)) {
            if (this.A0B && this.A00 == b && this.A01 == b2) {
                this.A0B = false;
                return true;
            }
            this.A0B = true;
            this.A00 = b;
            this.A01 = b2;
        } else {
            this.A0B = false;
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p
    /* renamed from: A0W */
    public final /* bridge */ /* synthetic */ C10538s A5h() throws TP {
        return super.A5h();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p, com.facebook.ads.redexgen.core.InterfaceC1531Sl
    /* renamed from: A0X, reason: merged with bridge method [inline-methods] */
    public final AbstractC10518q A5j() throws TP {
        AbstractC10518q A0Y;
        AbstractC10518q outputBuffer = super.A5j();
        if (outputBuffer != null) {
            return outputBuffer;
        }
        if (A0G() && (A0Y = A0Y()) != null) {
            this.A07 = Collections.emptyList();
            this.A05 = -9223372036854775807L;
            A0Y.A0C(A0V(), A0Z(), Long.MAX_VALUE);
            return A0Y;
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p
    public final TI A0Z() {
        this.A08 = this.A07;
        return new TI((List) AbstractC2011es.A01(this.A07));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p
    /* renamed from: A0a */
    public final /* bridge */ /* synthetic */ void AGR(C10538s c10538s) throws TP {
        super.AGR(c10538s);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p
    public final void A0b(C10538s c10538s) {
        ByteBuffer subtitleData = (ByteBuffer) AbstractC2011es.A01(c10538s.A02);
        this.A0G.A0j(subtitleData.array(), subtitleData.limit());
        boolean z = false;
        while (true) {
            if (this.A0G.A07() < this.A0C) {
                break;
            }
            byte A0I2 = this.A0C == 2 ? (byte) -4 : (byte) this.A0G.A0I();
            int A0I3 = this.A0G.A0I();
            int A0I4 = this.A0G.A0I();
            if ((A0I2 & 2) == 0 && (A0I2 & 1) == this.A0E) {
                byte b = (byte) (A0I3 & ModuleDescriptor.MODULE_VERSION);
                byte ccHeader = (byte) (A0I4 & ModuleDescriptor.MODULE_VERSION);
                if (b != 0 || ccHeader != 0) {
                    boolean z2 = this.A09;
                    this.A09 = (A0I2 & 4) == 4 && A0R[A0I3] && A0R[A0I4];
                    if (!A0S(this.A09, b, ccHeader)) {
                        if (!this.A09) {
                            if (z2) {
                                A08();
                                z = true;
                            }
                        } else {
                            A0D(b, ccHeader);
                            if (this.A0A && A0H(b)) {
                                if (A0I(b)) {
                                    if (A0Q(b, ccHeader)) {
                                        this.A06.A0B(A03(ccHeader));
                                    } else if (A0M(b, ccHeader)) {
                                        this.A06.A09();
                                        this.A06.A0B(A04(b, ccHeader));
                                    } else if (A0N(b, ccHeader)) {
                                        A0A(ccHeader);
                                    } else if (A0P(b, ccHeader)) {
                                        A0C(b, ccHeader);
                                    } else if (!A0R(b, ccHeader)) {
                                        if (A0O(b, ccHeader)) {
                                            A0B(ccHeader);
                                        }
                                    } else {
                                        this.A06.A04 = ccHeader - 32;
                                    }
                                } else {
                                    this.A06.A0B(A00(b));
                                    if ((ccHeader & 224) != 0) {
                                        this.A06.A0B(A00(ccHeader));
                                    }
                                }
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        if (z) {
            if (this.A02 == 1 || this.A02 == 3) {
                this.A07 = A07();
                this.A05 = A0V();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p
    public final boolean A0d() {
        return this.A07 != this.A08;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p, com.facebook.ads.redexgen.core.InterfaceC1531Sl
    public final void AGj() {
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p, com.facebook.ads.redexgen.core.TQ
    public final /* bridge */ /* synthetic */ void AIn(long j) {
        super.AIn(j);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC10508p, com.facebook.ads.redexgen.core.InterfaceC1531Sl
    public final void flush() {
        super.flush();
        this.A07 = null;
        this.A08 = null;
        A0E(0);
        A0F(4);
        A08();
        this.A09 = false;
        this.A0B = false;
        this.A00 = (byte) 0;
        this.A01 = (byte) 0;
        this.A04 = 0;
        this.A0A = true;
        this.A05 = -9223372036854775807L;
    }
}
