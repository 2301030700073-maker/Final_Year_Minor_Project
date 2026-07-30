package com.facebook.ads.redexgen.core;

import android.os.Looper;
import com.facebook.ads.AdError;

/* renamed from: com.facebook.ads.redexgen.X.Wr, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1632Wr implements TO {
    @Override // com.facebook.ads.redexgen.core.TO
    public final /* synthetic */ TN AGB(TJ tj, ZM zm) {
        return TL.A00(this, tj, zm);
    }

    @Override // com.facebook.ads.redexgen.core.TO
    public final /* synthetic */ void AGC() {
    }

    @Override // com.facebook.ads.redexgen.core.TO
    public final TA A32(TJ tj, ZM zm) {
        if (zm.A0O == null) {
            return null;
        }
        return new C1630Wp(new T8(new C1563Tt(1), AdError.MEDIAVIEW_MISSING_ERROR_CODE));
    }

    @Override // com.facebook.ads.redexgen.core.TO
    public final int A7M(ZM zm) {
        return zm.A0O != null ? 1 : 0;
    }

    @Override // com.facebook.ads.redexgen.core.TO
    public final void AIk(Looper looper, RK rk) {
    }
}
