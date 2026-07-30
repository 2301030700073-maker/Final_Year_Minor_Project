package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.DrmInitData;
import com.google.android.gms.ads.AdRequest;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public abstract class U2 {
    public static byte[] A00;
    public static String[] A01 = {"amtfipPJXqbID3qciNhCcWM0z9C7zGoD", "d1gDYDxAXfWbX", "t0EiutZTdECLVorbnwf6N4L3pftY", "pSeWGxIua7WPL", "mNg3t075ZsYRB0CFmmB8fYa9Y1wi7PXR", "BSRaK4CY9XBnXUn8Uw0BU1", "fW", "UklDjf4ac9mxv3mWCitICuMuBFHjQK1f"};
    public static final int[] A02;
    public static final int[] A03;
    public static final int[] A04;
    public static final int[] A05;
    public static final int[] A06;
    public static final int[] A07;

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A01;
            if (strArr[5].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "yPHC1Z2aanSlHOcPKgR4GK";
            strArr2[2] = "DDC5UVOzRYKGdAmtnCQ0C757duVd";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 77);
            i4++;
        }
    }

    public static void A0B() {
        if (A01[4].charAt(20) == 'z') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[5] = "hh4Nh9y0LLUASInEpTHprO";
        strArr[2] = "Fibu6iPU4dNIs1JtLXKzgxrTgci1";
        A00 = new byte[]{33, 53, 36, 41, 47, 111, 33, 35, 115, 21, 1, 16, 29, 27, 91, 17, 21, 23, 71, 63, 43, 58, 55, 49, 113, 59, 63, 61, 109, 115, 52, 49, 61};
    }

    static {
        A0B();
        A03 = new int[]{1, 2, 3, 6};
        A05 = new int[]{48000, 44100, 32000};
        A06 = new int[]{24000, 22050, 16000};
        A04 = new int[]{2, 1, 2, 3, 3, 4, 4, 5};
        A02 = new int[]{32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 576, 640};
        A07 = new int[]{69, 87, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};
    }

    public static int A00(int i, int i2) {
        int sampleRate = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int halfFrmsizecod = A05.length;
        if (i >= halfFrmsizecod || i2 < 0) {
            return -1;
        }
        int halfFrmsizecod2 = A07.length;
        if (sampleRate >= halfFrmsizecod2) {
            return -1;
        }
        int bitrate = A05[i];
        if (bitrate == 44100) {
            int halfFrmsizecod3 = i2 % 2;
            return (A07[sampleRate] + halfFrmsizecod3) * 2;
        }
        int sampleRate2 = A02[sampleRate];
        if (bitrate == 32000) {
            int halfFrmsizecod4 = sampleRate2 * 6;
            return halfFrmsizecod4;
        }
        int halfFrmsizecod5 = sampleRate2 * 4;
        return halfFrmsizecod5;
    }

    public static int A01(int i, int i2, int i3) {
        return (i * i2) / (i3 * 32);
    }

    public static int A02(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int startIndex = byteBuffer.limit();
        int i = startIndex - 10;
        for (int i2 = position; i2 <= i; i2++) {
            int startIndex2 = i2 + 4;
            int endIndex = AbstractC2094gE.A0F(byteBuffer, startIndex2) & (-2);
            if (endIndex == -126718022) {
                return i2 - position;
            }
        }
        return -1;
    }

    public static int A03(ByteBuffer byteBuffer) {
        int numblkscod = 3;
        boolean isEac3 = ((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10;
        if (isEac3) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                int position = byteBuffer.position();
                String[] strArr = A01;
                String str = strArr[1];
                String str2 = strArr[3];
                int numblkscod2 = str.length();
                if (numblkscod2 != str2.length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[1] = "mg940SBvSwrjl";
                strArr2[3] = "BxEODy628ZWYr";
                numblkscod = (byteBuffer.get(position + 4) & 48) >> 4;
            }
            return A03[numblkscod] * 256;
        }
        return 1536;
    }

    public static int A04(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        int position = byteBuffer.position();
        String[] strArr = A01;
        if (strArr[5].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A01[4] = "P5Sx2xa5kfdEzRWOhniQLifJ0MOZOLfb";
        return 40 << ((byteBuffer.get((position + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    public static int A05(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        boolean isEac3 = ((bArr[5] & 248) >> 3) > 10;
        if (isEac3) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        int i = (bArr[4] & 192) >> 6;
        int i2 = bArr[4] & 63;
        String[] strArr = A01;
        String str = strArr[1];
        String str2 = strArr[3];
        int fscod = str.length();
        if (fscod != str2.length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "RPnRKnRsxiZSI3TxYT9wwSOvnBJ7yBMT";
        strArr2[0] = "bf7cYHxPsGw5m3JFcbTQL9k7BLimjlTN";
        return A00(i, i2);
    }

    public static int A06(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114) {
            byte b = bArr[6];
            if (A01[6].length() != 2) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[1] = "9J4etDzoH8863";
            strArr[3] = "cVZ7q6a3PMeEI";
            if (b == 111 && (bArr[7] & 254) == 186) {
                return 40 << ((bArr[(bArr[7] & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }

    public static ZM A07(C2070fq c2070fq, String str, String str2, DrmInitData drmInitData) {
        C2069fp c2069fp = new C2069fp();
        c2069fp.A0C(c2070fq);
        int fscod = c2069fp.A04(2);
        int constantBitrate = A05[fscod];
        c2069fp.A09(8);
        int i = A04[c2069fp.A04(3)];
        if (c2069fp.A04(1) != 0) {
            i++;
        }
        int fscod2 = c2069fp.A04(5);
        int halfFrmsizecod = A02[fscod2] * 1000;
        c2069fp.A06();
        c2070fq.A0f(c2069fp.A02());
        return new P5().A0y(str).A11(A0A(0, 9, 13)).A0b(i).A0m(constantBitrate).A0u(drmInitData).A10(str2).A0a(halfFrmsizecod).A0j(halfFrmsizecod).A14();
    }

    public static ZM A08(C2070fq c2070fq, String str, String str2, DrmInitData drmInitData) {
        C2069fp c2069fp = new C2069fp();
        c2069fp.A0C(c2070fq);
        int fscod = c2069fp.A04(13) * 1000;
        c2069fp.A09(3);
        int peakBitrate = c2069fp.A04(2);
        int sampleRate = A05[peakBitrate];
        c2069fp.A09(10);
        int channelCount = A04[c2069fp.A04(3)];
        if (c2069fp.A04(1) != 0) {
            channelCount++;
        }
        c2069fp.A09(3);
        int A042 = c2069fp.A04(4);
        c2069fp.A09(1);
        if (A042 > 0) {
            c2069fp.A0A(6);
            if (c2069fp.A04(1) != 0) {
                channelCount += 2;
            }
            c2069fp.A09(1);
        }
        String A0A = A0A(9, 10, 57);
        int peakBitrate2 = c2069fp.A01();
        if (peakBitrate2 > 7) {
            c2069fp.A09(7);
            if (c2069fp.A04(1) != 0) {
                A0A = A0A(19, 14, 19);
            }
        }
        c2069fp.A06();
        c2070fq.A0f(c2069fp.A02());
        return new P5().A0y(str).A11(A0A).A0b(channelCount).A0m(sampleRate).A0u(drmInitData).A10(str2).A0j(fscod).A14();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0217, code lost:
    
        if (r22.A0H() == false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0219, code lost:
    
        r22.A09(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0220, code lost:
    
        if (r22.A0H() == false) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0226, code lost:
    
        if (r22.A0H() == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0228, code lost:
    
        r22.A09(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x022f, code lost:
    
        if (r22.A0H() == false) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0231, code lost:
    
        r22.A09(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x026a, code lost:
    
        if (r15 != false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0205, code lost:
    
        if (r15 != false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0207, code lost:
    
        r22.A09(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x020e, code lost:
    
        if (r22.A0H() == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0210, code lost:
    
        r22.A09(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.core.U1 A09(com.facebook.ads.redexgen.core.C2069fp r22) {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.U2.A09(com.facebook.ads.redexgen.X.fp):com.facebook.ads.redexgen.X.U1");
    }
}
