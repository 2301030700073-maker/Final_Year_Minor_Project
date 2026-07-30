package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.cV, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1865cV extends C1204Fg {
    public final ImageView A00;
    public final C2322k1 A01;

    public C1865cV(C2322k1 c2322k1) {
        super(c2322k1);
        this.A01 = c2322k1;
        setRadius(30);
        this.A00 = new ImageView(c2322k1);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final /* synthetic */ void A00(boolean z) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = -2;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.updateViewLayout(this, layoutParams);
        }
    }

    public void setUrl(String str) {
        AsyncTaskC2117gc asyncTaskC2117gc = new AsyncTaskC2117gc(this.A00, this.A01);
        asyncTaskC2117gc.A04();
        asyncTaskC2117gc.A07(str);
        asyncTaskC2117gc.A06(new FA() { // from class: com.facebook.ads.redexgen.X.cX
            @Override // com.facebook.ads.redexgen.core.FA
            public final void ADM(boolean z) {
                C1865cV.this.A00(z);
            }
        });
    }
}
