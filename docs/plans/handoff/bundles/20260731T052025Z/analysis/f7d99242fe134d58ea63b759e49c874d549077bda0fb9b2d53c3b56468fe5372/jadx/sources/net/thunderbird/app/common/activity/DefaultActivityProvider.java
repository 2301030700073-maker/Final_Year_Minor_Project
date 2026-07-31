package net.thunderbird.app.common.activity;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import java.lang.ref.WeakReference;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultActivityProvider implements Application.ActivityLifecycleCallbacks, DefaultLifecycleObserver {
    public volatile WeakReference lastResumedRef;
    public final Logger logger;

    public DefaultActivityProvider(Application application, Logger logger) {
        this.logger = logger;
        ProcessLifecycleOwner.newInstance.registry.addObserver(this);
        application.registerActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        activity.getClass();
        WeakReference weakReference = this.lastResumedRef;
        if ((weakReference != null ? (Activity) weakReference.get() : null) == activity) {
            Sink$CC.debug$default(this.logger, "DefaultActivityProvider", null, new DefaultActivityProvider$$ExternalSyntheticLambda0(activity, 2), 2);
            this.lastResumedRef = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        activity.getClass();
        WeakReference weakReference = this.lastResumedRef;
        if ((weakReference != null ? (Activity) weakReference.get() : null) == activity) {
            Sink$CC.debug$default(this.logger, "DefaultActivityProvider", null, new DefaultActivityProvider$$ExternalSyntheticLambda0(activity, 0), 2);
            this.lastResumedRef = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        activity.getClass();
        Sink$CC.debug$default(this.logger, "DefaultActivityProvider", null, new DefaultActivityProvider$$ExternalSyntheticLambda0(activity, 1), 2);
        this.lastResumedRef = new WeakReference(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        activity.getClass();
        bundle.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        activity.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        Sink$CC.debug$default(this.logger, "DefaultActivityProvider", null, new UtcOffsetJvmKt$$ExternalSyntheticLambda0(26), 2);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        Sink$CC.debug$default(this.logger, "DefaultActivityProvider", null, new UtcOffsetJvmKt$$ExternalSyntheticLambda0(27), 2);
        this.lastResumedRef = null;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
    }
}
