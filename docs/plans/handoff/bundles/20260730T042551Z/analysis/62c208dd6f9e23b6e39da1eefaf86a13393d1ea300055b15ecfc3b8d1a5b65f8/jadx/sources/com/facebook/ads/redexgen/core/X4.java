package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public abstract class X4 {
    public static byte[] A00;
    public static String[] A01 = {"syy2YLTEoSHA6gZzlMZFoSQC8vM85u1k", "RxK3hUaCMXKO7jp9FT69Lb9LkCxBqg2s", "4OIf9JKZD5wis4wt466xtrtUTnaFzGnC", "00A31XwQgMKFLLSudmzniQWjKf8nhHhB", "m2lveFqK2AEPuiH3tK1d10tr5Wykory1", "KoCHp8eIFClrJLIiWlN2i0mZ8wvpBqJf", "FwPcHPFmYTq2JbSc9R4dbSYtpp5SWJh0", "7XkTgTbGbrkDhANgQFeMAvhAsDDVVz2Q"};

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 85);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        byte[] bArr = {77, 107, 111, 91, 122, 103, 98, 11, 51, 49, 40, 40, 49, 54, 63, 120, 42, 61, 53, 57, 49, 54, 60, 61, 42, 120, 55, 62, 120, 53, 57, 52, 62, 55, 42, 53, 61, 60, 120, 11, 29, 17, 120, 22, 25, 20, 120, 45, 54, 49, 44, 118};
        String[] strArr = A01;
        if (strArr[1].charAt(30) != strArr[7].charAt(30)) {
            throw new RuntimeException();
        }
        A01[4] = "1kDvwBDRCyDV4MCkcv1yWlFX0w9qMHVl";
        A00 = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 14 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static void A04(long j, C2070fq c2070fq, InterfaceC1580Uo[] interfaceC1580UoArr) {
        int A0I = c2070fq.A0I();
        if ((A0I & 64) != 0) {
            c2070fq.A0g(1);
            int i = (A0I & 31) * 3;
            int A09 = c2070fq.A09();
            for (InterfaceC1580Uo interfaceC1580Uo : interfaceC1580UoArr) {
                c2070fq.A0f(A09);
                interfaceC1580Uo.AHx(c2070fq, i);
                interfaceC1580Uo.AI0(j, 1, i, 0, null);
            }
        }
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
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.X4.A00(com.facebook.ads.redexgen.X.fq):int");
    }

    public static void A03(long j, C2070fq c2070fq, InterfaceC1580Uo[] interfaceC1580UoArr) {
        while (true) {
            if (c2070fq.A07() > 1) {
                int A002 = A00(c2070fq);
                int A003 = A00(c2070fq);
                int A09 = c2070fq.A09() + A003;
                if (A003 != -1) {
                    int payloadType = c2070fq.A07();
                    if (A003 <= payloadType) {
                        if (A002 == 4 && A003 >= 8) {
                            int userIdentifier = c2070fq.A0I();
                            int providerCode = c2070fq.A0M();
                            int countryCode = 0;
                            if (providerCode == 49) {
                                countryCode = c2070fq.A0C();
                            }
                            int A0I = c2070fq.A0I();
                            if (providerCode == 47) {
                                c2070fq.A0g(1);
                            }
                            int i = (userIdentifier == 181 && (providerCode == 49 || providerCode == 47) && A0I == 3) ? 1 : 0;
                            if (providerCode == 49) {
                                int userDataTypeCode = countryCode != 1195456820 ? 0 : 1;
                                i &= userDataTypeCode;
                            }
                            if (i != 0) {
                                A04(j, c2070fq, interfaceC1580UoArr);
                            }
                        }
                        c2070fq.A0f(A09);
                    }
                }
                AbstractC2055fb.A07(A01(0, 7, 91), A01(7, 45, 13));
                A09 = c2070fq.A0A();
                c2070fq.A0f(A09);
            } else {
                return;
            }
        }
    }
}
