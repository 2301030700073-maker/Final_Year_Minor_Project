package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Visibility$DisappearListener extends AnimatorListenerAdapter implements Transition.TransitionListener {
    public final int mFinalVisibility;
    public boolean mLayoutSuppressed;
    public final ViewGroup mParent;
    public final View mView;
    public boolean mCanceled = false;
    public final boolean mSuppressLayout = true;

    public Visibility$DisappearListener(View view, int i) {
        this.mView = view;
        this.mFinalVisibility = i;
        this.mParent = (ViewGroup) view.getParent();
        suppressLayout(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.mCanceled = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        if (z) {
            return;
        }
        if (!this.mCanceled) {
            ViewUtils.setTransitionVisibility(this.mFinalVisibility, this.mView);
            ViewGroup viewGroup = this.mParent;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        suppressLayout(false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z) {
        if (z) {
            ViewUtils.setTransitionVisibility(0, this.mView);
            ViewGroup viewGroup = this.mParent;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionEnd$1(Transition transition) {
        transition.removeListener(this);
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionPause() {
        suppressLayout(false);
        if (this.mCanceled) {
            return;
        }
        ViewUtils.setTransitionVisibility(this.mFinalVisibility, this.mView);
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionResume() {
        suppressLayout(true);
        if (this.mCanceled) {
            return;
        }
        ViewUtils.setTransitionVisibility(0, this.mView);
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        throw null;
    }

    public final void suppressLayout(boolean z) {
        ViewGroup viewGroup;
        if (!this.mSuppressLayout || this.mLayoutSuppressed == z || (viewGroup = this.mParent) == null) {
            return;
        }
        this.mLayoutSuppressed = z;
        UStringsKt.suppressLayout(viewGroup, z);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public final void onTransitionStart$1(Transition transition) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.mCanceled) {
            ViewUtils.setTransitionVisibility(this.mFinalVisibility, this.mView);
            ViewGroup viewGroup = this.mParent;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        suppressLayout(false);
    }
}
