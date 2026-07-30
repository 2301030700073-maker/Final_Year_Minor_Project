package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public abstract class AnimationSuccessListener extends AnimatorListenerAdapter {
    public boolean mCancelled = false;

    public class RunnableSuccessListener extends AnimationSuccessListener {
        public final Runnable mRunnable;

        public RunnableSuccessListener(Runnable runnable, AnonymousClass1 anonymousClass1) {
            this.mRunnable = runnable;
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener
        public void onAnimationSuccess(Animator animator) {
            this.mRunnable.run();
        }
    }

    public static AnimationSuccessListener forRunnable(Runnable runnable) {
        return new RunnableSuccessListener(runnable, null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.mCancelled = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.mCancelled) {
            return;
        }
        onAnimationSuccess(animator);
    }

    public abstract void onAnimationSuccess(Animator animator);
}
