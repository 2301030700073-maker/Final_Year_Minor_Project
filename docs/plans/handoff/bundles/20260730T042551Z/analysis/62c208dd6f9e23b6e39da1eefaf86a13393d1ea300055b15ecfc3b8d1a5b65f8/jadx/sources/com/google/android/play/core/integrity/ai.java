package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import defpackage.AbstractBinderC0689aO;
import defpackage.C2690eO;
import defpackage.GG;

/* loaded from: classes3.dex */
final class ai extends AbstractBinderC0689aO {
    final /* synthetic */ aj a;
    private final C2690eO b = new C2690eO("OnRequestIntegrityTokenCallback");
    private final GG c;

    public ai(aj ajVar, GG gg) {
        this.a = ajVar;
        this.c = gg;
    }

    @Override // defpackage.InterfaceC0749bO
    public final void b(Bundle bundle) {
        k kVar;
        String str;
        this.a.a.m8572new(this.c);
        this.b.m6563if("onRequestIntegrityToken", new Object[0]);
        kVar = this.a.f;
        ApiException a = kVar.a(bundle);
        if (a != null) {
            this.c.m720for(a);
            return;
        }
        String string = bundle.getString("token");
        if (string == null) {
            this.c.m720for(new IntegrityServiceException(-100, null));
            return;
        }
        long j = bundle.getLong("request.token.sid");
        str = this.a.c;
        ah ahVar = new ah(this, str, j);
        GG gg = this.c;
        a aVar = new a();
        aVar.b(string);
        aVar.a(ahVar);
        gg.m722new(aVar.c());
    }
}
