package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: mq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3353mq extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3412nq f14402do;

    public C3353mq(C3412nq c3412nq) {
        this.f14402do = c3412nq;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        C3412nq c3412nq = this.f14402do;
        c3412nq.f14609do = (c3412nq.f14609do + 1) % ((X4) c3412nq.f14612do).f4459do.length;
        c3412nq.f14613do = true;
    }
}
