package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.transition.Transition;

/* renamed from: mI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3323mI extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Transition f14327do;

    public C3323mI(Transition transition) {
        this.f14327do = transition;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f14327do.m4634final();
        animator.removeListener(this);
    }
}
