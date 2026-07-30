package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.cc, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1872cc extends AbstractC09745q<C1870ca> {
    public final int A00;
    public final C2322k1 A01;
    public final ViewOnClickListenerC2111gW A02;
    public final List<String> A03;

    public C1872cc(C2322k1 c2322k1, List<String> screenshotUrls, int i, ViewOnClickListenerC2111gW viewOnClickListenerC2111gW) {
        this.A03 = screenshotUrls;
        this.A00 = i;
        this.A01 = c2322k1;
        this.A02 = viewOnClickListenerC2111gW;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final C1870ca A0D(ViewGroup viewGroup, int i) {
        C1871cb c1871cb = new C1871cb(this.A01);
        if (C10729m.A1B(this.A01)) {
            c1871cb.setOnClickListener(new I6(this));
        }
        return new C1870ca(c1871cb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    /* renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final void A0E(C1870ca c1870ca, int i) {
        String str = this.A03.get(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int startSpacing = this.A00 * 4;
        if (i != 0) {
            startSpacing = this.A00;
        }
        marginLayoutParams.setMargins(startSpacing, 0, i >= A0C() + (-1) ? this.A00 * 4 : this.A00, 0);
        c1870ca.A0j().setLayoutParams(marginLayoutParams);
        c1870ca.A0j().A00(str);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    public final int A0C() {
        return this.A03.size();
    }
}
