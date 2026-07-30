package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.Ccatch;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.this, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthis extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f7686do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewPropertyAnimator f7687do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Ccatch.Cdo f7688do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Ccatch f7689do;

    public Cthis(Ccatch ccatch, Ccatch.Cdo cdo, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f7689do = ccatch;
        this.f7688do = cdo;
        this.f7687do = viewPropertyAnimator;
        this.f7686do = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f7687do.setListener(null);
        View view = this.f7686do;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        Ccatch.Cdo cdo = this.f7688do;
        RecyclerView.Cdefault cdefault = cdo.f7552do;
        Ccatch ccatch = this.f7689do;
        ccatch.m4454if(cdefault);
        ccatch.f7543class.remove(cdo.f7552do);
        ccatch.m4484case();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        RecyclerView.Cdefault cdefault = this.f7688do.f7552do;
        this.f7689do.getClass();
    }
}
