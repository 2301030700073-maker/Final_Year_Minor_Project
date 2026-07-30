package com.facebook.ads.redexgen.core;

import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;

/* loaded from: assets/audience_network.dex */
public final class M0 implements InterfaceC2237id {
    public NativeAdBase A00;
    public NativeAdListener A01;

    public M0(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        this.A01 = nativeAdListener;
        this.A00 = nativeAdBase;
    }

    @Override // com.facebook.ads.redexgen.core.AM
    public final void AC6() {
        BP.A00(new C2233iZ(this));
    }

    @Override // com.facebook.ads.redexgen.core.AM
    public final void ACA() {
        BP.A00(new C2234ia(this));
    }

    @Override // com.facebook.ads.redexgen.core.AM
    public final void AD4(C1091Ag c1091Ag) {
        BP.A00(new C2236ic(this, c1091Ag));
    }

    @Override // com.facebook.ads.redexgen.core.AM
    public final void AE0() {
        BP.A00(new C2232iY(this));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2237id
    public final void AE5() {
        BP.A00(new C2235ib(this));
    }
}
