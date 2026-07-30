package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Op, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1434Op implements InterfaceC2218iJ {
    public final /* synthetic */ AbstractC1437Os A00;

    public C1434Op(final AbstractC1437Os val$separatorMatcher) {
        this.A00 = val$separatorMatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.4a] */
    @Override // com.facebook.ads.redexgen.core.InterfaceC2218iJ
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C09354a AAa(final C2219iK splitter, final CharSequence toSplit) {
        return new Oo(splitter, toSplit) { // from class: com.facebook.ads.redexgen.X.4a
            @Override // com.facebook.ads.redexgen.core.Oo
            public final int A04(int separatorPosition) {
                return separatorPosition + 1;
            }

            @Override // com.facebook.ads.redexgen.core.Oo
            public final int A05(int start) {
                return C1434Op.this.A00.A08(this.A03, start);
            }
        };
    }
}
