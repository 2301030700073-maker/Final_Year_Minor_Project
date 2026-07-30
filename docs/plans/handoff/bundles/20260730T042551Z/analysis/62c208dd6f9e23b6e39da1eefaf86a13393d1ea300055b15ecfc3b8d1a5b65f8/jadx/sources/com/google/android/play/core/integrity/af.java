package com.google.android.play.core.integrity;

import android.os.Parcelable;
import android.os.RemoteException;
import defpackage.AbstractRunnableC2749fO;
import defpackage.C2690eO;
import defpackage.C3976xN;
import defpackage.GG;
import defpackage.ZN;

/* loaded from: classes3.dex */
final class af extends AbstractRunnableC2749fO {
    final /* synthetic */ byte[] a;
    final /* synthetic */ Long b;
    final /* synthetic */ Parcelable c;
    final /* synthetic */ GG d;
    final /* synthetic */ IntegrityTokenRequest e;
    final /* synthetic */ aj f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af(aj ajVar, GG gg, byte[] bArr, Long l, Parcelable parcelable, GG gg2, IntegrityTokenRequest integrityTokenRequest) {
        super(gg);
        this.a = bArr;
        this.b = l;
        this.c = parcelable;
        this.d = gg2;
        this.e = integrityTokenRequest;
        this.f = ajVar;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void a(Exception exc) {
        if (exc instanceof C3976xN) {
            super.a(new IntegrityServiceException(-9, exc));
        } else {
            super.a(exc);
        }
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        C2690eO c2690eO;
        try {
            aj ajVar = this.f;
            ((ZN) ajVar.a.f16326do).mo2830strictfp(aj.a(ajVar, this.a, this.b, this.c), new ai(this.f, this.d));
        } catch (RemoteException e) {
            aj ajVar2 = this.f;
            IntegrityTokenRequest integrityTokenRequest = this.e;
            c2690eO = ajVar2.b;
            c2690eO.m6561do(e, "requestIntegrityToken(%s)", integrityTokenRequest);
            this.d.m720for(new IntegrityServiceException(-100, e));
        }
    }
}
