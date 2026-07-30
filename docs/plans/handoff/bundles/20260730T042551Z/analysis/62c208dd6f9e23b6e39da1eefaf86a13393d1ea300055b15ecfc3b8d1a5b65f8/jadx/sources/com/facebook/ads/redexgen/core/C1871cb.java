package com.facebook.ads.redexgen.core;

import android.widget.ImageView;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.cb, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1871cb extends C1204Fg {
    public final ImageView A00;
    public final C2322k1 A01;

    public C1871cb(C2322k1 c2322k1) {
        super(c2322k1);
        this.A01 = c2322k1;
        this.A00 = new ImageView(c2322k1);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        AsyncTaskC2117gc downloadImageTask = new AsyncTaskC2117gc(this.A00, this.A01);
        downloadImageTask.A04();
        downloadImageTask.A07(str);
    }
}
