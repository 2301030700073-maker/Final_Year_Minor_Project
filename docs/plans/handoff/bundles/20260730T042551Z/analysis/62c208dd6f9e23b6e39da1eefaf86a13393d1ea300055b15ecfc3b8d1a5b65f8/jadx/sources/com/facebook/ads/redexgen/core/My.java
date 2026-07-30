package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class My extends AbstractC2479me {
    public final C2322k1 A00;

    public My(C0X c0x, List<C2238ie> list, C2322k1 c2322k1) {
        super(c0x, list, c2322k1);
        this.A00 = c2322k1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C2192hr A0D(ViewGroup viewGroup, int i) {
        return new C2192hr(new C1149Dd(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A0I, reason: merged with bridge method [inline-methods] */
    public final void A0E(C2192hr c2192hr, int i) {
        super.A0E(c2192hr, i);
        C1149Dd c1149Dd = (C1149Dd) c2192hr.A0j();
        E0 imageView = (E0) c1149Dd.getImageCardView();
        imageView.setImageDrawable(null);
        A0G(imageView, i);
        C2238ie childAd = ((AbstractC2479me) this).A01.get(i);
        childAd.A12().A0L(this.A00);
        childAd.A1O(c1149Dd, c1149Dd);
    }
}
