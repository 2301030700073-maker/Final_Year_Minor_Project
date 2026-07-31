package leakcanary;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import kotlin.TypeCastException;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import leakcanary.AndroidLeakFixes;
import leakcanary.internal.ObjectsKt$NO_OP_HANDLER$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ Application.ActivityLifecycleCallbacks $$delegate_0;
    public final /* synthetic */ Method $finishInputLockedMethod;
    public final /* synthetic */ InputMethodManager $inputMethodManager;
    public final /* synthetic */ Field $mHField;
    public final /* synthetic */ Field $mServedViewField;

    public AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2(InputMethodManager inputMethodManager, Field field, Field field2, Method method) {
        this.$inputMethodManager = inputMethodManager;
        this.$mHField = field;
        this.$mServedViewField = field2;
        this.$finishInputLockedMethod = method;
        Object newProxyInstance = Proxy.newProxyInstance(Application.ActivityLifecycleCallbacks.class.getClassLoader(), new Class[]{Application.ActivityLifecycleCallbacks.class}, ObjectsKt$NO_OP_HANDLER$1.INSTANCE);
        if (newProxyInstance == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
        }
        this.$$delegate_0 = (Application.ActivityLifecycleCallbacks) newProxyInstance;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        AndroidLeakFixes.Companion.WindowDelegateCallback windowDelegateCallback;
        activity.getClass();
        AndroidLeakFixes.Companion companion = AndroidLeakFixes.Companion;
        Window window = activity.getWindow();
        window.getClass();
        KTypeImpl$arguments$2 kTypeImpl$arguments$2 = new KTypeImpl$arguments$2(26, this, activity);
        companion.getClass();
        if (window.peekDecorView() != null) {
            kTypeImpl$arguments$2.invoke();
            return;
        }
        AndroidLeakFixes$Companion$onDecorViewReady$1 androidLeakFixes$Companion$onDecorViewReady$1 = new AndroidLeakFixes$Companion$onDecorViewReady$1(0, kTypeImpl$arguments$2);
        Window.Callback callback = window.getCallback();
        if (callback instanceof AndroidLeakFixes.Companion.WindowDelegateCallback) {
            windowDelegateCallback = (AndroidLeakFixes.Companion.WindowDelegateCallback) callback;
        } else {
            callback.getClass();
            AndroidLeakFixes.Companion.WindowDelegateCallback windowDelegateCallback2 = new AndroidLeakFixes.Companion.WindowDelegateCallback(callback);
            window.setCallback(windowDelegateCallback2);
            windowDelegateCallback = windowDelegateCallback2;
        }
        windowDelegateCallback.onContentChangedCallbacks.add(androidLeakFixes$Companion$onDecorViewReady$1);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        activity.getClass();
        this.$$delegate_0.onActivityDestroyed(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        activity.getClass();
        this.$$delegate_0.onActivityPaused(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        activity.getClass();
        this.$$delegate_0.onActivityResumed(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        activity.getClass();
        bundle.getClass();
        this.$$delegate_0.onActivitySaveInstanceState(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        activity.getClass();
        this.$$delegate_0.onActivityStarted(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        activity.getClass();
        this.$$delegate_0.onActivityStopped(activity);
    }
}
