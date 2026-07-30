package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public class ItemTouchHelper$RecoverAnimation implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public boolean f184a;
    public final ValueAnimator mValueAnimator;

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f184a) {
            throw null;
        }
        this.f184a = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
