package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.n7, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2508n7 extends BY {
    public final /* synthetic */ C2507n6 A00;
    public final /* synthetic */ LI A01;

    public C2508n7(C2507n6 c2507n6, LI li) {
        this.A00 = c2507n6;
        this.A01 = li;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        JL jl;
        JL jl2;
        JL jl3;
        this.A00.A00.A0A();
        jl = this.A00.A00.A0C;
        if (jl != null) {
            LI li = this.A01;
            jl2 = this.A00.A00.A0C;
            li.setAdViewabilityChecker(jl2);
            jl3 = this.A00.A00.A0C;
            jl3.A0U();
        }
    }
}
