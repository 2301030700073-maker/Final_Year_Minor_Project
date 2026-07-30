package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes3.dex */
public final class G7 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ I7 f1133do;

    public G7(I7 i7) {
        this.f1133do = i7;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        I7 i7 = this.f1133do;
        i7.f1449do = (i7.f1449do + 4) % ((X4) i7.f1453do).f4459do.length;
    }
}
