package com.google.android.play.core.integrity;

import android.content.Context;
import defpackage.C2830go;
import defpackage.JN;
import defpackage.MN;

/* loaded from: classes3.dex */
final class w implements aw {
    private final MN a;
    private final MN b;
    private final MN c;
    private final MN d;
    private final MN e;
    private final MN f;

    public w(Context context, v vVar) {
        bc bcVar;
        o oVar;
        o oVar2;
        if (context == null) {
            throw new NullPointerException("instance cannot be null");
        }
        C2830go c2830go = new C2830go(context);
        this.a = c2830go;
        bcVar = bb.a;
        MN m1037do = JN.m1037do(bcVar);
        this.b = m1037do;
        oVar = n.a;
        au auVar = new au(c2830go, oVar);
        this.c = auVar;
        oVar2 = n.a;
        MN m1037do2 = JN.m1037do(new bp(c2830go, m1037do, auVar, oVar2));
        this.d = m1037do2;
        MN m1037do3 = JN.m1037do(new bu(m1037do2));
        this.e = m1037do3;
        this.f = JN.m1037do(new ba(m1037do2, m1037do3));
    }

    @Override // com.google.android.play.core.integrity.aw
    public final StandardIntegrityManager a() {
        return (StandardIntegrityManager) this.f.a();
    }
}
