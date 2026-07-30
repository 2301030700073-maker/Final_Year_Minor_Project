package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import defpackage.C3917wN;
import defpackage.GG;
import defpackage.NN;

/* loaded from: classes3.dex */
final class at {
    private final NN a;
    private final NN b;

    public at(NN nn, NN nn2) {
        this.a = nn;
        this.b = nn2;
    }

    public final as a(Activity activity, GG gg, C3917wN c3917wN) {
        Context context = (Context) this.a.a();
        context.getClass();
        k kVar = (k) this.b.a();
        kVar.getClass();
        activity.getClass();
        c3917wN.getClass();
        return new as(context, kVar, activity, gg, c3917wN);
    }
}
