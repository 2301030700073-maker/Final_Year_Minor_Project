package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Pl, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1456Pl extends C1934dc {
    public static byte[] A02;
    public final int A00;
    public final C1941dj A01;

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A02 = new byte[]{89, 86, 95, 91, 72, 78, 95, 66, 78, 20, 16, 84, 85, 78, 26, 74, 95, 72, 87, 83, 78, 78, 95, 94, 20, 16};
    }

    public C1456Pl(C1941dj c1941dj, int i, int i2) {
        super(A02(i, i2));
        this.A01 = c1941dj;
        this.A00 = i2;
    }

    public C1456Pl(IOException iOException, C1941dj c1941dj, int i, int i2) {
        super(iOException, A02(i, i2));
        this.A01 = c1941dj;
        this.A00 = i2;
    }

    public C1456Pl(String str, C1941dj c1941dj, int i, int i2) {
        super(str, A02(i, i2));
        this.A01 = c1941dj;
        this.A00 = i2;
    }

    public C1456Pl(String str, IOException iOException, C1941dj c1941dj, int i, int i2) {
        super(str, iOException, A02(i, i2));
        this.A01 = c1941dj;
        this.A00 = i2;
    }

    public static int A02(int i, int i2) {
        if (i == 2000 && i2 == 1) {
            return AdError.INTERNAL_ERROR_CODE;
        }
        return i;
    }

    public static C1456Pl A03(final IOException iOException, final C1941dj c1941dj, int i) {
        int errorCode;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            errorCode = AdError.CACHE_ERROR_CODE;
        } else if (iOException instanceof InterruptedIOException) {
            errorCode = 1004;
        } else {
            if (message != null) {
                String A01 = AbstractC2178hb.A01(message);
                String message2 = A04(0, 26, 83);
                if (A01.matches(message2)) {
                    errorCode = 2007;
                }
            }
            errorCode = AdError.INTERNAL_ERROR_CODE;
        }
        if (errorCode == 2007) {
            return new C1456Pl(iOException, c1941dj) { // from class: com.facebook.ads.redexgen.X.5I
                public static byte[] A00;
                public static String[] A01 = {"KrwfVMSgvCQX", "BfVUnDqiTjAVH1l7WNLrOWBTdTYUY8Vd", "25KSknXY8I3RCSTlZ635HZ3", "f", "GH3uc6uK5DCSDvSKR9hVp8", "PzMPeAMXXBB0dqHPCeJ9rhlrdeNKRBU6", "l8327jWuoRezG2rflUO9eNRMch", "5OPWiZVRhyLyfXWov1NOhWiMzSyGn6fy"};

                public static String A00(int i2, int i3, int i4) {
                    byte[] copyOfRange = Arrays.copyOfRange(A00, i2, i2 + i3);
                    int i5 = 0;
                    while (true) {
                        int length = copyOfRange.length;
                        if (A01[1].charAt(12) != 'H') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A01;
                        strArr[3] = "c";
                        strArr[2] = "wimjw4CnGDi7wlGPQ6PoCsS";
                        if (i5 >= length) {
                            return new String(copyOfRange);
                        }
                        copyOfRange[i5] = (byte) ((copyOfRange[i5] - i4) - 120);
                        i5++;
                    }
                }

                public static void A01() {
                    A00 = new byte[]{3, 44, 37, 33, 50, 52, 37, 56, 52, -32, 8, 20, 20, 16, -32, 52, 50, 33, 38, 38, 41, 35, -32, 46, 47, 52, -32, 48, 37, 50, 45, 41, 52, 52, 37, 36, -18, -32, 19, 37, 37, -32, 40, 52, 52, 48, 51, -6, -17, -17, 36, 37, 54, 37, 44, 47, 48, 37, 50, -18, 33, 46, 36, 50, 47, 41, 36, -18, 35, 47, 45, -17, 39, 53, 41, 36, 37, -17, 52, 47, 48, 41, 35, 51, -17, 45, 37, 36, 41, 33, -17, 41, 51, 51, 53, 37, 51, -17, 35, 44, 37, 33, 50, 52, 37, 56, 52, -19, 46, 47, 52, -19, 48, 37, 50, 45, 41, 52, 52, 37, 36};
                }

                static {
                    A01();
                }

                {
                    String A002 = A00(0, 121, 72);
                }
            };
        }
        return new C1456Pl(iOException, c1941dj, errorCode, i);
    }
}
