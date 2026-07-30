package com.facebook.ads.redexgen.core;

import java.io.IOException;

/* loaded from: assets/audience_network.dex */
public final class SZ implements UC {
    public static String[] A02 = {"ywfQGuZmxKRq9DiGhUZ7kYscmDK1yQgG", "yyTvJSC6Z0r54pydRAhxUJP1azmwXDOJ", "gvuMstIQJvALA6WtbPPaNh31qHMDdkoF", "E0QXldRoWhYO8ektdPBMo", "DFNHE1wHLkZv4p7cWSMUCPCbnnT4PMb", "g4TxeGeqbF4zqLZ4UkHsV", "MUEU7huTxB7R4VrIhIroeSO9nSrJhyxH", "rSptlWUj73Sv"};
    public final C2070fq A00;
    public final C2084g4 A01;

    public SZ(C2084g4 c2084g4) {
        this.A01 = c2084g4;
        this.A00 = new C2070fq();
    }

    private UA A00(C2070fq c2070fq, long j, long j2) {
        int A00;
        int i = -1;
        int nextStartCode = -1;
        long lastScrTimeUsInRange = -9223372036854775807L;
        while (c2070fq.A07() >= 4) {
            A00 = SX.A00(c2070fq.A0l(), c2070fq.A09());
            if (A00 != 442) {
                String[] strArr = A02;
                if (strArr[6].charAt(22) == strArr[2].charAt(22)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A02;
                strArr2[0] = "a3lqFHSS3DslexIzjbNJjqusIrL4N5Nk";
                strArr2[1] = "njWKM5PygQIPU1OFJXB97dIi4ZCaVTzR";
                c2070fq.A0g(1);
            } else {
                c2070fq.A0g(4);
                long A06 = YI.A06(c2070fq);
                if (A06 != -9223372036854775807L) {
                    long A062 = this.A01.A06(A06);
                    String[] strArr3 = A02;
                    String str = strArr3[3];
                    String str2 = strArr3[5];
                    int nextStartCode2 = str.length();
                    if (nextStartCode2 != str2.length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr4 = A02;
                    strArr4[6] = "F6PF0LTzuWjaRJS9VbMfX0iR1WEuDh7M";
                    strArr4[2] = "m2L6Os1MLtbtnvaHGpyPTkzcprKslVk7";
                    if (A062 > j) {
                        if (lastScrTimeUsInRange == -9223372036854775807L) {
                            return UA.A04(A062, j2);
                        }
                        return UA.A03(i + j2);
                    }
                    long j3 = 100000 + A062;
                    String[] strArr5 = A02;
                    if (strArr5[6].charAt(22) != strArr5[2].charAt(22)) {
                        String[] strArr6 = A02;
                        strArr6[0] = "W7u44J0wrnlSYvhpCW69qwLkgdUWDqtk";
                        strArr6[1] = "UTLGkfIHUt9GdIVHNcFUM3AMnDAtXDZU";
                        if (j3 > j) {
                            return UA.A03(c2070fq.A09() + j2);
                        }
                        lastScrTimeUsInRange = A062;
                        i = c2070fq.A09();
                    } else {
                        if (j3 > j) {
                            return UA.A03(c2070fq.A09() + j2);
                        }
                        lastScrTimeUsInRange = A062;
                        i = c2070fq.A09();
                    }
                }
                A01(c2070fq);
                nextStartCode = c2070fq.A09();
            }
        }
        if (lastScrTimeUsInRange != -9223372036854775807L) {
            return UA.A05(lastScrTimeUsInRange, nextStartCode + j2);
        }
        return UA.A03;
    }

    /* JADX WARN: Incorrect condition in loop: B:29:0x009f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A01(com.facebook.ads.redexgen.core.C2070fq r7) {
        /*
            int r4 = r7.A0A()
            int r1 = r7.A07()
            r0 = 10
            if (r1 >= r0) goto L10
            r7.A0f(r4)
            return
        L10:
            r0 = 9
            r7.A0g(r0)
            int r0 = r7.A0I()
            r1 = r0 & 7
            int r0 = r7.A07()
            if (r0 >= r1) goto L25
            r7.A0f(r4)
            return
        L25:
            r7.A0g(r1)
            int r0 = r7.A07()
            r3 = 4
            if (r0 >= r3) goto L33
            r7.A0f(r4)
            return
        L33:
            byte[] r1 = r7.A0l()
            int r0 = r7.A09()
            int r6 = com.facebook.ads.redexgen.core.SX.A01(r1, r0)
            r5 = 443(0x1bb, float:6.21E-43)
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.SZ.A02
            r0 = 3
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L59
        L53:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L59:
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.SZ.A02
            java.lang.String r1 = "W4uQhL8jWJHqZgCUKILgt"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "2aDxXS5ryuBYsCblpfdei"
            r0 = 5
            r2[r0] = r1
            if (r6 != r5) goto L9b
            r7.A0g(r3)
            int r5 = r7.A0M()
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.SZ.A02
            r0 = 0
            r1 = r2[r0]
            r0 = 1
            r2 = r2[r0]
            r0 = 21
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L53
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.SZ.A02
            java.lang.String r1 = "UaHxHuh5g4Eu"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "Mvhk2ZSMcAgbtShce8DOetPAv4tTvpu"
            r0 = 4
            r2[r0] = r1
            int r0 = r7.A07()
            if (r0 >= r5) goto L98
            r7.A0f(r4)
            return
        L98:
            r7.A0g(r5)
        L9b:
            int r0 = r7.A07()
            if (r0 < r3) goto Lb5
            byte[] r1 = r7.A0l()
            int r0 = r7.A09()
            int r1 = com.facebook.ads.redexgen.core.SX.A01(r1, r0)
            r0 = 442(0x1ba, float:6.2E-43)
            if (r1 == r0) goto Lb5
            r0 = 441(0x1b9, float:6.18E-43)
            if (r1 != r0) goto Lb6
        Lb5:
            return
        Lb6:
            int r1 = r1 >>> 8
            r0 = 1
            if (r1 == r0) goto Lbc
            goto Lb5
        Lbc:
            r7.A0g(r3)
            int r1 = r7.A07()
            r0 = 2
            if (r1 >= r0) goto Lca
            r7.A0f(r4)
            return
        Lca:
            int r2 = r7.A0M()
            int r1 = r7.A0A()
            int r0 = r7.A09()
            int r0 = r0 + r2
            int r0 = java.lang.Math.min(r1, r0)
            r7.A0f(r0)
            goto L9b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.SZ.A01(com.facebook.ads.redexgen.X.fq):void");
    }

    @Override // com.facebook.ads.redexgen.core.UC
    public final void AF2() {
        this.A00.A0i(AbstractC2094gE.A07);
    }

    @Override // com.facebook.ads.redexgen.core.UC
    public final UA AI2(WJ wj, long j) throws IOException {
        long A8d = wj.A8d();
        int min = (int) Math.min(20000L, wj.A8E() - A8d);
        this.A00.A0d(min);
        wj.AG1(this.A00.A0l(), 0, min);
        return A00(this.A00, j, A8d);
    }
}
