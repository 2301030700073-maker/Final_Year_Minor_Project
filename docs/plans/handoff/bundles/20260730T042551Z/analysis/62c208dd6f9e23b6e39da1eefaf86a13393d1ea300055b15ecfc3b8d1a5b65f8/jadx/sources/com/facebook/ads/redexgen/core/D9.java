package com.facebook.ads.redexgen.core;

import com.google.android.exoplayer2.Timeline;

/* loaded from: assets/audience_network.dex */
public final class D9 extends Timeline {
    public final OI<C1673Yh> A00;
    public final OI<C1671Yf> A01;
    public final int[] A02;
    public final int[] A03;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.OI != com.google.common.collect.ImmutableList<com.google.android.exoplayer2.Timeline$Period> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.OI != com.google.common.collect.ImmutableList<com.google.android.exoplayer2.Timeline$Window> */
    /* JADX WARN: Incorrect condition in loop: B:6:0x001b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public D9(com.facebook.ads.redexgen.core.OI<com.facebook.ads.redexgen.core.C1671Yf> r4, com.facebook.ads.redexgen.core.OI<com.facebook.ads.redexgen.core.C1673Yh> r5, int[] r6) {
        /*
            r3 = this;
            r3.<init>()
            int r1 = r4.size()
            int r0 = r6.length
            if (r1 != r0) goto L26
            r0 = 1
        Lb:
            com.facebook.ads.redexgen.core.AbstractC2011es.A07(r0)
            r3.A01 = r4
            r3.A00 = r5
            r3.A02 = r6
            int r0 = r6.length
            int[] r0 = new int[r0]
            r3.A03 = r0
            r2 = 0
        L1a:
            int r0 = r6.length
            if (r2 >= r0) goto L28
            int[] r1 = r3.A03
            r0 = r6[r2]
            r1[r0] = r2
            int r2 = r2 + 1
            goto L1a
        L26:
            r0 = 0
            goto Lb
        L28:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.D9.<init>(com.facebook.ads.redexgen.X.OI, com.facebook.ads.redexgen.X.OI, int[]):void");
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A06() {
        return this.A00.size();
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A07() {
        return this.A01.size();
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A08(int i, int i2, boolean z) {
        if (i2 == 1) {
            return i;
        }
        if (i == A0C(z)) {
            if (i2 == 2) {
                return A0B(z);
            }
            return -1;
        }
        if (z) {
            return this.A02[this.A03[i] + 1];
        }
        return i + 1;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A0A(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A0B(boolean z) {
        if (A0N()) {
            return -1;
        }
        if (z) {
            return this.A02[0];
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A0C(boolean z) {
        if (A0N()) {
            return -1;
        }
        if (z) {
            return this.A02[A07() - 1];
        }
        return A07() - 1;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final C1673Yh A0I(int i, C1673Yh p, boolean z) {
        C1707Zq c1707Zq;
        C1673Yh p2 = this.A00.get(i);
        Object obj = p2.A03;
        Object obj2 = p2.A04;
        int i2 = p2.A00;
        long j = p2.A01;
        long j2 = p2.A02;
        c1707Zq = p2.A06;
        p.A0G(obj, obj2, i2, j, j2, c1707Zq, p2.A05);
        return p;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final C1671Yf A0L(int i, C1671Yf c1671Yf, long j) {
        C1671Yf c1671Yf2 = this.A01.get(i);
        c1671Yf.A07(c1671Yf2.A0C, c1671Yf2.A09, c1671Yf2.A0A, c1671Yf2.A06, c1671Yf2.A07, c1671Yf2.A04, c1671Yf2.A0G, c1671Yf2.A0D, c1671Yf2.A08, c1671Yf2.A02, c1671Yf2.A03, c1671Yf2.A00, c1671Yf2.A01, c1671Yf2.A05);
        c1671Yf.A0F = c1671Yf2.A0F;
        return c1671Yf;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final Object A0M(int i) {
        throw new UnsupportedOperationException();
    }
}
