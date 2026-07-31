package com.evernote.android.state;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentAnim$AnimationOrAnimator;
import androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
import androidx.fragment.app.FragmentManager;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class AndroidLifecycleCallbacks extends FragmentManager.FragmentLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
    static final AndroidLifecycleCallbacks INSTANCE = new AndroidLifecycleCallbacks();
    boolean mEnabled;

    private AndroidLifecycleCallbacks() {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (this.mEnabled) {
            StateSaver.restoreInstanceState(activity, bundle);
        }
        if (activity instanceof FragmentActivity) {
            FragmentAnim$AnimationOrAnimator fragmentAnim$AnimationOrAnimator = ((FragmentActivity) activity).getSupportFragmentManager().mLifecycleCallbacksDispatcher;
            fragmentAnim$AnimationOrAnimator.getClass();
            ((CopyOnWriteArrayList) fragmentAnim$AnimationOrAnimator.animator).add(new FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder(this, true));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (this.mEnabled) {
            StateSaver.saveInstanceState(activity, bundle);
        }
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentPreCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        if (this.mEnabled) {
            StateSaver.restoreInstanceState(fragment, bundle);
        }
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentSaveInstanceState(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        if (this.mEnabled) {
            StateSaver.saveInstanceState(fragment, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
