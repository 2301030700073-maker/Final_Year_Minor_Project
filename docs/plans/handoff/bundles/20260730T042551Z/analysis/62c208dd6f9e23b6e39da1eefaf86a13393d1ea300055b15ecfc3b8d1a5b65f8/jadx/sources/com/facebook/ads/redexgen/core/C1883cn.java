package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.cn, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1883cn implements InterfaceC09946k {
    public final /* synthetic */ C09886e A00;
    public final /* synthetic */ C1336Ki A01;

    public C1883cn(C1336Ki c1336Ki, C09886e c09886e) {
        this.A01 = c1336Ki;
        this.A00 = c09886e;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09946k
    public final boolean AA8() {
        boolean A0c;
        boolean A0d;
        if (!this.A01.A0b()) {
            A0c = this.A01.A0c();
            if (A0c) {
                return true;
            }
            A0d = this.A01.A0d();
            return A0d;
        }
        this.A01.A0a(this.A00);
        return true;
    }
}
