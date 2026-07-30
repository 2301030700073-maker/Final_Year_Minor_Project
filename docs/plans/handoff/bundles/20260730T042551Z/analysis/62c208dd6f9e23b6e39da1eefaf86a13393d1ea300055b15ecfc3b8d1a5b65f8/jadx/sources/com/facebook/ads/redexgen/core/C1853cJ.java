package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.cJ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1853cJ extends BY {
    public final /* synthetic */ C1329Kb A00;

    public C1853cJ(C1329Kb c1329Kb) {
        this.A00 = c1329Kb;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C1855cL c1855cL;
        AbstractC1818bk abstractC1818bk;
        C9K c9k;
        C9K c9k2;
        C9K c9k3;
        C9K c9k4;
        C9K c9k5;
        C9K c9k6;
        C9K c9k7;
        C9K c9k8;
        AbstractC1827bt abstractC1827bt;
        C9K c9k9;
        ID id;
        ID id2;
        c1855cL = this.A00.A0C;
        C9J<C9K, C9I> eventBus = c1855cL.getEventBus();
        abstractC1818bk = this.A00.A0E;
        c9k = this.A00.A06;
        c9k2 = this.A00.A08;
        c9k3 = this.A00.A05;
        c9k4 = this.A00.A04;
        c9k5 = this.A00.A03;
        c9k6 = this.A00.A07;
        c9k7 = this.A00.A0A;
        c9k8 = this.A00.A0B;
        abstractC1827bt = this.A00.A0D;
        c9k9 = this.A00.A09;
        eventBus.A04(abstractC1818bk, c9k, c9k2, c9k3, c9k4, c9k5, c9k6, c9k7, c9k8, abstractC1827bt, c9k9);
        id = this.A00.A01;
        if (id != null) {
            id2 = this.A00.A01;
            id2.A06();
        }
    }
}
