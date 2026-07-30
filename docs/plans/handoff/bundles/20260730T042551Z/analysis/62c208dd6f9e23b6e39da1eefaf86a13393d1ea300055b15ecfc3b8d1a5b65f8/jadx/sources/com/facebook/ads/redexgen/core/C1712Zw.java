package com.facebook.ads.redexgen.core;

import android.os.SystemClock;

/* renamed from: com.facebook.ads.redexgen.X.Zw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1712Zw implements L3 {
    public static final C1712Zw A00 = new C1712Zw();

    public static C1712Zw A00() {
        return A00;
    }

    @Override // com.facebook.ads.redexgen.core.L3
    public final long AC0() {
        return SystemClock.elapsedRealtime();
    }
}
