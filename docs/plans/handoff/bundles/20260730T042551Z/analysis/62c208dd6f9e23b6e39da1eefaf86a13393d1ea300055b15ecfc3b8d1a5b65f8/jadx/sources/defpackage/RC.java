package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes3.dex */
public final class RC implements Application.ActivityLifecycleCallbacks {

    /* renamed from: do, reason: not valid java name */
    public static JC f3156do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final RC f3157do = new RC();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f3158do;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C0173Do.m401try(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        C0173Do.m401try(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        C0173Do.m401try(activity, "activity");
        JC jc = f3156do;
        if (jc != null) {
            jc.m1031if(2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C3206kJ c3206kJ;
        C0173Do.m401try(activity, "activity");
        JC jc = f3156do;
        if (jc != null) {
            jc.m1031if(1);
            c3206kJ = C3206kJ.f13965do;
        } else {
            c3206kJ = null;
        }
        if (c3206kJ == null) {
            f3158do = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        C0173Do.m401try(activity, "activity");
        C0173Do.m401try(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        C0173Do.m401try(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        C0173Do.m401try(activity, "activity");
    }
}
