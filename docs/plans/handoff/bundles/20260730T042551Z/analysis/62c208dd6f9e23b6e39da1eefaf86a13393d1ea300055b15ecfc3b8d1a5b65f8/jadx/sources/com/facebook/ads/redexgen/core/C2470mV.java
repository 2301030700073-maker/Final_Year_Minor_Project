package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.ArrayList;

/* renamed from: com.facebook.ads.redexgen.X.mV, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2470mV implements C7I {
    public final /* synthetic */ AbstractC2478md A00;
    public final /* synthetic */ InterfaceC09032u A01;
    public final /* synthetic */ C09042v A02;
    public final /* synthetic */ C2322k1 A03;
    public final /* synthetic */ boolean A04;

    public C2470mV(C09042v c09042v, C2322k1 c2322k1, boolean z, AbstractC2478md abstractC2478md, InterfaceC09032u interfaceC09032u) {
        this.A02 = c09042v;
        this.A03 = c2322k1;
        this.A04 = z;
        this.A00 = abstractC2478md;
        this.A01 = interfaceC09032u;
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACF() {
        ArrayList arrayList;
        if (C10729m.A1j(this.A03) && this.A04) {
            arrayList = this.A02.A02;
            arrayList.add(AbstractC1242Gs.A01(this.A03, this.A00, 1, new C2471mW(this)));
        } else {
            this.A01.AC9();
        }
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACG() {
        this.A01.AC8(AdError.CACHE_ERROR);
    }
}
