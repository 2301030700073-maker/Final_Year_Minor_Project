package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: jf, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3165jf extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3224kf f13743do;

    public C3165jf(C3224kf c3224kf) {
        this.f13743do = c3224kf;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C3224kf c3224kf = this.f13743do;
        c3224kf.m6574while();
        c3224kf.f14032if.start();
    }
}
