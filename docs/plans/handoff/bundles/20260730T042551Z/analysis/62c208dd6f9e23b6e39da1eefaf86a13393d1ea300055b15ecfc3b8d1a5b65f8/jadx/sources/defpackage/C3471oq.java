package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: oq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3471oq extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3589qq f14865do;

    public C3471oq(C3589qq c3589qq) {
        this.f14865do = c3589qq;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        C3589qq c3589qq = this.f14865do;
        c3589qq.f15168do = (c3589qq.f15168do + 1) % ((X4) c3589qq.f15171do).f4459do.length;
        c3589qq.f15172do = true;
    }
}
