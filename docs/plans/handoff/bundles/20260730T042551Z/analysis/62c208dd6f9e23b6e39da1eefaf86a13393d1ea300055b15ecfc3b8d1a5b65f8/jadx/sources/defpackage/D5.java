package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;

/* loaded from: classes3.dex */
public final class D5 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BottomAppBar f493do;

    public D5(BottomAppBar bottomAppBar) {
        this.f493do = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        BottomAppBar bottomAppBar = this.f493do;
        bottomAppBar.getClass();
        bottomAppBar.f10554break = false;
        bottomAppBar.f10557do = null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f493do.getClass();
    }
}
