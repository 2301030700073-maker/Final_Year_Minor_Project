package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import defpackage.C2690eO;
import defpackage.C3917wN;
import defpackage.GG;
import defpackage.UN;

/* loaded from: classes3.dex */
final class bh extends bm {
    final /* synthetic */ Bundle a;
    final /* synthetic */ Activity b;
    final /* synthetic */ GG c;
    final /* synthetic */ int d;
    final /* synthetic */ bn e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bh(bn bnVar, GG gg, Bundle bundle, Activity activity, GG gg2, int i) {
        super(bnVar, gg);
        this.a = bundle;
        this.b = activity;
        this.c = gg2;
        this.d = i;
        this.e = bnVar;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        C2690eO c2690eO;
        at atVar;
        if (bn.l(this.e)) {
            super.a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            bn bnVar = this.e;
            C3917wN c3917wN = bnVar.a;
            UN un = (UN) c3917wN.f16326do;
            Bundle bundle = this.a;
            atVar = bnVar.e;
            un.mo2153do(bundle, atVar.a(this.b, this.c, c3917wN));
        } catch (RemoteException e) {
            bn bnVar2 = this.e;
            int i = this.d;
            c2690eO = bnVar2.b;
            c2690eO.m6561do(e, "requestAndShowDialog(%s)", Integer.valueOf(i));
            this.c.m720for(new StandardIntegrityException(-100, e));
        }
    }
}
