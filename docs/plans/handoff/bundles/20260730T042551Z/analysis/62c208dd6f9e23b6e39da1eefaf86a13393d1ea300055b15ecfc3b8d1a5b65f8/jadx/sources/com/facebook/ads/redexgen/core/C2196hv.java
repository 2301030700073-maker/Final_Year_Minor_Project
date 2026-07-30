package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.hv, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2196hv implements InterfaceC1193Ev {
    public final /* synthetic */ C2195hu A00;

    public C2196hv(C2195hu c2195hu) {
        this.A00 = c2195hu;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEM(String str) {
        this.A00.A0C.setProgress(100);
        this.A00.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEO(String str) {
        this.A00.A05 = true;
        this.A00.A0B.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEj(int i) {
        if (this.A00.A05) {
            this.A00.A0C.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEl(String str) {
        this.A00.A0B.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEo() {
        this.A00.A0A.ACY(14);
    }
}
