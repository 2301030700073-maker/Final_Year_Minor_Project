package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.bL, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1793bL {
    public final int A00;
    public final boolean A01;

    public C1793bL(int i, boolean z) {
        this.A00 = i;
        this.A01 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1793bL c1793bL = (C1793bL) obj;
        return this.A00 == c1793bL.A00 && this.A01 == c1793bL.A01;
    }

    public final int hashCode() {
        return (this.A00 * 31) + (this.A01 ? 1 : 0);
    }
}
