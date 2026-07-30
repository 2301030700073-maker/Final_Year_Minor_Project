package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.hx, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2198hx implements InterfaceC09946k {
    public final /* synthetic */ C2195hu A00;

    public C2198hx(C2195hu c2195hu) {
        this.A00 = c2195hu;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09946k
    public final boolean AA8() {
        if (this.A00.A0E.canGoBack()) {
            this.A00.A0E.goBack();
            return true;
        }
        return false;
    }
}
