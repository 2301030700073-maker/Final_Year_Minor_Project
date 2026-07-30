package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Kg, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1334Kg extends AbstractC1834c0 {
    public final /* synthetic */ ID A00;

    public C1334Kg(ID id) {
        this.A00 = id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(KZ kz) {
        String str;
        C1370Lr c1370Lr;
        str = this.A00.A05;
        C1371Ls c1371Ls = new C1371Ls(str, kz.A03(), kz.A01(), kz.A02());
        if (kz.A00() >= 0.05d) {
            c1371Ls.A06(kz.A01());
        }
        ID.A00(this.A00);
        c1370Lr = this.A00.A04;
        c1370Lr.A04(c1371Ls);
    }
}
