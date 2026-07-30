package defpackage;

import defpackage.U;

/* loaded from: classes.dex */
public final class Q implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ U.Cdo f2853do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2854do;

    public Q(U.Cdo cdo, Object obj) {
        this.f2853do = cdo;
        this.f2854do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2853do.f3801do = this.f2854do;
    }
}
