package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.l4, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2386l4 implements InterfaceC09805w {
    public final /* synthetic */ MG A00;

    public C2386l4(MG mg) {
        this.A00 = mg;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09805w
    public final void ACD(C6K c6k) {
        boolean A0A;
        c6k.A0X(true);
        if (c6k.A06 != null && c6k.A07 == null) {
            c6k.A06 = null;
        }
        c6k.A07 = null;
        A0A = c6k.A0A();
        if (!A0A && !this.A00.A1x(c6k.A0H) && c6k.A0c()) {
            this.A00.removeDetachedView(c6k.A0H, false);
        }
    }
}
