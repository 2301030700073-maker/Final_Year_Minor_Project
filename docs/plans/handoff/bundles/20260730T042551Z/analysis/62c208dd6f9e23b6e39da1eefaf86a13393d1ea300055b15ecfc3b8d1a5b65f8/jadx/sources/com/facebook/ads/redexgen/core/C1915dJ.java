package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.dJ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1915dJ implements GX {
    public final /* synthetic */ C1914dI A00;

    public C1915dJ(C1914dI c1914dI) {
        this.A00 = c1914dI;
    }

    @Override // com.facebook.ads.redexgen.core.GX
    public final void AFe(View view) {
        if (this.A00.A09) {
            this.A00.A07 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.core.GX
    public final void AFg(View view) {
        AbstractC2068fo abstractC2068fo = (AbstractC2068fo) view;
        abstractC2068fo.A1D();
        if (this.A00.A09) {
            this.A00.A07 = true;
        }
        if (this.A00.A04.A0Z() && ((Integer) abstractC2068fo.getTag(-1593835536)).intValue() == 0) {
            this.A00.A04.A0U();
        }
    }
}
