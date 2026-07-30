package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.transition.Transition;

/* renamed from: lI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3264lI extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ F2 f14144do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Transition f14145do;

    public C3264lI(Transition transition, F2 f2) {
        this.f14145do = transition;
        this.f14144do = f2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f14144do.remove(animator);
        this.f14145do.f7894try.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f14145do.f7894try.add(animator);
    }
}
