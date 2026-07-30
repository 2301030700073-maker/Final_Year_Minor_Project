package com.facebook.ads.redexgen.core;

import android.util.Pair;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.DrmInitData;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* renamed from: com.facebook.ads.redexgen.X.Vz, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1615Vz {
    public static byte[] A0p;
    public static String[] A0q = {"hyMb8khkD4okPvXGY98HPtppNwE6qnHy", "y0mouUNQb6BrWBXjLWPNISU1IwOvfME", "R", "K4xGiTODJfKhl0wPh19B8Nh8mpCZB7Zd", "epTyke6vhYl5adONInYVeliElHWpYeZl", "TH6HYp1q7KqmiNZ4Ui6Kn7yKTHciOr1p", "rIJbIujcpL2k8hhuYRqSFkNqzLdvdT0Q", "3E9"};
    public int A0I;
    public int A0N;
    public int A0Q;
    public int A0R;
    public int A0V;
    public DrmInitData A0Z;
    public C1579Um A0a;
    public InterfaceC1580Uo A0b;
    public C1581Up A0c;
    public String A0d;
    public String A0e;
    public boolean A0g;
    public boolean A0i;
    public byte[] A0j;
    public byte[] A0k;
    public byte[] A0m;
    public int A0n;
    public int A0W = -1;
    public int A0M = -1;
    public int A0L = -1;
    public int A0J = -1;
    public int A0K = 0;
    public int A0S = -1;
    public float A0A = 0.0f;
    public float A08 = 0.0f;
    public float A09 = 0.0f;
    public byte[] A0l = null;
    public int A0U = -1;
    public boolean A0h = false;
    public int A0G = -1;
    public int A0H = -1;
    public int A0F = -1;
    public int A0O = 1000;
    public int A0P = 200;
    public float A06 = -1.0f;
    public float A07 = -1.0f;
    public float A04 = -1.0f;
    public float A05 = -1.0f;
    public float A02 = -1.0f;
    public float A03 = -1.0f;
    public float A0B = -1.0f;
    public float A0C = -1.0f;
    public float A00 = -1.0f;
    public float A01 = -1.0f;
    public int A0E = 1;
    public int A0D = -1;
    public int A0T = 8000;
    public long A0X = 0;
    public long A0Y = 0;
    public boolean A0f = true;
    public String A0o = A03(1067, 3, 18);

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<String, List<byte[]>> A02(C2070fq c2070fq) throws Q6 {
        try {
            c2070fq.A0g(16);
            long A0O = c2070fq.A0O();
            if (A0O == 1482049860) {
                return new Pair<>(A03(1117, 10, 2), null);
            }
            if (A0O == 859189832) {
                return new Pair<>(A03(1088, 10, 38), null);
            }
            if (A0O != 826496599) {
                AbstractC2055fb.A07(A03(312, 17, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS), A03(492, 51, 99));
                return new Pair<>(A03(1189, 15, 98), null);
            }
            byte[] A0l = c2070fq.A0l();
            for (int A09 = c2070fq.A09() + 20; A09 < A0l.length - 4; A09++) {
                if (A0l[A09] == 0 && A0l[A09 + 1] == 0 && A0l[A09 + 2] == 1) {
                    byte b = A0l[A09 + 3];
                    String[] strArr = A0q;
                    if (strArr[0].charAt(3) != strArr[6].charAt(3)) {
                        throw new RuntimeException();
                    }
                    A0q[1] = "BQNn96Cmh2K79BOBr0ras0YVnEUxiZF";
                    if (b == 15) {
                        return new Pair<>(A03(1179, 10, 56), Collections.singletonList(Arrays.copyOfRange(A0l, A09, A0l.length)));
                    }
                }
            }
            throw Q6.A01(A03(267, 45, 1), null);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw Q6.A01(A03(166, 33, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION), null);
        }
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0p, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 125);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0p = new byte[]{19, 5, 56, 74, 89, 89, 78, 83, 76, 5, 82, 78, 82, 74, 57, 94, 85, 74, 5, 89, 84, 5, 54, 84, 54, 54, 56, -60, -30, -60, -58, -74, -62, -32, -59, -43, -44, -17, 13, -14, 2, 1, -35, -13, 6, -2, 0, -13, 1, 1, -44, -14, -41, -25, -26, -62, -33, -30, -26, -26, -33, -40, -26, -26, -42, -12, -38, -42, -40, -56, -21, 9, -16, -10, -21, -19, 44, 74, 56, 59, 48, 50, 26, 55, 29, -31, -1, -19, -16, -27, -25, -49, -20, -45, 35, 65, 47, 53, 17, 35, 37, 47, 55, 85, 69, 70, 75, 73, 45, 75, 60, 47, 57, 27, 50, 56, 59, 45, 64, 27, 53, 49, 49, 49, -20, 10, -5, -18, -8, -38, -12, -7, -1, -38, -19, -12, -14, -16, 14, -1, -14, -4, -34, -8, -3, 3, -34, -5, -8, 3, -46, -16, -27, -29, -26, -42, -39, -43, 1, 31, 22, 15, 18, 2, 9, 19, 42, 87, 87, 84, 87, 5, 85, 70, 87, 88, 78, 83, 76, 5, 43, 84, 90, 87, 40, 40, 5, 85, 87, 78, 91, 70, 89, 74, 5, 73, 70, 89, 70, -58, -13, -13, -16, -13, -95, -15, -30, -13, -12, -22, -17, -24, -95, -50, -44, -80, -62, -60, -50, -95, -28, -16, -27, -26, -28, -95, -15, -13, -22, -9, -30, -11, -26, -21, 24, 24, 21, 24, -58, 22, 7, 24, 25, 15, 20, 13, -58, 28, 21, 24, 8, 15, 25, -58, 9, 21, 10, 11, 9, -58, 22, 24, 15, 28, 7, 26, 11, -60, -33, -25, -22, -29, -30, -98, -14, -19, -98, -28, -25, -20, -30, -98, -60, -19, -13, -16, -63, -63, -98, -44, -63, -81, -98, -25, -20, -25, -14, -25, -33, -22, -25, -8, -33, -14, -25, -19, -20, -98, -30, -33, -14, -33, 54, 74, 93, 91, 88, 92, 84, 74, 46, 97, 93, 91, 74, 76, 93, 88, 91, 70, 98, 108, 108, 98, 103, 96, 25, 60, 104, 93, 94, 92, 73, 107, 98, 111, 90, 109, 94, 25, 95, 104, 107, 25, 92, 104, 93, 94, 92, 25, 42, 75, 74, 9, 44, 31, 41, -4, 41, 47, 11, 29, 31, 41, -4, 69, 79, -4, 81, 74, 79, 81, 76, 76, 75, 78, 80, 65, 64, 10, -4, 47, 65, 80, 80, 69, 74, 67, -4, 73, 69, 73, 65, 48, 85, 76, 65, -4, 80, 75, -4, 11, 23, -4, 14, -6, 11, 13, -6, 13, 25, 2, -2, 7, 16, -23, 10, 1, 13, 79, 91, 80, 65, 84, 80, 43, 61, 79, 79, 19, 31, 20, 5, 24, 20, -17, 21, 20, 6, -8, -5, 7, -4, -19, 0, -4, -41, -1, -19, -22, -2, -4, -4, 76, 88, 79, 72, 59, 76, 78, 59, -24, 1, -8, 11, 3, -8, -10, 7, -8, -9, -77, -32, -36, -32, -40, -77, 7, 12, 3, -8, -63, 53, 78, 75, 78, 79, 87, 78, 0, 38, 79, 85, 82, 35, 35, 14, 0, 51, 69, 84, 84, 73, 78, 71, 0, 77, 73, 77, 69, 52, 89, 80, 69, 0, 84, 79, 0, 86, 73, 68, 69, 79, 15, 88, 13, 85, 78, 75, 78, 79, 87, 78, 26, 51, 55, 42, 40, 52, 44, 51, 46, 63, 42, 41, -27, 40, 52, 41, 42, 40, -27, 46, 41, 42, 51, 57, 46, 43, 46, 42, 55, -13, 64, 89, 94, 96, 91, 91, 90, 93, 95, 80, 79, 11, 59, 46, 56, 11, 77, 84, 95, 11, 79, 80, 91, 95, 83, 37, 11, -3, 22, 27, 29, 24, 24, 23, 26, 28, 13, 12, -56, 10, 17, 15, -56, 13, 22, 12, 17, 9, 22, -56, -8, -21, -11, -56, 10, 17, 28, -56, 12, 13, 24, 28, 16, -30, -56, 0, 25, 30, 32, 27, 27, 26, 29, 31, 16, 15, -53, 17, 23, 26, 12, 31, 20, 25, 18, -53, 27, 26, 20, 25, 31, -53, -5, -18, -8, -53, 13, 20, 31, -53, 15, 16, 27, 31, 19, -27, -53, -33, -8, -3, -1, -6, -6, -7, -4, -2, -17, -18, -86, -10, -13, -2, -2, -10, -17, -86, -17, -8, -18, -13, -21, -8, -86, -38, -51, -41, -86, -20, -13, -2, -86, -18, -17, -6, -2, -14, -60, -86, 17, 26, -4, 17, -20, 23, 32, 14, 17, 6, 8, -13, 69, 78, 60, 63, 52, 54, 35, 30, 56, 66, 62, 30, 48, 63, 1, 10, -8, -5, -16, -14, -33, -38, -12, -2, -6, -38, -20, -2, -5, 44, 53, 35, 38, 27, 29, 10, 5, 31, 41, 37, 5, 23, 44, 25, 12, 21, 3, 6, -5, -3, -22, -27, -1, 9, 5, -27, 9, 6, -12, -3, -21, -18, -29, -27, -26, -51, -25, -15, -19, -51, -26, -29, -12, -31, -29, -20, -38, -32, -68, -29, -45, -28, -68, -45, -36, -30, -33, -48, -48, -11, -2, -13, -25, -28, -18, -15, -32, 28, 37, 28, 22, -2, -37, -28, -37, -43, -66, -17, -2, -2, -6, -9, -15, -17, 2, -9, -3, -4, -67, -14, 4, -16, 1, 3, -16, 1, 55, 70, 70, 66, 63, 57, 55, 74, 63, 69, 68, 5, 70, 61, 73, 21, 36, 36, 32, 29, 23, 21, 40, 29, 35, 34, -29, 42, 35, 22, 39, 41, 22, 81, 96, 96, 92, 89, 83, 81, 100, 89, 95, 94, 31, 104, 29, 99, 101, 82, 98, 89, 96, 17, 37, 20, 25, 31, -33, 17, 19, -29, 53, 73, 56, 61, 67, 3, 57, 53, 55, 7, 88, 108, 91, 96, 102, 38, 93, 99, 88, 90, -20, 0, -17, -12, -6, -70, -8, -5, -65, -20, -72, -9, -20, -1, -8, 36, 56, 39, 44, 50, -14, 48, 51, 40, 42, 18, 38, 21, 26, 32, -32, 30, 33, 22, 24, -34, -3, -29, 79, 99, 82, 87, 93, 29, 93, 94, 99, 97, -17, 3, -14, -9, -3, -67, 0, -17, 5, 90, 110, 
        93, 98, 104, 40, 109, 107, 110, 94, 38, 97, 93, 19, 39, 22, 27, 33, -31, 40, 32, 22, -32, 22, 38, 37, -16, 4, -13, -8, -2, -66, 5, -3, -13, -67, -13, 3, 2, -67, -9, -13, -15, 5, -12, -7, -1, -65, 6, -1, 2, -14, -7, 3, -32, -12, -29, -24, -18, -82, -9, -84, -12, -19, -22, -19, -18, -10, -19, -12, -3, -10, 105, 90, 109, 105, 36, 107, 105, 105, 94, 79, 98, 94, 25, 98, 23, 93, 93, 75, 25, 12, 7, 8, 18, -46, -42, 10, 19, 19, 38, 25, 20, 21, 31, -33, 17, 38, -32, -31, 72, 59, 54, 55, 65, 1, 51, 72, 53, -11, -24, -29, -28, -18, -82, -29, -24, -11, -9, 97, 84, 79, 80, 90, 26, 79, 90, 87, 77, 100, 24, 97, 84, 94, 84, 90, 89, -5, -18, -23, -22, -12, -76, -19, -22, -5, -24, 94, 81, 76, 77, 87, 23, 85, 88, 28, 94, 21, 77, 91, 30, 17, 12, 13, 23, -41, 21, 24, 13, 15, -38, 43, 30, 25, 26, 36, -28, 44, 43, 24, -26, 85, 72, 67, 68, 78, 14, 87, 12, 84, 77, 74, 77, 78, 86, 77, 14, 1, -4, -3, 7, -57, 16, -59, 14, 6, -4, -58, 7, 6, -54, -58, 14, 8, -48, 39, 26, 21, 22, 32, -32, 41, -34, 39, 31, 21, -33, 32, 31, -29, -33, 39, 33, -22};
    }

    static {
        A07();
    }

    public static List<byte[]> A05(byte[] bArr) throws Q6 {
        String A03 = A03(233, 34, 41);
        try {
            if (bArr[0] == 2) {
                int vorbisInfoLength = 1;
                int i = 0;
                while ((bArr[vorbisInfoLength] & 255) == 255) {
                    i += 255;
                    vorbisInfoLength++;
                }
                int i2 = vorbisInfoLength + 1;
                int i3 = i + (bArr[vorbisInfoLength] & 255);
                int offset = 0;
                while ((bArr[i2] & 255) == 255) {
                    offset += 255;
                    i2++;
                }
                int vorbisInfoLength2 = i2 + 1;
                int offset2 = offset + (bArr[i2] & 255);
                if (bArr[vorbisInfoLength2] == 1) {
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(bArr, vorbisInfoLength2, bArr2, 0, i3);
                    int vorbisInfoLength3 = vorbisInfoLength2 + i3;
                    if (bArr[vorbisInfoLength3] == 3) {
                        int vorbisInfoLength4 = vorbisInfoLength3 + offset2;
                        if (bArr[vorbisInfoLength4] == 5) {
                            byte[] bArr3 = new byte[bArr.length - vorbisInfoLength4];
                            System.arraycopy(bArr, vorbisInfoLength4, bArr3, 0, bArr.length - vorbisInfoLength4);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw Q6.A01(A03, null);
                    }
                    throw Q6.A01(A03, null);
                }
                throw Q6.A01(A03, null);
            }
            throw Q6.A01(A03, null);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw Q6.A01(A03, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNull({"output"})
    public void A06() {
        AbstractC2011es.A01(this.A0b);
    }

    public static boolean A0A(C2070fq c2070fq) throws Q6 {
        UUID uuid;
        UUID uuid2;
        try {
            int A0G = c2070fq.A0G();
            if (A0G == 1) {
                return true;
            }
            if (A0G != 65534) {
                return false;
            }
            c2070fq.A0f(24);
            long A0P = c2070fq.A0P();
            uuid = MatroskaExtractor.A0x;
            if (A0P == uuid.getMostSignificantBits()) {
                long A0P2 = c2070fq.A0P();
                uuid2 = MatroskaExtractor.A0x;
                if (A0P2 == uuid2.getLeastSignificantBits()) {
                    return true;
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw Q6.A01(A03(199, 34, 4), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MetaExoPlayerCustomization("Removed opus check as it breaks some 360 files")
    public boolean A0B(boolean z) {
        return this.A0N > 0;
    }

    private byte[] A0C() {
        if (this.A06 == -1.0f || this.A07 == -1.0f) {
            return null;
        }
        float f = this.A04;
        String[] strArr = A0q;
        if (strArr[3].charAt(14) == strArr[5].charAt(14)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0q;
        strArr2[3] = "6iccFSfv6qiHsz8TTGA7iWtRDAH5by2Y";
        strArr2[5] = "u48Apyxxg5Gb9zJDRMegqwfH4VxbyybM";
        if (f == -1.0f || this.A05 == -1.0f || this.A02 == -1.0f || this.A03 == -1.0f || this.A0B == -1.0f) {
            return null;
        }
        float f2 = this.A0C;
        String[] strArr3 = A0q;
        if (strArr3[0].charAt(3) != strArr3[6].charAt(3)) {
            String[] strArr4 = A0q;
            strArr4[0] = "bmLbZk0oFBSaIvlFq3CFVBAm1Mk0qhA8";
            strArr4[6] = "C2KbOstFrHeXOWjuTesyzI8vBGc9JLcQ";
            if (f2 == -1.0f) {
                return null;
            }
        } else {
            A0q[2] = "c";
            if (f2 == -1.0f) {
                return null;
            }
        }
        if (this.A00 == -1.0f || this.A01 == -1.0f) {
            return null;
        }
        byte[] bArr = new byte[25];
        ByteBuffer hdrStaticInfo = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        hdrStaticInfo.put((byte) 0);
        hdrStaticInfo.putShort((short) ((this.A06 * 50000.0f) + 0.5f));
        hdrStaticInfo.putShort((short) ((this.A07 * 50000.0f) + 0.5f));
        hdrStaticInfo.putShort((short) ((this.A04 * 50000.0f) + 0.5f));
        hdrStaticInfo.putShort((short) ((this.A05 * 50000.0f) + 0.5f));
        hdrStaticInfo.putShort((short) ((this.A02 * 50000.0f) + 0.5f));
        hdrStaticInfo.putShort((short) ((this.A03 * 50000.0f) + 0.5f));
        hdrStaticInfo.putShort((short) ((this.A0B * 50000.0f) + 0.5f));
        hdrStaticInfo.putShort((short) ((this.A0C * 50000.0f) + 0.5f));
        hdrStaticInfo.putShort((short) (this.A00 + 0.5f));
        hdrStaticInfo.putShort((short) (this.A01 + 0.5f));
        hdrStaticInfo.putShort((short) this.A0O);
        hdrStaticInfo.putShort((short) this.A0P);
        return bArr;
    }

    @EnsuresNonNull({"codecPrivate"})
    private byte[] A0D(String str) throws Q6 {
        if (this.A0j != null) {
            return this.A0j;
        }
        throw Q6.A01(A03(329, 31, 124) + str, null);
    }

    @RequiresNonNull({"output"})
    public final void A0E() {
        if (this.A0c != null) {
            this.A0c.A05(this.A0b, this.A0a);
        }
    }

    public final void A0F() {
        if (this.A0c != null) {
            this.A0c.A02();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x03df, code lost:
    
        if (r19.A0D == 32) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x03e1, code lost:
    
        r9 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x03fb, code lost:
    
        r9 = -1;
        r4 = A03(1052, 15, 2);
        com.facebook.ads.redexgen.core.AbstractC2055fb.A07(r1, A03(638, 42, 46) + r19.A0D + r2 + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x03f8, code lost:
    
        if (r19.A0D == 32) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x070d, code lost:
    
        if (r10 != null) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x070f, code lost:
    
        r0 = com.facebook.ads.redexgen.core.UH.A00(new com.facebook.ads.redexgen.core.C2070fq(r19.A0k));
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x071a, code lost:
    
        if (r0 == null) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x071c, code lost:
    
        r6 = r0.A02;
        r4 = A03(1127, 18, com.google.ads.mediation.facebook.FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0728, code lost:
    
        r10 = 0 | (r19.A0f ? 1 : 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x072e, code lost:
    
        if (r19.A0g == false) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0177, code lost:
    
        if (r4 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0179, code lost:
    
        r14 = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0184, code lost:
    
        if (r4 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0730, code lost:
    
        r10 = r10 | r5;
        r5 = new com.facebook.ads.redexgen.core.P5();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x073a, code lost:
    
        if (com.facebook.ads.redexgen.core.Q2.A0C(r4) == false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0215, code lost:
    
        if (r1.equals(A03(22, 5, 120)) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0217, code lost:
    
        r14 = '\r';
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x073c, code lost:
    
        r11 = 1;
        r5.A0b(r19.A0E).A0m(r19.A0T).A0i(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x022c, code lost:
    
        if (r1.equals(A03(22, 5, 120)) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x074e, code lost:
    
        if (r19.A0e == null) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0750, code lost:
    
        r1 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0w;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x075a, code lost:
    
        if (r1.containsKey(r19.A0e) != false) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x075c, code lost:
    
        r5.A0z(r19.A0e);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0761, code lost:
    
        r1 = r5.A0g(r21).A11(r4).A0h(r7).A10(r19.A0o).A0n(r10).A12(r3).A0w(r6).A0u(r19.A0Z).A14();
        r19.A0b = r20.AJX(r19.A0R, r11);
        r19.A0b.A6U(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x079a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x079f, code lost:
    
        if (com.facebook.ads.redexgen.core.Q2.A0F(r4) == false) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x07a1, code lost:
    
        r11 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x07a4, code lost:
    
        if (r19.A0K != 0) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x07a9, code lost:
    
        if (r19.A0L != (-1)) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x07ab, code lost:
    
        r0 = r19.A0W;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x07ad, code lost:
    
        r19.A0L = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x07b1, code lost:
    
        if (r19.A0J != (-1)) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x07b3, code lost:
    
        r0 = r19.A0M;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x07b5, code lost:
    
        r19.A0J = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0878, code lost:
    
        r0 = r19.A0J;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x087c, code lost:
    
        r0 = r19.A0L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x07b7, code lost:
    
        r12 = -1.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x07bc, code lost:
    
        if (r19.A0L == (-1)) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x07c0, code lost:
    
        if (r19.A0J == (-1)) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x07c2, code lost:
    
        r12 = (r19.A0M * r19.A0L) / (r19.A0W * r19.A0J);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x07cf, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x07d2, code lost:
    
        if (r19.A0h == false) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x07d4, code lost:
    
        r9 = new com.google.android.exoplayer2.ColorInfo(r19.A0G, r19.A0F, r19.A0H, A0C());
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x07e3, code lost:
    
        r2 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x07e6, code lost:
    
        if (r19.A0e == null) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x07e8, code lost:
    
        r1 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0w;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x07f2, code lost:
    
        if (r1.containsKey(r19.A0e) == false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x07f4, code lost:
    
        r1 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0w;
        r2 = ((java.lang.Integer) r1.get(r19.A0e)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0806, code lost:
    
        if (r19.A0S != 0) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x080f, code lost:
    
        if (java.lang.Float.compare(r19.A0A, 0.0f) != 0) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0817, code lost:
    
        if (java.lang.Float.compare(r19.A08, 0.0f) != 0) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x081f, code lost:
    
        if (java.lang.Float.compare(r19.A09, 0.0f) != 0) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0821, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x084f, code lost:
    
        if (java.lang.Float.compare(r19.A08, 90.0f) != 0) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0851, code lost:
    
        r2 = 90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x085c, code lost:
    
        if (java.lang.Float.compare(r19.A08, -180.0f) == 0) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0866, code lost:
    
        if (java.lang.Float.compare(r19.A08, 180.0f) != 0) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0873, code lost:
    
        if (java.lang.Float.compare(r19.A08, -90.0f) != 0) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0875, code lost:
    
        r2 = 270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0868, code lost:
    
        r2 = 180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0822, code lost:
    
        r5.A0r(r19.A0W).A0f(r19.A0M).A0Y(r12).A0l(r2).A13(r19.A0l).A0o(r19.A0U).A0t(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x088e, code lost:
    
        if (A03(892, 20, 115).equals(r4) != false) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x089e, code lost:
    
        if (A03(1078, 10, com.google.ads.mediation.facebook.FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD).equals(r4) != false) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x08ae, code lost:
    
        if (A03(1070, 8, 120).equals(r4) != false) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x08be, code lost:
    
        if (A03(874, 18, 55).equals(r4) != false) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x08ce, code lost:
    
        if (A03(859, 15, 89).equals(r4) != false) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x08de, code lost:
    
        if (A03(840, 19, 17).equals(r4) == false) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x08f9, code lost:
    
        throw com.facebook.ads.redexgen.core.Q6.A01(A03(471, 21, 22), null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x08e0, code lost:
    
        r11 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x08e3, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x08e6, code lost:
    
        if (r10 != null) goto L185;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0546  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0706  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0587  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0593  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x05ad  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x062d  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0645  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x068c  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x06ae  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x06c5  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x06db  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x06e6  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x08e6  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x032f  */
    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"this.output"})
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections")
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"codecId"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0G(com.facebook.ads.redexgen.core.UL r20, int r21) throws com.facebook.ads.redexgen.core.Q6 {
        /*
            Method dump skipped, instructions count: 2502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1615Vz.A0G(com.facebook.ads.redexgen.X.UL, int):void");
    }
}
