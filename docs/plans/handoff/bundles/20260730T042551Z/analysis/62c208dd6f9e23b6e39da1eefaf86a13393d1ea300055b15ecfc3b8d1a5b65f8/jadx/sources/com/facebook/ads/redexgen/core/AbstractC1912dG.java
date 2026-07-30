package com.facebook.ads.redexgen.core;

import com.google.android.exoplayer2.Timeline;

/* renamed from: com.facebook.ads.redexgen.X.dG, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1912dG {
    public InterfaceC1911dF A00;
    public InterfaceC1924dS A01;

    public abstract boolean A0Y();

    public abstract C1913dH A0b(InterfaceC1477Qi[] interfaceC1477QiArr, C1486Qs c1486Qs, R5 r5, Timeline timeline) throws EK;

    public abstract void A0c(Object obj);

    public final InterfaceC1924dS A00() {
        return (InterfaceC1924dS) AbstractC2011es.A02(this.A01);
    }

    public final void A01() {
        if (this.A00 != null) {
            this.A00.AFL();
        }
    }

    public final void A02(InterfaceC1911dF interfaceC1911dF, InterfaceC1924dS interfaceC1924dS) {
        this.A00 = interfaceC1911dF;
        this.A01 = interfaceC1924dS;
    }
}
