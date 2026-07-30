package defpackage;

import android.animation.Animator;
import defpackage.M7;

/* loaded from: classes.dex */
public final class L7 implements Animator.AnimatorListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ M7.Cdo f1926do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ M7 f1927do;

    public L7(M7 m7, M7.Cdo cdo) {
        this.f1927do = m7;
        this.f1926do = cdo;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        M7 m7 = this.f1927do;
        M7.Cdo cdo = this.f1926do;
        m7.m1394do(1.0f, cdo, true);
        cdo.f2125try = cdo.f2107do;
        cdo.f2106case = cdo.f2119if;
        cdo.f2114else = cdo.f2115for;
        cdo.m1395do((cdo.f2108do + 1) % cdo.f2113do.length);
        if (!m7.f2104do) {
            m7.f2105if += 1.0f;
            return;
        }
        m7.f2104do = false;
        animator.cancel();
        animator.setDuration(1332L);
        animator.start();
        if (cdo.f2112do) {
            cdo.f2112do = false;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f1927do.f2105if = 0.0f;
    }
}
