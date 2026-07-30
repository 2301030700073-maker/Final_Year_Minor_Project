package com.facebook.ads.redexgen.core;

import android.widget.ImageView;

/* renamed from: com.facebook.ads.redexgen.X.hC, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2153hC implements InterfaceC1194Ew {
    public final /* synthetic */ C1184Em A00;

    public C2153hC(C1184Em c1184Em) {
        this.A00 = c1184Em;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1194Ew
    public final void ACT(boolean z) {
        boolean z2;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        this.A00.A0D(z);
        z2 = this.A00.A0C;
        if (z2) {
            imageView = this.A00.A00;
            if (imageView != null) {
                imageView2 = this.A00.A00;
                imageView2.setEnabled(z);
                imageView3 = this.A00.A00;
                imageView3.setAlpha(z ? 1.0f : 0.3f);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1194Ew
    public final void ADC(boolean z) {
        boolean z2;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        this.A00.A0D(z);
        z2 = this.A00.A0C;
        if (z2) {
            imageView = this.A00.A02;
            if (imageView != null) {
                imageView2 = this.A00.A02;
                imageView2.setEnabled(z);
                imageView3 = this.A00.A02;
                imageView3.setAlpha(z ? 1.0f : 0.3f);
            }
        }
    }
}
