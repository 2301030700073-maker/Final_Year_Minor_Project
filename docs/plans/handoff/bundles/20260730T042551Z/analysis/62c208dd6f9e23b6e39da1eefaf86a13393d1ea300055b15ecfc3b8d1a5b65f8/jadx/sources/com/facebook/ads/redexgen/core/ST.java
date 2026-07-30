package com.facebook.ads.redexgen.core;

import java.io.IOException;

/* loaded from: assets/audience_network.dex */
public final class ST implements UC {
    public final int A00;
    public final int A01;
    public final C2070fq A02 = new C2070fq();
    public final C2084g4 A03;

    public ST(int i, C2084g4 c2084g4, int i2) {
        this.A00 = i;
        this.A03 = c2084g4;
        this.A01 = i2;
    }

    private UA A00(C2070fq c2070fq, long j, long j2) {
        int A00;
        int A002;
        int A0A = c2070fq.A0A();
        long j3 = -1;
        long j4 = -1;
        long lastPcrTimeUsInRange = -9223372036854775807L;
        while (c2070fq.A07() >= 188 && (A002 = (A00 = YU.A00(c2070fq.A0l(), c2070fq.A09(), A0A)) + 188) <= A0A) {
            long A01 = YU.A01(c2070fq, A00, this.A00);
            if (A01 != -9223372036854775807L) {
                long A06 = this.A03.A06(A01);
                if (A06 > j) {
                    if (lastPcrTimeUsInRange == -9223372036854775807L) {
                        return UA.A04(A06, j2);
                    }
                    return UA.A03(j2 + j3);
                }
                long endOfLastPacketPositionInStream = A06 + 100000;
                if (endOfLastPacketPositionInStream > j) {
                    return UA.A03(A00 + j2);
                }
                j3 = A00;
                lastPcrTimeUsInRange = A06;
            }
            c2070fq.A0f(A002);
            j4 = A002;
        }
        if (lastPcrTimeUsInRange != -9223372036854775807L) {
            return UA.A05(lastPcrTimeUsInRange, j2 + j4);
        }
        return UA.A03;
    }

    @Override // com.facebook.ads.redexgen.core.UC
    public final void AF2() {
        this.A02.A0i(AbstractC2094gE.A07);
    }

    @Override // com.facebook.ads.redexgen.core.UC
    public final UA AI2(WJ wj, long j) throws IOException {
        long A8d = wj.A8d();
        int min = (int) Math.min(this.A01, wj.A8E() - A8d);
        this.A02.A0d(min);
        wj.AG1(this.A02.A0l(), 0, min);
        return A00(this.A02, j, A8d);
    }
}
