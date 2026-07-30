package defpackage;

import androidx.work.WorkerParameters;

/* loaded from: classes.dex */
public final class XE implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final String f4475break;

    /* renamed from: do, reason: not valid java name */
    public final GM f4476do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WorkerParameters.Cdo f4477do;

    public XE(GM gm, String str, WorkerParameters.Cdo cdo) {
        this.f4476do = gm;
        this.f4475break = str;
        this.f4477do = cdo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4476do.f1174do.m1367goto(this.f4475break, this.f4477do);
    }
}
