package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.jD, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2272jD implements ViewpointAction<C10799t, C10849y> {
    public C2269jA A00;

    public C2272jD(C2269jA c2269jA) {
        this.A00 = c2269jA;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oc != com.instagram.common.viewpoint.core.ViewpointData<com.facebook.ads.internal.impressionsecondchannel.model.Impression, com.facebook.ads.internal.impressionsecondchannel.state.ImpressionState> */
    @Override // com.facebook.ads.redexgen.core.ViewpointAction
    public final void A6H(C2582oc<C10799t, C10849y> c2582oc, InterfaceC2572oP interfaceC2572oP) {
        switch (interfaceC2572oP.A9K(c2582oc)) {
            case A02:
            case A04:
                this.A00.A02(c2582oc, interfaceC2572oP);
                break;
        }
    }
}
