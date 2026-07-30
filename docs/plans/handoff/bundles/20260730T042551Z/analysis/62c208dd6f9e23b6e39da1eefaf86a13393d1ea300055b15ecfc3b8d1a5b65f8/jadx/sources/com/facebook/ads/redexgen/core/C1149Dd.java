package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.internal.api.AdNativeComponentView;

/* renamed from: com.facebook.ads.redexgen.X.Dd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1149Dd extends AdNativeComponentView {
    public static final int A01 = (int) (CP.A02 * 1.0f);
    public final ImageView A00;

    public C1149Dd(C2322k1 c2322k1) {
        super(c2322k1);
        this.A00 = new E0(c2322k1);
        this.A00.setScaleType(ImageView.ScaleType.CENTER_CROP);
        CU.A04(this.A00, CU.A0B);
        addView(this.A00, new ViewGroup.LayoutParams(-1, -1));
        D3.A0K(this.A00, -2130706433);
        setPadding(A01, A01, A01, A01);
    }

    @Override // com.facebook.ads.internal.api.AdNativeComponentView
    public View getAdContentsView() {
        return this.A00;
    }

    public ImageView getImageCardView() {
        return this.A00;
    }
}
