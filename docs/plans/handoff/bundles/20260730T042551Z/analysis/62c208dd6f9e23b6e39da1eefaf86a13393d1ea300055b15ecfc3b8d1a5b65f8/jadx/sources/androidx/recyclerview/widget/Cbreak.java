package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.Ccatch;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f7531do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewPropertyAnimator f7532do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Ccatch.Cdo f7533do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Ccatch f7534do;

    public Cbreak(Ccatch ccatch, Ccatch.Cdo cdo, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f7534do = ccatch;
        this.f7533do = cdo;
        this.f7532do = viewPropertyAnimator;
        this.f7531do = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f7532do.setListener(null);
        View view = this.f7531do;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        Ccatch.Cdo cdo = this.f7533do;
        RecyclerView.Cdefault cdefault = cdo.f7555if;
        Ccatch ccatch = this.f7534do;
        ccatch.m4454if(cdefault);
        ccatch.f7543class.remove(cdo.f7555if);
        ccatch.m4484case();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        RecyclerView.Cdefault cdefault = this.f7533do.f7555if;
        this.f7534do.getClass();
    }
}
