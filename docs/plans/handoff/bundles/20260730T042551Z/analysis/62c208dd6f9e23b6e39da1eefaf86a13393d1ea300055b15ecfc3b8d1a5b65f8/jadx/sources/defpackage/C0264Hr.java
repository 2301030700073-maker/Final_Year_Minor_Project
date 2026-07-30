package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: Hr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0264Hr extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0286Ir f1396do;

    public C0264Hr(C0286Ir c0286Ir) {
        this.f1396do = c0286Ir;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C0286Ir c0286Ir = this.f1396do;
        ((AbstractC0176Dr) c0286Ir).f691do.setTranslationY(0.0f);
        c0286Ir.m975if(0.0f);
    }
}
