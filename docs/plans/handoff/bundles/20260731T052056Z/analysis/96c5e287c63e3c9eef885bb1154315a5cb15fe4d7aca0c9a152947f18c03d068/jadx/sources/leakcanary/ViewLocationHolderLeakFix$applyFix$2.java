package leakcanary;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import java.lang.reflect.Proxy;
import kotlin.TypeCastException;
import leakcanary.internal.FragmentExtensionsKt;
import leakcanary.internal.FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;
import leakcanary.internal.ObjectsKt$NO_OP_HANDLER$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewLocationHolderLeakFix$applyFix$2 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ Application.ActivityLifecycleCallbacks $$delegate_0;
    public final /* synthetic */ Object $application;
    public final /* synthetic */ int $r8$classId = 0;

    public ViewLocationHolderLeakFix$applyFix$2(Application application) {
        this.$application = application;
        Object newProxyInstance = Proxy.newProxyInstance(Application.ActivityLifecycleCallbacks.class.getClassLoader(), new Class[]{Application.ActivityLifecycleCallbacks.class}, ObjectsKt$NO_OP_HANDLER$1.INSTANCE);
        if (newProxyInstance == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
        }
        this.$$delegate_0 = (Application.ActivityLifecycleCallbacks) newProxyInstance;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        switch (this.$r8$classId) {
            case 0:
                activity.getClass();
                AndroidLeakFixes$Companion$onDecorViewReady$1 androidLeakFixes$Companion$onDecorViewReady$1 = new AndroidLeakFixes$Companion$onDecorViewReady$1(22, this);
                if (((Boolean) FragmentExtensionsKt.hasAndroidXFragmentActivity$delegate.getValue()).booleanValue() && (activity instanceof AppCompatActivity)) {
                    ((AppCompatActivity) activity).getSupportFragmentManager().registerFragmentLifecycleCallbacks(new FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1(0, androidLeakFixes$Companion$onDecorViewReady$1), true);
                    break;
                }
                break;
            default:
                activity.getClass();
                this.$$delegate_0.onActivityCreated(activity, bundle);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        switch (this.$r8$classId) {
            case 0:
                activity.getClass();
                this.$$delegate_0.onActivityDestroyed(activity);
                break;
            default:
                activity.getClass();
                ((AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2) this.$application).invoke(activity);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        int i = this.$r8$classId;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.$$delegate_0;
        switch (i) {
            case 0:
                activity.getClass();
                activityLifecycleCallbacks.onActivityPaused(activity);
                break;
            default:
                activity.getClass();
                activityLifecycleCallbacks.onActivityPaused(activity);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        int i = this.$r8$classId;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.$$delegate_0;
        switch (i) {
            case 0:
                activity.getClass();
                activityLifecycleCallbacks.onActivityResumed(activity);
                break;
            default:
                activity.getClass();
                activityLifecycleCallbacks.onActivityResumed(activity);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        int i = this.$r8$classId;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.$$delegate_0;
        switch (i) {
            case 0:
                activity.getClass();
                bundle.getClass();
                activityLifecycleCallbacks.onActivitySaveInstanceState(activity, bundle);
                break;
            default:
                activity.getClass();
                bundle.getClass();
                activityLifecycleCallbacks.onActivitySaveInstanceState(activity, bundle);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        int i = this.$r8$classId;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.$$delegate_0;
        switch (i) {
            case 0:
                activity.getClass();
                activityLifecycleCallbacks.onActivityStarted(activity);
                break;
            default:
                activity.getClass();
                activityLifecycleCallbacks.onActivityStarted(activity);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        int i = this.$r8$classId;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.$$delegate_0;
        switch (i) {
            case 0:
                activity.getClass();
                activityLifecycleCallbacks.onActivityStopped(activity);
                break;
            default:
                activity.getClass();
                activityLifecycleCallbacks.onActivityStopped(activity);
                break;
        }
    }

    public ViewLocationHolderLeakFix$applyFix$2(AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2 androidLeakFixes$TEXT_LINE_POOL$apply$1$2) {
        this.$application = androidLeakFixes$TEXT_LINE_POOL$apply$1$2;
        Object newProxyInstance = Proxy.newProxyInstance(Application.ActivityLifecycleCallbacks.class.getClassLoader(), new Class[]{Application.ActivityLifecycleCallbacks.class}, ObjectsKt$NO_OP_HANDLER$1.INSTANCE);
        if (newProxyInstance != null) {
            this.$$delegate_0 = (Application.ActivityLifecycleCallbacks) newProxyInstance;
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
    }
}
