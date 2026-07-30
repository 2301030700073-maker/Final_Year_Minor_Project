package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

/* renamed from: com.facebook.ads.redexgen.X.oH, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2564oH {
    public static C2564oH A03 = null;
    public final ViewpointQeConfig A00;
    public final ViewpointRegistry A01;
    public final C2574oR A02;

    public C2564oH(ViewpointQeConfig viewpointQeConfig, AbstractC2580oa abstractC2580oa, C2574oR c2574oR, ViewpointRegistry viewpointRegistry) {
        this.A00 = viewpointQeConfig;
        this.A01 = viewpointRegistry;
        this.A02 = c2574oR;
        abstractC2580oa.A02(new C1402Nf(c2574oR));
    }

    public static C2564oH A00(ViewpointQeConfig viewpointQeConfig, AbstractC2580oa abstractC2580oa, InterfaceC2585of interfaceC2585of, InterfaceC1403Nh interfaceC1403Nh) {
        C2564oH localsTestInstance = A03;
        if (localsTestInstance != null) {
            return localsTestInstance;
        }
        ViewpointRegistry viewpointRegistry = new ViewpointRegistry(viewpointQeConfig);
        return new C2564oH(viewpointQeConfig, abstractC2580oa, new C2574oR(viewpointQeConfig, interfaceC2585of, C1725a9.A00, interfaceC1403Nh, viewpointRegistry, new Handler(Looper.getMainLooper())), viewpointRegistry);
    }

    public final void A01(InterfaceC2579oZ interfaceC2579oZ) {
        this.A02.A0E(interfaceC2579oZ);
    }

    public final void A02(InterfaceC2576oW interfaceC2576oW) {
        this.A02.A0F(interfaceC2576oW);
    }

    public final void A03(DspViewableNode dspViewableNode) {
        A04(dspViewableNode, null);
    }

    public final void A04(DspViewableNode dspViewableNode, C2586oi c2586oi) {
        if (this.A00.A00 && c2586oi != null) {
            this.A01.A06(dspViewableNode, c2586oi);
        } else {
            this.A01.A05(dspViewableNode);
        }
    }

    public final void A05(DspViewableNode dspViewableNode, C2586oi c2586oi, C2582oc c2582oc) {
        if (this.A00.A00 && c2586oi != null) {
            this.A01.A07(dspViewableNode, c2586oi, c2582oc);
        } else {
            this.A01.A08(dspViewableNode, c2582oc);
        }
    }

    public final void A06(DspViewableNode dspViewableNode, C2582oc c2582oc) {
        A05(dspViewableNode, null, c2582oc);
    }
}
