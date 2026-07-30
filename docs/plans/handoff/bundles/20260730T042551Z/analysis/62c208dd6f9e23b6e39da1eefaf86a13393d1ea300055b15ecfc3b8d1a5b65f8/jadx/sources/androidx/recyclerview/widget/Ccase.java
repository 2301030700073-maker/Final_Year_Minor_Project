package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f7535do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewPropertyAnimator f7536do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ RecyclerView.Cdefault f7537do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Ccatch f7538do;

    public Ccase(View view, ViewPropertyAnimator viewPropertyAnimator, Ccatch ccatch, RecyclerView.Cdefault cdefault) {
        this.f7538do = ccatch;
        this.f7537do = cdefault;
        this.f7536do = viewPropertyAnimator;
        this.f7535do = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f7536do.setListener(null);
        this.f7535do.setAlpha(1.0f);
        Ccatch ccatch = this.f7538do;
        RecyclerView.Cdefault cdefault = this.f7537do;
        ccatch.m4454if(cdefault);
        ccatch.f7542catch.remove(cdefault);
        ccatch.m4484case();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f7538do.getClass();
    }
}
