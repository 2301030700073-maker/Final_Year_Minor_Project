package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.cU, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1864cU implements InterfaceC1312Jk {
    public final /* synthetic */ I7 A00;

    public C1864cU(I7 i7) {
        this.A00 = i7;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1312Jk
    public final void AGI() {
        DR dr;
        DR dr2;
        EC ec;
        dr = this.A00.A02;
        if (dr != null) {
            dr2 = this.A00.A02;
            ec = this.A00.A03;
            dr2.A4Z(ec.A8u());
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1312Jk
    public final void AGK(C1314Jm c1314Jm) {
        DR dr;
        DR dr2;
        EC ec;
        DR dr3;
        EC ec2;
        dr = this.A00.A02;
        if (dr == null) {
            return;
        }
        if (c1314Jm == null || !c1314Jm.A00()) {
            dr2 = this.A00.A02;
            ec = this.A00.A03;
            dr2.A4Z(ec.A8u());
        } else {
            dr3 = this.A00.A02;
            ec2 = this.A00.A03;
            dr3.A4Z(ec2.A8v());
        }
    }
}
