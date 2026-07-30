package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.os.Bundle;

/* renamed from: com.facebook.ads.redexgen.X.dU, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1926dU implements HU {
    public final /* synthetic */ EC A00;
    public final /* synthetic */ C1925dT A01;
    public final /* synthetic */ C1264Ho A02;

    public C1926dU(C1925dT c1925dT, C1264Ho c1264Ho, EC ec) {
        this.A01 = c1925dT;
        this.A02 = c1264Ho;
        this.A00 = ec;
    }

    @Override // com.facebook.ads.redexgen.core.HU
    public final void AHe() {
        DS A05;
        Intent intent;
        DS ds;
        Intent intent2;
        Bundle bundle;
        this.A01.A09();
        C1925dT c1925dT = this.A01;
        A05 = this.A01.A05(this.A02, this.A00);
        c1925dT.A03 = A05;
        intent = this.A01.A01;
        if (intent != null && this.A01.A00 != null) {
            ds = this.A01.A03;
            intent2 = this.A01.A01;
            bundle = this.A01.A02;
            ds.AAj(intent2, bundle, this.A01.A00);
        }
    }
}
