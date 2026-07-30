package com.facebook.ads.redexgen.core;

import com.facebook.ads.CacheFlag;
import java.util.EnumSet;

/* renamed from: com.facebook.ads.redexgen.X.Mr, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1389Mr extends AbstractC2458mI {
    public C1389Mr(C2322k1 c2322k1, AnonymousClass37 anonymousClass37) {
        super(c2322k1, anonymousClass37);
    }

    private C2455mF A00(Runnable runnable) {
        return new C2455mF(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final C2S A0I() {
        C2504n3 successfullyLoadedAdapter = (C2504n3) this.A01;
        if (successfullyLoadedAdapter != null) {
            return successfullyLoadedAdapter.A09();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final void A0P() {
        C2504n3 interstitialAdapter = (C2504n3) this.A01;
        interstitialAdapter.A0B();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final void A0R(AnonymousClass23 anonymousClass23, C10548t c10548t, C10528r c10528r, AnonymousClass38 anonymousClass38) {
        C2504n3 c2504n3 = (C2504n3) anonymousClass23;
        C2456mG c2456mG = new C2456mG(this, anonymousClass38, c2504n3);
        A0H().postDelayed(c2456mG, c10548t.A05().A05());
        EnumSet<CacheFlag> enumSet = this.A08.A0B;
        if (enumSet == null) {
            enumSet = CacheFlag.ALL;
        }
        c2504n3.A0A(this.A0B, A00(c2456mG), anonymousClass38, enumSet, this.A08.A04, this.A08.A05, this.A08.A02);
    }
}
