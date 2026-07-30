package com.google.android.play.core.integrity;

import android.content.Context;
import defpackage.AbstractRunnableC2749fO;
import defpackage.C4035yN;
import defpackage.GG;

/* loaded from: classes3.dex */
final class be extends AbstractRunnableC2749fO {
    final /* synthetic */ Context a;
    final /* synthetic */ bn b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be(bn bnVar, GG gg, Context context) {
        super(gg);
        this.a = context;
        this.b = bnVar;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        GG gg;
        Context context = this.a;
        gg = this.b.d;
        gg.m722new(Integer.valueOf(C4035yN.m8716do(context)));
    }
}
