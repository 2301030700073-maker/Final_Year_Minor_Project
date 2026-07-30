package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class RP implements InterfaceC1694Zc {
    public static byte[] A00;
    public static String[] A01 = {"0BabCAxVaGQyYcuzP7xeWcBdxpOSf2ml", "oRMIuFRtPEAQk6KdtHmuHUtsd3yuaj7l", "dg6RRMOIWj6gbHNOYfYCm2oYX7cNAWHX", "ITgKhc8UJFwx06k1Ft7TSonFfA65", "ITJXMHxcfiR8Y3vASsyQCdx9VLU05X", "gS6Yk1beCJeRoKHnFwS80ut2LUudQjpp", "OEN3mI20EU1o5H3Iy4jvAI5Wu5Uqx0Rf", "d2MLwsup9KkIRMHj4n4qkGdMuAJrn4sa"};

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A01[3].length() != 28) {
                throw new RuntimeException();
            }
            A01[4] = "rLIg3S9PC6pNqLgEJcW0";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 92);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{0, 53, 53, 36, 44, 49, 53, 36, 37, 97, 53, 46, 97, 34, 51, 36, 32, 53, 36, 97, 37, 36, 34, 46, 37, 36, 51, 97, 39, 46, 51, 97, 52, 47, 50, 52, 49, 49, 46, 51, 53, 36, 37, 97, 12, 8, 12, 4, 97, 53, 56, 49, 36, 123, 97, 46, 63, 63, 35, 38, 44, 46, 59, 38, 32, 33, 96, 38, 43, 124, 38, 55, 55, 43, 46, 36, 38, 51, 46, 40, 41, 104, 63, 106, 34, 42, 52, 32, 66, 83, 83, 79, 74, 64, 66, 87, 74, 76, 77, 12, 91, 14, 74, 64, 90, 119, 102, 102, 122, Byte.MAX_VALUE, 117, 119, 98, Byte.MAX_VALUE, 121, 120, 57, 110, 59, 101, 117, 98, 115, 37, 35};
    }

    static {
        A01();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0091  */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1694Zc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.facebook.ads.redexgen.core.V7 A59(com.facebook.ads.redexgen.core.ZM r7) {
        /*
            r6 = this;
            java.lang.String r3 = r7.A0W
            if (r3 == 0) goto Lf
            int r0 = r3.hashCode()
            switch(r0) {
                case -1348231605: goto L7e;
                case -1248341703: goto L53;
                case 1154383568: goto L41;
                case 1652648887: goto L2f;
                default: goto Lb;
            }
        Lb:
            r0 = -1
        Lc:
            switch(r0) {
                case 0: goto La3;
                case 1: goto L9d;
                case 2: goto L97;
                case 3: goto L91;
                default: goto Lf;
            }
        Lf:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r2 = 0
            r1 = 55
            r0 = 29
            java.lang.String r0 = A00(r2, r1, r0)
            java.lang.StringBuilder r0 = r4.append(r0)
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r1 = r0.toString()
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>(r1)
            throw r0
        L2f:
            r2 = 105(0x69, float:1.47E-43)
            r1 = 20
            r0 = 74
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 2
            goto Lc
        L41:
            r2 = 70
            r1 = 18
            r0 = 27
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 1
            goto Lc
        L53:
            r5 = 55
            r4 = 15
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.RP.A01
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 25
            if (r1 == r0) goto La9
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.RP.A01
            java.lang.String r1 = "TQMUUE2b9MmImOhv3vTdA5lJniuTDE0E"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "3AM1XustvsffLKc3yuaFNncrfmWYOQba"
            r0 = 1
            r2[r0] = r1
            r0 = 19
            java.lang.String r0 = A00(r5, r4, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 0
            goto Lc
        L7e:
            r2 = 88
            r1 = 17
            r0 = 127(0x7f, float:1.78E-43)
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 3
            goto Lc
        L91:
            com.facebook.ads.redexgen.X.BT r0 = new com.facebook.ads.redexgen.X.BT
            r0.<init>()
            return r0
        L97:
            com.facebook.ads.redexgen.X.Av r0 = new com.facebook.ads.redexgen.X.Av
            r0.<init>()
            return r0
        L9d:
            com.facebook.ads.redexgen.X.BU r0 = new com.facebook.ads.redexgen.X.BU
            r0.<init>()
            return r0
        La3:
            com.facebook.ads.redexgen.X.B2 r0 = new com.facebook.ads.redexgen.X.B2
            r0.<init>()
            return r0
        La9:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.RP.A59(com.facebook.ads.redexgen.X.ZM):com.facebook.ads.redexgen.X.V7");
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1694Zc
    public final boolean AJS(ZM zm) {
        String str = zm.A0W;
        String mimeType = A00(55, 15, 19);
        if (!mimeType.equals(str)) {
            String mimeType2 = A00(70, 18, 27);
            if (!mimeType2.equals(str)) {
                String mimeType3 = A00(FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, 20, 74);
                if (!mimeType3.equals(str)) {
                    String mimeType4 = A00(88, 17, ModuleDescriptor.MODULE_VERSION);
                    if (!mimeType4.equals(str)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
