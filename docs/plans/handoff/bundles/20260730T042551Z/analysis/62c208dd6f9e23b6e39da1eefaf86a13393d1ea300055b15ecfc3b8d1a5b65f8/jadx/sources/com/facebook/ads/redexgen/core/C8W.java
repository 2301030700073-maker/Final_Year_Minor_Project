package com.facebook.ads.redexgen.core;

import com.google.android.exoplayer2.Timeline;

/* renamed from: com.facebook.ads.redexgen.X.8W, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class C8W extends Timeline {
    public final Timeline A00;

    public C8W(Timeline timeline) {
        this.A00 = timeline;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A06() {
        return this.A00.A06();
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A07() {
        return this.A00.A07();
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int A08(int i, int i2, boolean z) {
        return this.A00.A08(i, i2, z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int A0A(Object obj) {
        return this.A00.A0A(obj);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A0B(boolean z) {
        return this.A00.A0B(z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A0C(boolean z) {
        return this.A00.A0C(z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public C1673Yh A0I(int i, C1673Yh c1673Yh, boolean z) {
        return this.A00.A0I(i, c1673Yh, z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public C1671Yf A0L(int i, C1671Yf c1671Yf, long j) {
        return this.A00.A0L(i, c1671Yf, j);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public Object A0M(int i) {
        return this.A00.A0M(i);
    }
}
