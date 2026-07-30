package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.else, reason: invalid class name */
/* loaded from: classes.dex */
public final class Celse extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f7622do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewPropertyAnimator f7623do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ RecyclerView.Cdefault f7624do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Ccatch f7625do;

    public Celse(View view, ViewPropertyAnimator viewPropertyAnimator, Ccatch ccatch, RecyclerView.Cdefault cdefault) {
        this.f7625do = ccatch;
        this.f7624do = cdefault;
        this.f7622do = view;
        this.f7623do = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f7622do.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f7623do.setListener(null);
        Ccatch ccatch = this.f7625do;
        RecyclerView.Cdefault cdefault = this.f7624do;
        ccatch.m4454if(cdefault);
        ccatch.f7549this.remove(cdefault);
        ccatch.m4484case();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f7625do.getClass();
    }
}
