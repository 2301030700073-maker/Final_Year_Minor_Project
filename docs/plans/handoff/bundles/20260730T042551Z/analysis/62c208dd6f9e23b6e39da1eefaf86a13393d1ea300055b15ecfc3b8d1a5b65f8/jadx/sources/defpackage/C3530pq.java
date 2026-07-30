package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: pq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3530pq extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3589qq f14994do;

    public C3530pq(C3589qq c3589qq) {
        this.f14994do = c3589qq;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        C3589qq c3589qq = this.f14994do;
        c3589qq.mo216do();
        X0 x0 = c3589qq.f15169do;
        if (x0 != null) {
            x0.mo2708do(((AbstractC0128Bn) c3589qq).f282do);
        }
    }
}
