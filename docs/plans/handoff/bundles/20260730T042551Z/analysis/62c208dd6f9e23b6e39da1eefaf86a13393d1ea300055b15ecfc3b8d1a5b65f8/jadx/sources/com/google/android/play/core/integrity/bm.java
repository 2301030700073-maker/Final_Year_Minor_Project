package com.google.android.play.core.integrity;

import defpackage.AbstractRunnableC2749fO;
import defpackage.C3976xN;
import defpackage.GG;

/* loaded from: classes3.dex */
abstract class bm extends AbstractRunnableC2749fO {
    final /* synthetic */ bn f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm(bn bnVar, GG gg) {
        super(gg);
        this.f = bnVar;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void a(Exception exc) {
        if (!(exc instanceof C3976xN)) {
            super.a(exc);
        } else if (bn.l(this.f)) {
            super.a(new StandardIntegrityException(-2, exc));
        } else {
            super.a(new StandardIntegrityException(-9, exc));
        }
    }
}
