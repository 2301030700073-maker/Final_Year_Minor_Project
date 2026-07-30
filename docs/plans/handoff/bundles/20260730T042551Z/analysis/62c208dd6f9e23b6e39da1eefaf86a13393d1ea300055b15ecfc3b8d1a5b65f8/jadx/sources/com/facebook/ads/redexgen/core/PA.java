package com.facebook.ads.redexgen.core;

import java.util.concurrent.Executor;

/* loaded from: assets/audience_network.dex */
public class PA implements InterfaceExecutorC2073ft {
    public final /* synthetic */ InterfaceC2022f3 A00;
    public final /* synthetic */ Executor A01;

    public PA(Executor executor, InterfaceC2022f3 interfaceC2022f3) {
        this.A01 = executor;
        this.A00 = interfaceC2022f3;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceExecutorC2073ft
    public final void AGj() {
        this.A00.A2z(this.A01);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.A01.execute(runnable);
    }
}
