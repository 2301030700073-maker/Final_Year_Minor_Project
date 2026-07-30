package com.google.android.play.core.integrity;

import android.content.Context;
import defpackage.C2830go;
import defpackage.JN;
import defpackage.MN;

/* loaded from: classes3.dex */
final class s {
    private final MN a;
    private final MN b;
    private final MN c;
    private final MN d;
    private final MN e;

    public s(Context context, r rVar) {
        ad adVar;
        m mVar;
        m mVar2;
        if (context == null) {
            throw new NullPointerException("instance cannot be null");
        }
        C2830go c2830go = new C2830go(context);
        this.a = c2830go;
        adVar = ac.a;
        MN m1037do = JN.m1037do(adVar);
        this.b = m1037do;
        mVar = l.a;
        au auVar = new au(c2830go, mVar);
        this.c = auVar;
        mVar2 = l.a;
        MN m1037do2 = JN.m1037do(new al(c2830go, m1037do, auVar, mVar2));
        this.d = m1037do2;
        this.e = JN.m1037do(new ab(m1037do2));
    }

    public final IntegrityManager a() {
        return (IntegrityManager) this.e.a();
    }
}
