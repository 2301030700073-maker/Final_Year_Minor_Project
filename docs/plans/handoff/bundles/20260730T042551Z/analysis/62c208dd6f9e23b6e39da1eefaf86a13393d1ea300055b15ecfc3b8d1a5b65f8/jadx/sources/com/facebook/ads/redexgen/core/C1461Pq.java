package com.facebook.ads.redexgen.core;

import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.Pq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1461Pq implements InterfaceC1958e1 {
    public final int A00;

    public C1461Pq() {
        this(-1);
    }

    public C1461Pq(int i) {
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1958e1
    public final int A8P(int i) {
        if (this.A00 == -1) {
            if (i == 7) {
                return 6;
            }
            return 3;
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1958e1
    public final long A8k(C1957e0 c1957e0) {
        IOException iOException = c1957e0.A03;
        if ((iOException instanceof Q6) || (iOException instanceof FileNotFoundException) || (iOException instanceof C5I) || (iOException instanceof C1968eB) || C1934dc.A06(iOException)) {
            return -9223372036854775807L;
        }
        return Math.min((c1957e0.A00 - 1) * 1000, 5000);
    }
}
