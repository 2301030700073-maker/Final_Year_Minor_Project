package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: b8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0733b8 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0792c8 f8329do;

    public C0733b8(C0792c8 c0792c8) {
        this.f8329do = c0792c8;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ((AbstractC2704eg) this.f8329do).f12696do.m6012goto(false);
    }
}
