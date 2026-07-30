package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.view.FullScreenAdToolbar;

/* renamed from: com.facebook.ads.redexgen.X.eA, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1967eA implements HI {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C1956dz A01;

    public C1967eA(C1956dz c1956dz, int i) {
        this.A01 = c1956dz;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.core.HI
    public final void ACS() {
        this.A01.A0S(false, this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.HI
    public final void ACr(int i) {
        C1956dz.A02(this.A01, i);
    }

    @Override // com.facebook.ads.redexgen.core.HI
    public final void ADB(float f) {
        boolean z;
        z = this.A01.A08;
        if (!z) {
            this.A01.A0H(f);
        }
    }

    @Override // com.facebook.ads.redexgen.core.HI
    public final void AF6(boolean z) {
        this.A01.A0R(z);
    }

    @Override // com.facebook.ads.redexgen.core.HI
    public final void AFY(String str) {
        C2322k1 c2322k1;
        DR dr;
        EC ec;
        c2322k1 = this.A01.A0D;
        c2322k1.A0F().A3Q(str);
        dr = this.A01.A0H;
        ec = this.A01.A0J;
        dr.A4Z(ec.A7r());
        this.A01.A0I(3);
    }

    @Override // com.facebook.ads.redexgen.core.HI
    public final void AJh() {
        FullScreenAdToolbar fullScreenAdToolbar;
        FullScreenAdToolbar fullScreenAdToolbar2;
        this.A01.setUnskippableSecondsComplete(false);
        fullScreenAdToolbar = this.A01.A0I;
        fullScreenAdToolbar.setProgressImmediate(0.0f);
        fullScreenAdToolbar2 = this.A01.A0I;
        fullScreenAdToolbar2.setToolbarActionMode(2);
    }

    @Override // com.facebook.ads.redexgen.core.HI
    public final void AJi(float f) {
        FullScreenAdToolbar fullScreenAdToolbar;
        fullScreenAdToolbar = this.A01.A0I;
        fullScreenAdToolbar.setProgress(100.0f * f);
    }
}
