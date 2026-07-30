package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.Kh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1335Kh extends AbstractC2122gh {
    public final /* synthetic */ C1264Ho A00;

    public C1335Kh(C1264Ho c1264Ho) {
        this.A00 = c1264Ho;
    }

    @Override // com.facebook.ads.redexgen.core.F4
    public final void ACH() {
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2122gh, com.facebook.ads.redexgen.core.F4
    public final void AD9(int i, String str) {
        AtomicBoolean atomicBoolean;
        InterfaceC1262Hm interfaceC1262Hm;
        InterfaceC1262Hm interfaceC1262Hm2;
        atomicBoolean = this.A00.A0B;
        atomicBoolean.set(true);
        interfaceC1262Hm = this.A00.A02;
        if (interfaceC1262Hm != null) {
            interfaceC1262Hm2 = this.A00.A02;
            interfaceC1262Hm2.ADv();
        }
    }

    @Override // com.facebook.ads.redexgen.core.F4
    public final void ADP() {
        AtomicBoolean atomicBoolean;
        AtomicBoolean atomicBoolean2;
        InterfaceC1262Hm interfaceC1262Hm;
        InterfaceC1262Hm interfaceC1262Hm2;
        atomicBoolean = this.A00.A0B;
        if (!atomicBoolean.get()) {
            atomicBoolean2 = this.A00.A0A;
            if (atomicBoolean2.compareAndSet(false, true)) {
                interfaceC1262Hm = this.A00.A02;
                if (interfaceC1262Hm != null) {
                    interfaceC1262Hm2 = this.A00.A02;
                    interfaceC1262Hm2.ADP();
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.F4
    public final void AFo() {
        InterfaceC1262Hm interfaceC1262Hm;
        InterfaceC1262Hm interfaceC1262Hm2;
        interfaceC1262Hm = this.A00.A02;
        if (interfaceC1262Hm != null) {
            interfaceC1262Hm2 = this.A00.A02;
            interfaceC1262Hm2.AFo();
        }
    }
}
