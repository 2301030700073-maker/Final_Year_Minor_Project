package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* renamed from: com.facebook.ads.redexgen.X.Ox, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1442Ox implements InterfaceC1690Yy {
    public final /* synthetic */ C0T A00;

    public C1442Ox(C0T c0t, InterfaceC1691Yz interfaceC1691Yz) {
        this.A00 = c0t;
        interfaceC1691Yz.AIg(this, new Handler());
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1690Yy
    public final void ADE(InterfaceC1691Yz interfaceC1691Yz, long j, long j2) {
        if (this != this.A00.A00) {
            return;
        }
        this.A00.A27();
    }
}
