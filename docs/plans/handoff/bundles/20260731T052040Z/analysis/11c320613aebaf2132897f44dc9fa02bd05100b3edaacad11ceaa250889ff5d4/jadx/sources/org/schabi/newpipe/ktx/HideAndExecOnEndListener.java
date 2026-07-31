package org.schabi.newpipe.ktx;

import android.animation.Animator;
import android.view.View;
import androidx.transition.Transition;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HideAndExecOnEndListener extends Transition.AnonymousClass3 {
    public final View view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HideAndExecOnEndListener(View view, Runnable runnable) {
        super(runnable);
        view.getClass();
        this.view = view;
    }

    @Override // androidx.transition.Transition.AnonymousClass3, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        animator.getClass();
        this.view.setVisibility(8);
        super.onAnimationEnd(animator);
    }
}
