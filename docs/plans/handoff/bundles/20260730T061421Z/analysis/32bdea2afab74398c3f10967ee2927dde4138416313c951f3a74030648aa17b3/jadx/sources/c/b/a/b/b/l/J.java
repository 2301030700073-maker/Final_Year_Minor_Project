package c.b.a.b.b.l;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public class J extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ K f2628a;

    public J(K k) {
        this.f2628a = k;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        K k = this.f2628a;
        if (animator == k.f2630b) {
            k.f2630b = null;
        }
    }
}
