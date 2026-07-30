package com.facebook.ads.redexgen.core;

import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.Ya, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1667Ya {
    public final int A00;
    public final long A01;

    public C1667Ya(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public static C1667Ya A00(WJ wj, C2070fq c2070fq) throws IOException {
        wj.AG1(c2070fq.A0l(), 0, 8);
        c2070fq.A0f(0);
        int A0C = c2070fq.A0C();
        long size = c2070fq.A0O();
        return new C1667Ya(A0C, size);
    }
}
