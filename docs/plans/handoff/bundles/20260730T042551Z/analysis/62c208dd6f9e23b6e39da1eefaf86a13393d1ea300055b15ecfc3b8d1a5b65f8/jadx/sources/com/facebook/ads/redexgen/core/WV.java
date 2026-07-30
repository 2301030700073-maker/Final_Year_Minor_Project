package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public class WV implements Uj {
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final boolean A06;

    public WV(long j, long j2, int i, int i2, boolean z) {
        this.A05 = j;
        this.A04 = j2;
        this.A01 = i2 == -1 ? 1 : i2;
        this.A00 = i;
        this.A06 = z;
        if (j == -1) {
            this.A02 = -1L;
            this.A03 = -9223372036854775807L;
        } else {
            this.A02 = j - j2;
            this.A03 = A01(j, j2, i);
        }
    }

    private long A00(long j) {
        long positionOffset = this.A01;
        long j2 = ((this.A00 * j) / 8000000) / positionOffset;
        long positionOffset2 = this.A01;
        long positionOffset3 = j2 * positionOffset2;
        if (this.A02 != -1) {
            positionOffset3 = Math.min(positionOffset3, this.A02 - this.A01);
        }
        long positionOffset4 = Math.max(positionOffset3, 0L);
        long positionOffset5 = this.A04;
        return positionOffset5 + positionOffset4;
    }

    public static long A01(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    public final long A02(long j) {
        return A01(j, this.A04, this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final long A7j() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final C1576Ui A8r(long j) {
        if (this.A02 == -1 && !this.A06) {
            return new C1576Ui(new C1577Uk(0L, this.A04));
        }
        long A00 = A00(j);
        long A02 = A02(A00);
        C1577Uk seekPoint = new C1577Uk(A02, A00);
        if (this.A02 == -1 || A02 >= j || this.A01 + A00 >= this.A05) {
            return new C1576Ui(seekPoint);
        }
        long seekTimeUs = this.A01 + A00;
        long secondSeekPosition = A02(seekTimeUs);
        return new C1576Ui(seekPoint, new C1577Uk(secondSeekPosition, seekTimeUs));
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final boolean AAY() {
        return this.A02 != -1 || this.A06;
    }
}
