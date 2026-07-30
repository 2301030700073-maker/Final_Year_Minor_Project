package b.b.g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: b.b.g.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0044e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f527a;

    public C0044e(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f527a = actionBarOverlayLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f527a;
        actionBarOverlayLayout.A = null;
        actionBarOverlayLayout.k = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f527a;
        actionBarOverlayLayout.A = null;
        actionBarOverlayLayout.k = false;
    }
}
