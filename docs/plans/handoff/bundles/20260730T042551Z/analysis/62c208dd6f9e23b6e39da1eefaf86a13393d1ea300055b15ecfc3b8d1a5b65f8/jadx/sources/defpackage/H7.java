package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes3.dex */
public final class H7 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ I7 f1293do;

    public H7(I7 i7) {
        this.f1293do = i7;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        I7 i7 = this.f1293do;
        i7.mo216do();
        X0 x0 = i7.f1451do;
        if (x0 != null) {
            x0.mo2708do(((AbstractC0128Bn) i7).f282do);
        }
    }
}
