package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import defpackage.C2690eO;
import defpackage.GG;

/* loaded from: classes3.dex */
final class bk extends bi {
    final /* synthetic */ bn c;
    private final C2690eO d;
    private final long e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk(bn bnVar, GG gg, long j) {
        super(bnVar, gg);
        this.c = bnVar;
        this.d = new C2690eO("OnRequestIntegrityTokenCallback");
        this.e = j;
    }

    @Override // com.google.android.play.core.integrity.bi, defpackage.WN
    public final void c(Bundle bundle) {
        k kVar;
        String str;
        super.c(bundle);
        this.d.m6563if("onRequestExpressIntegrityToken", new Object[0]);
        kVar = this.c.f;
        ApiException a = kVar.a(bundle);
        if (a != null) {
            this.a.m720for(a);
            return;
        }
        long j = bundle.getLong("request.token.sid");
        str = this.c.c;
        bj bjVar = new bj(this, str, j);
        GG gg = this.a;
        b bVar = new b();
        bVar.b(bundle.getString("token"));
        bVar.a(bjVar);
        gg.m722new(bVar.c());
    }
}
