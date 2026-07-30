package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.facebook.ads.redexgen.X.aw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1771aw implements InterfaceC1292Iq {
    public int A00;
    public ValueAnimator A01;
    public EnumC1291Ip A02 = EnumC1291Ip.A04;
    public final int A03;
    public final int A04;
    public final View A05;

    public C1771aw(View view, int i, int i2, int i3) {
        this.A05 = view;
        this.A03 = i;
        this.A00 = i2;
        this.A04 = i3;
    }

    private ValueAnimator A00(int i, int i2, View view) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.setDuration(this.A03);
        ofInt.addUpdateListener(new C1295It(this, view));
        return ofInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(boolean z) {
        if (z) {
            this.A02 = EnumC1291Ip.A05;
            this.A01 = A00(this.A00, this.A04, this.A05);
            this.A01.addListener(new C1294Is(this));
            this.A01.start();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.A05.getLayoutParams();
        layoutParams.height = this.A04;
        this.A05.setLayoutParams(layoutParams);
        D3.A0F(this.A05);
        this.A02 = EnumC1291Ip.A04;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08(boolean z) {
        D3.A0J(this.A05);
        if (z) {
            this.A02 = EnumC1291Ip.A03;
            this.A01 = A00(this.A04, this.A00, this.A05);
            this.A01.addListener(new C1293Ir(this));
            this.A01.start();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.A05.getLayoutParams();
        layoutParams.height = this.A00;
        this.A05.setLayoutParams(layoutParams);
        this.A02 = EnumC1291Ip.A02;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1292Iq
    public final void A40(boolean z, boolean z2) {
        if (z2) {
            A07(z);
        } else {
            A08(z);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1292Iq
    public final EnumC1291Ip A91() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1292Iq
    public final void cancel() {
        if (this.A01 != null) {
            this.A01.cancel();
        }
    }
}
