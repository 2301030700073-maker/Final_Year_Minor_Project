package com.google.android.play.core.integrity;

import android.os.RemoteException;
import defpackage.C2690eO;
import defpackage.GG;
import defpackage.UN;

/* loaded from: classes3.dex */
final class bf extends bm {
    final /* synthetic */ long a;
    final /* synthetic */ GG b;
    final /* synthetic */ bn c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf(bn bnVar, GG gg, int i, long j, GG gg2) {
        super(bnVar, gg);
        this.a = j;
        this.b = gg2;
        this.c = bnVar;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        C2690eO c2690eO;
        if (bn.l(this.c)) {
            super.a(new StandardIntegrityException(-2, null));
            return;
        }
        if (bn.k(this.c, 0)) {
            super.a(new StandardIntegrityException(-14, null));
            return;
        }
        try {
            bn bnVar = this.c;
            ((UN) bnVar.a.f16326do).mo2154finally(bn.b(bnVar, this.a, 0), new bl(this.c, this.b));
        } catch (RemoteException e) {
            bn bnVar2 = this.c;
            long j = this.a;
            c2690eO = bnVar2.b;
            c2690eO.m6561do(e, "warmUpIntegrityToken(%s)", Long.valueOf(j));
            this.b.m720for(new StandardIntegrityException(-100, e));
        }
    }
}
