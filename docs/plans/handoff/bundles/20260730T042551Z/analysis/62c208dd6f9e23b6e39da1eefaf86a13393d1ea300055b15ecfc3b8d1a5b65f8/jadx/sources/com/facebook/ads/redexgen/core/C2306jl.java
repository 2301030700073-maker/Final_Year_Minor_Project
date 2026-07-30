package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.jl, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2306jl implements BO {
    @Override // com.facebook.ads.redexgen.core.BO
    public final void AHf(Throwable th, Object obj) {
        if (obj instanceof AnonymousClass80) {
            C2322k1 adContext = ((AnonymousClass80) obj).A6c();
            if (adContext != null) {
                adContext.A0Q(th);
                return;
            }
            return;
        }
        if (!(obj instanceof View)) {
            return;
        }
        Context context = ((View) obj).getContext();
        if (!(context instanceof C2322k1)) {
            return;
        }
        ((C2322k1) context).A0Q(th);
    }
}
