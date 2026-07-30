package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: com.facebook.ads.redexgen.X.av, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1770av implements InterfaceC1292Iq {
    public ViewPropertyAnimator A00;
    public EnumC1291Ip A01 = EnumC1291Ip.A04;
    public final int A02;
    public final View A03;
    public final boolean A04;

    public C1770av(View view, int i, boolean z) {
        this.A02 = i;
        this.A03 = view;
        this.A04 = z;
    }

    private void A04(boolean z) {
        this.A01 = EnumC1291Ip.A03;
        if (this.A04) {
            D3.A0J(this.A03);
        }
        if (!z) {
            this.A03.setAlpha(1.0f);
            this.A01 = EnumC1291Ip.A02;
        } else {
            this.A00 = this.A03.animate().alpha(1.0f).setDuration(this.A02).setListener(new C1296Iu(this));
        }
    }

    private void A05(boolean z) {
        this.A01 = EnumC1291Ip.A05;
        if (!z) {
            this.A03.setAlpha(0.0f);
            this.A01 = EnumC1291Ip.A04;
        } else {
            this.A00 = this.A03.animate().alpha(0.0f).setDuration(this.A02).setListener(new C1297Iv(this));
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1292Iq
    public final void A40(boolean z, boolean z2) {
        if (z2) {
            A05(z);
        } else {
            A04(z);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1292Iq
    public final EnumC1291Ip A91() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1292Iq
    public final void cancel() {
        this.A03.clearAnimation();
        if (this.A00 != null) {
            this.A00.cancel();
        }
    }
}
