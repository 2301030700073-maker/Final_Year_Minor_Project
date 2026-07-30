package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.facebook.ads.redexgen.X.Fm, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1210Fm {
    public static final int A00 = D3.A00();

    public static void A00(C2322k1 c2322k1, ViewGroup viewGroup, String str) {
        new AsyncTaskC2117gc(viewGroup, c2322k1).A07(str);
        View view = new View(c2322k1);
        view.setId(A00);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        D3.A0P(view, c2322k1);
        viewGroup.addView(view, 0);
    }
}
