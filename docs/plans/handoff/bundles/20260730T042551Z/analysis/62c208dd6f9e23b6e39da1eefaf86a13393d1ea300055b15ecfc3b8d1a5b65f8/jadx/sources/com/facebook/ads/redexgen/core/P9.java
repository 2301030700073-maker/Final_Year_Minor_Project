package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* loaded from: assets/audience_network.dex */
public final class P9 implements InterfaceC2018ez {
    @Override // com.facebook.ads.redexgen.core.InterfaceC2018ez
    public final C1443Oy A5F(Looper looper, Handler.Callback callback) {
        return new C1443Oy(new Handler(looper, callback));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2018ez
    public final long A69() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2018ez
    public final long AJj() {
        return SystemClock.uptimeMillis();
    }
}
