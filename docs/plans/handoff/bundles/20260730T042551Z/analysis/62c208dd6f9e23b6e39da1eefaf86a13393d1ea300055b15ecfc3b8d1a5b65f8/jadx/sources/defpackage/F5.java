package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* loaded from: classes3.dex */
public final class F5 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BottomAppBar f981do;

    public F5(BottomAppBar bottomAppBar) {
        this.f981do = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        BottomAppBar bottomAppBar = this.f981do;
        bottomAppBar.f10560do.onAnimationStart(animator);
        View m5671continue = bottomAppBar.m5671continue();
        FloatingActionButton floatingActionButton = m5671continue instanceof FloatingActionButton ? (FloatingActionButton) m5671continue : null;
        if (floatingActionButton != null) {
            floatingActionButton.setTranslationX(bottomAppBar.m5678volatile());
        }
    }
}
