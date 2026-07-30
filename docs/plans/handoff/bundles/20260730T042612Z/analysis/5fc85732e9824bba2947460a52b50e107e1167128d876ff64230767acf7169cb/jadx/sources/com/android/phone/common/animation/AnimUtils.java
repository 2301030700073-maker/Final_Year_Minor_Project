package com.android.phone.common.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import com.android.contacts.ContactPhotoManager;
import com.android.phone.common.compat.PathInterpolatorCompat;

/* loaded from: classes.dex */
public class AnimUtils {
    public static final Interpolator EASE_IN = PathInterpolatorCompat.create(ContactPhotoManager.OFFSET_DEFAULT, ContactPhotoManager.OFFSET_DEFAULT, 0.2f, 1.0f);
    public static final Interpolator EASE_OUT = PathInterpolatorCompat.create(0.4f, ContactPhotoManager.OFFSET_DEFAULT, 1.0f, 1.0f);
    public static final Interpolator EASE_OUT_EASE_IN = PathInterpolatorCompat.create(0.4f, ContactPhotoManager.OFFSET_DEFAULT, 0.2f, 1.0f);

    public static class AnimationCallback {
        public abstract void onAnimationCancel();

        public abstract void onAnimationEnd();
    }

    public static void fadeOut(final View view, int i, final AnimationCallback animationCallback) {
        view.setAlpha(1.0f);
        ViewPropertyAnimator animate = view.animate();
        animate.cancel();
        animate.alpha(ContactPhotoManager.OFFSET_DEFAULT).withLayer().setListener(new AnimatorListenerAdapter() { // from class: com.android.phone.common.animation.AnimUtils.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
                AnimationCallback animationCallback2 = animationCallback;
                if (animationCallback2 != null) {
                    animationCallback2.onAnimationEnd();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setVisibility(8);
                view.setAlpha(ContactPhotoManager.OFFSET_DEFAULT);
                AnimationCallback animationCallback2 = animationCallback;
                if (animationCallback2 != null) {
                    animationCallback2.onAnimationCancel();
                }
            }
        });
        if (i != -1) {
            animate.setDuration(i);
        }
        animate.start();
    }

    public static void fadeIn(final View view, int i, int i2, final AnimationCallback animationCallback) {
        view.setAlpha(ContactPhotoManager.OFFSET_DEFAULT);
        ViewPropertyAnimator animate = view.animate();
        animate.cancel();
        animate.setStartDelay(i2);
        animate.alpha(1.0f).withLayer().setListener(new AnimatorListenerAdapter() { // from class: com.android.phone.common.animation.AnimUtils.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                view.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
                AnimationCallback animationCallback2 = animationCallback;
                if (animationCallback2 != null) {
                    animationCallback2.onAnimationCancel();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimationCallback animationCallback2 = animationCallback;
                if (animationCallback2 != null) {
                    animationCallback2.onAnimationEnd();
                }
            }
        });
        if (i != -1) {
            animate.setDuration(i);
        }
        animate.start();
    }

    public static void scaleIn(final View view, int i, int i2) {
        scaleInternal(view, 0, 1, i, i2, new AnimatorListenerAdapter() { // from class: com.android.phone.common.animation.AnimUtils.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                view.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
            }
        }, EASE_IN);
    }

    public static void scaleOut(final View view, int i) {
        scaleInternal(view, 1, 0, i, 0, new AnimatorListenerAdapter() { // from class: com.android.phone.common.animation.AnimUtils.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setVisibility(8);
                view.setScaleX(ContactPhotoManager.OFFSET_DEFAULT);
                view.setScaleY(ContactPhotoManager.OFFSET_DEFAULT);
            }
        }, EASE_OUT);
    }

    private static void scaleInternal(View view, int i, int i2, int i3, int i4, AnimatorListenerAdapter animatorListenerAdapter, Interpolator interpolator) {
        float f = i;
        view.setScaleX(f);
        view.setScaleY(f);
        ViewPropertyAnimator animate = view.animate();
        animate.cancel();
        float f2 = i2;
        animate.setInterpolator(interpolator).scaleX(f2).scaleY(f2).setListener(animatorListenerAdapter).withLayer();
        if (i3 != -1) {
            animate.setDuration(i3);
        }
        animate.setStartDelay(i4);
        animate.start();
    }
}
