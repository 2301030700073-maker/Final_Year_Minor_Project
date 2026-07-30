package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.ArrayList;

/* renamed from: com.facebook.ads.redexgen.X.Yt, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1685Yt implements InterfaceC1398Nb {
    public final P3 A00;
    public static final C1685Yt A02 = new QE().A04();
    public static final String A03 = AbstractC2094gE.A0h(0);
    public static final InterfaceC1397Na<C1685Yt> A01 = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.Yu
        @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
        public final InterfaceC1398Nb A6V(Bundle bundle) {
            C1685Yt A012;
            A012 = C1685Yt.A01(bundle);
            return A012;
        }
    };

    public C1685Yt(P3 p3) {
        this.A00 = p3;
    }

    public static C1685Yt A01(Bundle bundle) {
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(A03);
        if (integerArrayList == null) {
            return A02;
        }
        QE qe = new QE();
        for (int i = 0; i < integerArrayList.size(); i++) {
            qe.A00(integerArrayList.get(i).intValue());
        }
        return qe.A04();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1685Yt)) {
            return false;
        }
        return this.A00.equals(((C1685Yt) obj).A00);
    }

    public final int hashCode() {
        return this.A00.hashCode();
    }
}
