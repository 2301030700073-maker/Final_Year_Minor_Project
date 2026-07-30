package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Mz, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1396Mz extends AbstractC2479me {
    public final C2322k1 A00;
    public final AW A01;

    public C1396Mz(C2322k1 c2322k1, C0X c0x, List<C2238ie> list, AW aw) {
        super(c0x, list, c2322k1);
        this.A00 = c2322k1;
        this.A01 = aw == null ? new AW() : aw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C2192hr A0D(ViewGroup viewGroup, int i) {
        return new C2192hr(new DX(this.A00, this.A01));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A0I */
    public final void A0E(C2192hr c2192hr, int i) {
        super.A0E(c2192hr, i);
        DX dx = (DX) c2192hr.A0j();
        A0G(dx.getImageCardView(), i);
        if (((AbstractC2479me) this).A01.get(i) != null) {
            dx.setTitle(((AbstractC2479me) this).A01.get(i).getAdHeadline());
            dx.setSubtitle(((AbstractC2479me) this).A01.get(i).getAdLinkDescription());
            dx.setButtonText(((AbstractC2479me) this).A01.get(i).getAdCallToAction());
        }
        C2238ie c2238ie = ((AbstractC2479me) this).A01.get(i);
        ArrayList arrayList = new ArrayList();
        arrayList.add(dx);
        c2238ie.A1P(dx, dx, arrayList);
    }
}
