package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.8m, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C10478m implements R7, R8 {
    public static String[] A06 = {"1ZsuQqUhgt3teitMQ4GeUimcSTtZqrrN", "DlI2FIcWwBGEcUI8VbyxE2F7", "OBys2kVokAWves5jveaeXr7SlmXqNqeo", "7Rss8w8nbZuaEy0gv2BXxPtsZLUwfx9E", "pqA0QvXfNioCnyAr5bWRnoOg", "RB2UTNKQNa60zux4ojHI3jJrjUoVAO0q", "Q0iesb3nsbpa6asi4Da9qGj", "pzRBeELMN3nbeWYj8"};
    public long A00;
    public long A01;
    public long A02;
    public R8 A03;
    public RA[] A04 = new RA[0];
    public final R7 A05;

    public C10478m(R7 r7, boolean z, long j, long j2) {
        this.A05 = r7;
        this.A02 = z ? j : -9223372036854775807L;
        this.A01 = j;
        this.A00 = j2;
    }

    private C1482Qn A00(long j, C1482Qn c1482Qn) {
        long toleranceBeforeUs = AbstractC2094gE.A0T(c1482Qn.A01, 0L, j - this.A01);
        long A0T = AbstractC2094gE.A0T(c1482Qn.A00, 0L, this.A00 == Long.MIN_VALUE ? Long.MAX_VALUE : this.A00 - j);
        if (toleranceBeforeUs == c1482Qn.A01 && A0T == c1482Qn.A00) {
            return c1482Qn;
        }
        return new C1482Qn(toleranceBeforeUs, A0T);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1806bY
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void ACl(R7 r7) {
        ((R8) AbstractC2011es.A01(this.A03)).ACl(this);
    }

    public static boolean A02(long j, QD[] qdArr) {
        if (j != 0) {
            for (QD qd : qdArr) {
                if (qd != null) {
                    ZM A8s = qd.A8s();
                    if (!Q2.A0G(A8s.A0W, A8s.A0R)) {
                        String[] strArr = A06;
                        if (strArr[0].charAt(6) == strArr[2].charAt(6)) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A06;
                        strArr2[3] = "cNHmY7WEn6O0myy1x5i2L94uENuLU76g";
                        strArr2[5] = "MKObJyUV6aR753Z8T9WnvbR0y1G3p3TC";
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean A03() {
        return this.A02 != -9223372036854775807L;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1807bZ
    @MetaExoPlayerCustomization("Added in D19760981 for cancel request")
    public final void A4i(long j) {
        this.A05.A4i(j);
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final boolean A52(long j) {
        return this.A05.A52(j);
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final void A5q(long j, boolean z) {
        this.A05.A5q(j, z);
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final long A6h(long j, C1482Qn c1482Qn) {
        if (j == this.A01) {
            long j2 = this.A01;
            if (A06[7].length() == 9) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[3] = "30kzOjmO5DnFKolqOzwFG5SV9Z7ljgLg";
            strArr[5] = "g6sJ5KQ0ZZizLSy8t4ccOewAGY9Ihc56";
            return j2;
        }
        return this.A05.A6h(j, A00(j, c1482Qn));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1807bZ
    @MetaExoPlayerCustomization("Added in D9949576 for unstall buffer")
    public final long A6w(long j) {
        return this.A05.A6w(j);
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final long A6y() {
        long A6y = this.A05.A6y();
        if (A6y == Long.MIN_VALUE || (this.A00 != Long.MIN_VALUE && A6y >= this.A00)) {
            return Long.MIN_VALUE;
        }
        return A6y;
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final long A8R() {
        long A8R = this.A05.A8R();
        if (A8R == Long.MIN_VALUE || (this.A00 != Long.MIN_VALUE && A8R >= this.A00)) {
            return Long.MIN_VALUE;
        }
        return A8R;
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final C1486Qs A9C() {
        return this.A05.A9C();
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final void ABn() throws IOException {
        if (0 == 0) {
            this.A05.ABn();
            return;
        }
        throw null;
    }

    @Override // com.facebook.ads.redexgen.core.R8
    public final void AEd(R7 r7) {
        if (0 != 0) {
            return;
        }
        ((R8) AbstractC2011es.A01(this.A03)).AEd(this);
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final void AGD(R8 r8, long j) {
        this.A03 = r8;
        this.A05.AGD(this, j);
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final long AGY() {
        if (A03()) {
            long childDiscontinuityUs = this.A02;
            this.A02 = -9223372036854775807L;
            long initialDiscontinuityUs = AGY();
            return initialDiscontinuityUs != -9223372036854775807L ? initialDiscontinuityUs : childDiscontinuityUs;
        }
        long AGY = this.A05.AGY();
        if (AGY == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z = true;
        AbstractC2011es.A08(AGY >= this.A01);
        long discontinuityUs = this.A00;
        if (discontinuityUs != Long.MIN_VALUE && AGY > this.A00) {
            z = false;
        }
        AbstractC2011es.A08(z);
        return AGY;
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final void AGe(long j) {
        this.A05.AGe(j);
    }

    @Override // com.facebook.ads.redexgen.core.R7
    public final long AIE(@MetaExoPlayerCustomization long j, boolean z) {
        this.A02 = -9223372036854775807L;
        boolean z2 = false;
        for (RA ra : this.A04) {
            if (ra != null) {
                ra.A00();
            }
        }
        long AIE = this.A05.AIE(j, z);
        String[] strArr = A06;
        if (strArr[0].charAt(6) == strArr[2].charAt(6)) {
            throw new RuntimeException();
        }
        A06[7] = "WZ2rEvOPvt3D7Egmlv2P0kl";
        if (AIE == j || (AIE >= this.A01 && (this.A00 == Long.MIN_VALUE || AIE <= this.A00))) {
            z2 = true;
        }
        AbstractC2011es.A08(z2);
        return AIE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
    
        if (r7 <= r1) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    @Override // com.facebook.ads.redexgen.core.R7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long AIF(com.facebook.ads.redexgen.core.QD[] r16, boolean[] r17, com.facebook.ads.redexgen.core.InterfaceC1803bV[] r18, boolean[] r19, long r20) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C10478m.AIF(com.facebook.ads.redexgen.X.QD[], boolean[], com.facebook.ads.redexgen.X.bV[], boolean[], long):long");
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1807bZ
    @MetaExoPlayerCustomization("Added in D19875605 for error load during pause")
    public final void AIi(boolean z) {
        this.A05.AIi(z);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1807bZ
    @MetaExoPlayerCustomization("Added in D13267633 for lower priority during pause")
    public final void AJg(byte b) {
        this.A05.AJg(b);
    }
}
