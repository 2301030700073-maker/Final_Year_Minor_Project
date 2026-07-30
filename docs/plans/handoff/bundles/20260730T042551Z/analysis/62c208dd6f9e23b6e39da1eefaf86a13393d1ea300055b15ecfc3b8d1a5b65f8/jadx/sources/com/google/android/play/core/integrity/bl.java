package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import defpackage.C2690eO;
import defpackage.GG;

/* loaded from: classes3.dex */
final class bl extends bi {
    final /* synthetic */ bn c;
    private final C2690eO d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bl(bn bnVar, GG gg) {
        super(bnVar, gg);
        this.c = bnVar;
        this.d = new C2690eO("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.bi, defpackage.WN
    public final void e(Bundle bundle) {
        k kVar;
        super.e(bundle);
        this.d.m6563if("onWarmUpExpressIntegrityToken", new Object[0]);
        kVar = this.c.f;
        ApiException a = kVar.a(bundle);
        if (a != null) {
            this.a.m720for(a);
        } else {
            this.a.m722new(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
