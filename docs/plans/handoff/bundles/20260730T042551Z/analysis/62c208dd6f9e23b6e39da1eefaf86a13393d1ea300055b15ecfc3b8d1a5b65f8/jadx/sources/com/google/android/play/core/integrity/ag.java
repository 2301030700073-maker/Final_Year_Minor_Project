package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import defpackage.AbstractRunnableC2749fO;
import defpackage.C2690eO;
import defpackage.GG;
import defpackage.ZN;

/* loaded from: classes3.dex */
final class ag extends AbstractRunnableC2749fO {
    final /* synthetic */ Bundle a;
    final /* synthetic */ Activity b;
    final /* synthetic */ GG c;
    final /* synthetic */ int d;
    final /* synthetic */ aj e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ag(aj ajVar, GG gg, Bundle bundle, Activity activity, GG gg2, int i) {
        super(gg);
        this.a = bundle;
        this.b = activity;
        this.c = gg2;
        this.d = i;
        this.e = ajVar;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        C2690eO c2690eO;
        at atVar;
        try {
            aj ajVar = this.e;
            ZN zn = (ZN) ajVar.a.f16326do;
            Bundle bundle = this.a;
            atVar = ajVar.e;
            zn.mo2829do(bundle, atVar.a(this.b, this.c, ajVar.a));
        } catch (RemoteException e) {
            aj ajVar2 = this.e;
            int i = this.d;
            c2690eO = ajVar2.b;
            c2690eO.m6561do(e, "requestAndShowDialog(%s)", Integer.valueOf(i));
            this.c.m720for(new IntegrityServiceException(-100, e));
        }
    }
}
