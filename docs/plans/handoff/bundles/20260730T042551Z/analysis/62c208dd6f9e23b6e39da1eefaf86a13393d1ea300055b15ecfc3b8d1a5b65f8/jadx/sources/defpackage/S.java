package defpackage;

import android.app.Application;
import defpackage.U;

/* loaded from: classes.dex */
public final class S implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ U.Cdo f3256do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Application f3257do;

    public S(Application application, U.Cdo cdo) {
        this.f3257do = application;
        this.f3256do = cdo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3257do.unregisterActivityLifecycleCallbacks(this.f3256do);
    }
}
