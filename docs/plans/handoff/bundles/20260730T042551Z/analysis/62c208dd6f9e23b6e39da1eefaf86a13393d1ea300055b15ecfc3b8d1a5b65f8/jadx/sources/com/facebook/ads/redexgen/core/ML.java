package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* loaded from: assets/audience_network.dex */
public class ML extends C2393lB {
    public final /* synthetic */ MK A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ML(MK mk, Context context) {
        super(context);
        this.A00 = mk;
    }

    @Override // com.facebook.ads.redexgen.core.C2393lB, com.facebook.ads.redexgen.core.C6F
    public final void A0I(View view, C6H c6h, C6D c6d) {
        int[] A0H = this.A00.A0H(((AbstractC2369km) this.A00).A00.getLayoutManager(), view);
        int time = A0H[0];
        int dy = A0H[1];
        int dx = A0M(Math.max(Math.abs(time), Math.abs(dy)));
        if (dx > 0) {
            c6d.A04(time, dy, dx, ((C2393lB) this).A04);
        }
    }

    @Override // com.facebook.ads.redexgen.core.C2393lB
    public final float A0J(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // com.facebook.ads.redexgen.core.C2393lB
    public final int A0L(int i) {
        return Math.min(100, super.A0L(i));
    }
}
