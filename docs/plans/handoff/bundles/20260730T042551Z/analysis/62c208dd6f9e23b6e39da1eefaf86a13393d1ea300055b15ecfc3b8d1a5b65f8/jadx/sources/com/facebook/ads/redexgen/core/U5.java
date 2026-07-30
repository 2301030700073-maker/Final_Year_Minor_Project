package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import com.google.android.exoplayer2.DrmInitData;
import com.google.android.gms.ads.RequestConfiguration;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public abstract class U5 {
    public static byte[] A00;
    public static String[] A01 = {"EDbMaNnOAmY0RUAoa81bsdHC4j8WXcgq", "SWG1KqVOkRlJj5xaFJLXfgvDZGcLop9W", "NnVJgvXVZSo8y", "MZutOzUHR9f6ofw4F9B4zZrhWVwaux2f", "iJqNP9fc7gU428pJE5yolgtY1lT8LdOq", "d47YjnRvT4PZseum75lZj5V30Q4jd", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "7qpAsdx1ZTRXxrWBJjlVhK3OYLOnnJkC"};
    public static final int[] A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static U4 A04(C2069fp c2069fp) {
        int A04 = c2069fp.A04(16);
        int A042 = c2069fp.A04(16);
        int i = 0 + 2 + 2;
        if (A042 == 65535) {
            A042 = c2069fp.A04(24);
            i += 3;
        }
        int i2 = A042 + i;
        if (A04 == 44097) {
            i2 += 2;
        }
        int A043 = c2069fp.A04(2);
        if (A043 == 3) {
            A043 += A00(c2069fp, 2);
        }
        int A044 = c2069fp.A04(10);
        if (c2069fp.A0H() && c2069fp.A04(3) > 0) {
            c2069fp.A09(2);
        }
        int i3 = c2069fp.A0H() ? 48000 : 44100;
        int A045 = c2069fp.A04(4);
        int i4 = 0;
        if (i3 != 44100 || A045 != 13) {
            if (i3 == 48000 && A045 < A02.length) {
                i4 = A02[A045];
                switch (A044 % 5) {
                    case 1:
                    case 3:
                        if (A045 == 3 || A045 == 8) {
                            i4++;
                            break;
                        }
                    case 2:
                        if (A045 == 8 || A045 == 11) {
                            i4++;
                            break;
                        }
                    case 4:
                        if (A045 == 3 || A045 == 8 || A045 == 11) {
                            i4++;
                            break;
                        }
                }
            }
        } else {
            i4 = A02[A045];
        }
        return new U4(A043, 2, i3, i2, i4);
    }

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 61);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A00 = new byte[]{104, 124, 109, 96, 102, 38, 104, 106, 61};
    }

    static {
        A06();
        A02 = new int[]{AdError.CACHE_ERROR_CODE, AdError.SERVER_ERROR_CODE, 1920, 1601, 1600, AdError.NO_FILL_ERROR_CODE, 1000, 960, 800, 800, 480, 400, 400, 2048};
    }

    public static int A00(C2069fp c2069fp, int i) {
        int i2 = 0;
        while (true) {
            int value = c2069fp.A04(i);
            int i3 = i2 + value;
            boolean A0H = c2069fp.A0H();
            if (A01[2].length() == 18) {
                throw new RuntimeException();
            }
            A01[2] = "TxTKr2zZZb";
            if (!A0H) {
                return i3;
            }
            i2 = (i3 + 1) << i;
        }
    }

    public static int A01(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return A04(new C2069fp(bArr)).A03;
    }

    public static int A02(byte[] bArr, int i) {
        if (bArr.length < 7) {
            return -1;
        }
        int headerSize = bArr[2];
        int i2 = (headerSize & 255) << 8;
        int headerSize2 = bArr[3];
        int i3 = i2 | (headerSize2 & 255);
        int i4 = 2 + 2;
        if (i3 == 65535) {
            int headerSize3 = bArr[4];
            int i5 = (headerSize3 & 255) << 16;
            int headerSize4 = bArr[5];
            int i6 = i5 | ((headerSize4 & 255) << 8);
            int headerSize5 = bArr[6];
            i3 = i6 | (headerSize5 & 255);
            i4 += 3;
        }
        if (i == 44097) {
            i4 += 2;
        }
        return i3 + i4;
    }

    public static ZM A03(C2070fq c2070fq, String str, String str2, DrmInitData drmInitData) {
        c2070fq.A0g(1);
        return new P5().A0y(str).A11(A05(0, 9, 52)).A0b(2).A0m(((c2070fq.A0I() & 32) >> 5) == 1 ? 48000 : 44100).A0u(drmInitData).A10(str2).A14();
    }

    public static void A07(int i, C2070fq c2070fq) {
        c2070fq.A0d(7);
        byte[] A0l = c2070fq.A0l();
        A0l[0] = -84;
        A0l[1] = 64;
        A0l[2] = -1;
        A0l[3] = -1;
        A0l[4] = (byte) ((i >> 16) & 255);
        A0l[5] = (byte) ((i >> 8) & 255);
        A0l[6] = (byte) (i & 255);
    }
}
