package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f7642do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ View f7643do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewPropertyAnimator f7644do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ RecyclerView.Cdefault f7645do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Ccatch f7646do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ int f7647if;

    public Cgoto(Ccatch ccatch, RecyclerView.Cdefault cdefault, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f7646do = ccatch;
        this.f7645do = cdefault;
        this.f7642do = i;
        this.f7643do = view;
        this.f7647if = i2;
        this.f7644do = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i = this.f7642do;
        View view = this.f7643do;
        if (i != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f7647if != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f7644do.setListener(null);
        Ccatch ccatch = this.f7646do;
        RecyclerView.Cdefault cdefault = this.f7645do;
        ccatch.m4454if(cdefault);
        ccatch.f7540break.remove(cdefault);
        ccatch.m4484case();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f7646do.getClass();
    }
}
