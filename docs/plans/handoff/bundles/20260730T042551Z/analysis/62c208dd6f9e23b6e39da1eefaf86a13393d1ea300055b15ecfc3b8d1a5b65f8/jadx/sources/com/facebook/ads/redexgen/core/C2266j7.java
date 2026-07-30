package com.facebook.ads.redexgen.core;

import java.util.concurrent.ThreadPoolExecutor;

/* renamed from: com.facebook.ads.redexgen.X.j7, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2266j7 extends BY {
    public final /* synthetic */ C2265j6 A00;

    public C2266j7(C2265j6 c2265j6) {
        this.A00 = c2265j6;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        ThreadPoolExecutor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2;
        Runnable runnable;
        this.A00.A0C = false;
        threadPoolExecutor = this.A00.A0B;
        if (threadPoolExecutor.getQueue().isEmpty()) {
            threadPoolExecutor2 = this.A00.A0B;
            runnable = this.A00.A0A;
            threadPoolExecutor2.execute(runnable);
        }
    }
}
