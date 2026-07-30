package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import defpackage.C2690eO;
import defpackage.GG;
import defpackage.UN;

/* loaded from: classes3.dex */
final class bg extends bm {
    final /* synthetic */ StandardIntegrityManager.StandardIntegrityTokenRequest a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;
    final /* synthetic */ GG d;
    final /* synthetic */ bn e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg(bn bnVar, GG gg, int i, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, GG gg2) {
        super(bnVar, gg);
        this.a = standardIntegrityTokenRequest;
        this.b = j;
        this.c = j2;
        this.d = gg2;
        this.e = bnVar;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        C2690eO c2690eO;
        if (bn.l(this.e)) {
            super.a(new StandardIntegrityException(-2, null));
            return;
        }
        if (bn.k(this.e, 0)) {
            super.a(new StandardIntegrityException(-14, null));
            return;
        }
        try {
            bn bnVar = this.e;
            ((UN) bnVar.a.f16326do).mo2155interface(bn.a(bnVar, this.a, this.b, this.c, 0), new bk(this.e, this.d, this.b));
        } catch (RemoteException e) {
            bn bnVar2 = this.e;
            StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = this.a;
            c2690eO = bnVar2.b;
            c2690eO.m6561do(e, "requestExpressIntegrityToken(%s, %s, %s)", standardIntegrityTokenRequest.requestHash(), this.a.verdictOptOut(), Long.valueOf(this.b));
            this.d.m720for(new StandardIntegrityException(-100, e));
        }
    }
}
