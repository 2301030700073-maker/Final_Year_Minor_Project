package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public abstract class UE {
    public static byte[] A00;
    public static String[] A01 = {"zOBnVdZEl2L3e4AXnDd9G11vWIOq79KJ", "WoGScMtyZyTkSevv94XXwMvUSUOngUyP", "wcZi00XFnf2p", "EA6oz7f03wgSVcWDu3otuiJxV6VRA", "OucbhJWJlfZaBgKYK86IYzWVq5D6YSLq", "LcwjEa3UpwWSC1hm4hnO4DZsnjIlc", "0X4EiQAcF9Ys", "i3pZtA"};

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 99);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{109, 75, 79, 123, 90, 71, 66, 10, 50, 48, 41, 41, 48, 55, 62, 121, 43, 60, 52, 56, 48, 55, 61, 60, 43, 121, 54, 63, 121, 52, 56, 53, 63, 54, 43, 52, 60, 61, 121, 10, 28, 16, 121, 23, 24, 21, 121, 44, 55, 48, 45, 119};
    }

    static {
        A02();
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A00(com.facebook.ads.redexgen.core.C2070fq r3) {
        /*
            r2 = 0
        L1:
            int r0 = r3.A07()
            if (r0 != 0) goto L9
            r0 = -1
            return r0
        L9:
            int r1 = r3.A0I()
            int r2 = r2 + r1
            r0 = 255(0xff, float:3.57E-43)
            if (r1 == r0) goto L1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.UE.A00(com.facebook.ads.redexgen.X.fq):int");
    }

    public static void A03(long j, C2070fq c2070fq, InterfaceC1580Uo[] interfaceC1580UoArr) {
        while (true) {
            if (c2070fq.A07() > 1) {
                int A002 = A00(c2070fq);
                int A003 = A00(c2070fq);
                int nextPayloadPosition = c2070fq.A09() + A003;
                if (A003 != -1) {
                    int payloadType = c2070fq.A07();
                    if (A003 <= payloadType) {
                        if (A002 == 4) {
                            String[] strArr = A01;
                            if (strArr[3].length() != strArr[5].length()) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A01;
                            strArr2[6] = "hCWyPMi8Uw97";
                            strArr2[2] = "MFbyJ6GioS0x";
                            if (A003 >= 8) {
                                int userDataTypeCode = c2070fq.A0I();
                                int A0M = c2070fq.A0M();
                                int userIdentifier = 0;
                                if (A0M == 49) {
                                    userIdentifier = c2070fq.A0C();
                                }
                                int A0I = c2070fq.A0I();
                                if (A0M == 47) {
                                    c2070fq.A0g(1);
                                }
                                int i = (userDataTypeCode == 181 && (A0M == 49 || A0M == 47) && A0I == 3) ? 1 : 0;
                                if (A0M == 49) {
                                    int countryCode = userIdentifier != 1195456820 ? 0 : 1;
                                    i &= countryCode;
                                }
                                if (i != 0) {
                                    A04(j, c2070fq, interfaceC1580UoArr);
                                }
                            }
                        } else {
                            continue;
                        }
                        c2070fq.A0f(nextPayloadPosition);
                    }
                }
                AbstractC2055fb.A07(A01(0, 7, 77), A01(7, 45, 58));
                nextPayloadPosition = c2070fq.A0A();
                c2070fq.A0f(nextPayloadPosition);
            } else {
                return;
            }
        }
    }

    public static void A04(long j, C2070fq c2070fq, InterfaceC1580Uo[] interfaceC1580UoArr) {
        int firstByte = c2070fq.A0I();
        if (!((firstByte & 64) != 0)) {
            return;
        }
        c2070fq.A0g(1);
        int i = (firstByte & 31) * 3;
        int A09 = c2070fq.A09();
        for (InterfaceC1580Uo interfaceC1580Uo : interfaceC1580UoArr) {
            c2070fq.A0f(A09);
            interfaceC1580Uo.AHx(c2070fq, i);
            if (j != -9223372036854775807L) {
                interfaceC1580Uo.AI0(j, 1, i, 0, null);
            }
        }
    }
}
