package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FragmentAnim$AnimationOrAnimator {
    public final Object animation;
    public final Cloneable animator;

    public FragmentAnim$AnimationOrAnimator(Animator animator) {
        this.animation = null;
        AnimatorSet animatorSet = new AnimatorSet();
        this.animator = animatorSet;
        animatorSet.play(animator);
    }

    public void dispatchOnFragmentActivityCreated(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentActivityCreated(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentActivityCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public void dispatchOnFragmentAttached(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        AppCompatActivity appCompatActivity = fragmentManager.mHost.context;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentAttached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentAttached(fragmentManager, fragment, appCompatActivity);
            }
        }
    }

    public void dispatchOnFragmentCreated(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentCreated(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public void dispatchOnFragmentDestroyed(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentDestroyed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentDestroyed(fragmentManager, fragment);
            }
        }
    }

    public void dispatchOnFragmentDetached(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentDetached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentDetached(fragmentManager, fragment);
            }
        }
    }

    public void dispatchOnFragmentPaused(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentPaused(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentPaused(fragmentManager, fragment);
            }
        }
    }

    public void dispatchOnFragmentPreAttached(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        AppCompatActivity appCompatActivity = fragmentManager.mHost.context;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentPreAttached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentPreAttached(fragmentManager, fragment, appCompatActivity);
            }
        }
    }

    public void dispatchOnFragmentPreCreated(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentPreCreated(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentPreCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public void dispatchOnFragmentResumed(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentResumed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentResumed(fragmentManager, fragment);
            }
        }
    }

    public void dispatchOnFragmentSaveInstanceState(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentSaveInstanceState(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentSaveInstanceState(fragmentManager, fragment, bundle);
            }
        }
    }

    public void dispatchOnFragmentStarted(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentStarted(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentStarted(fragmentManager, fragment);
            }
        }
    }

    public void dispatchOnFragmentStopped(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentStopped(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentStopped(fragmentManager, fragment);
            }
        }
    }

    public void dispatchOnFragmentViewCreated(Fragment fragment, View view, Bundle bundle, boolean z) {
        fragment.getClass();
        view.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment, view, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentViewCreated(fragmentManager, fragment, view, bundle);
            }
        }
    }

    public void dispatchOnFragmentViewDestroyed(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.animation;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.mLifecycleCallbacksDispatcher.dispatchOnFragmentViewDestroyed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.animator).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentViewDestroyed(fragmentManager, fragment);
            }
        }
    }

    public FragmentAnim$AnimationOrAnimator(Animation animation) {
        this.animation = animation;
        this.animator = null;
    }

    public FragmentAnim$AnimationOrAnimator(FragmentManager fragmentManager) {
        this.animation = fragmentManager;
        this.animator = new CopyOnWriteArrayList();
    }
}
