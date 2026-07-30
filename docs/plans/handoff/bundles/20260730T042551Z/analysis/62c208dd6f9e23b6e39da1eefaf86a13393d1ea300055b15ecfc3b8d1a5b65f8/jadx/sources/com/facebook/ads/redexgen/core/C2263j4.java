package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.j4, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2263j4 extends C9L<String> {
    public final /* synthetic */ A4 A00;
    public final /* synthetic */ C2262j3 A01;

    public C2263j4(C2262j3 c2262j3, A4 a4) {
        this.A01 = c2262j3;
        this.A00 = a4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9L
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A02(String str) {
        A6 a6;
        A6 a62;
        super.A02(str);
        if (this.A00.A0B()) {
            a62 = this.A01.A02;
            a62.A5s();
        } else {
            a6 = this.A01.A02;
            a6.A5r();
        }
    }

    @Override // com.facebook.ads.redexgen.core.C9L
    public final void A01(int i, String str) {
        super.A01(i, str);
    }
}
