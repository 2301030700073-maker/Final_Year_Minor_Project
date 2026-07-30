package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Cbreak;
import androidx.fragment.app.Cstatic;

/* renamed from: androidx.fragment.app.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f6961do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewGroup f6962do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cbreak.Cdo f6963do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cstatic.Cnew f6964do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f6965do;

    public Cfor(ViewGroup viewGroup, View view, boolean z, Cstatic.Cnew cnew, Cbreak.Cdo cdo) {
        this.f6962do = viewGroup;
        this.f6961do = view;
        this.f6965do = z;
        this.f6964do = cnew;
        this.f6963do = cdo;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f6962do;
        View view = this.f6961do;
        viewGroup.endViewTransition(view);
        if (this.f6965do) {
            this.f6964do.f7020do.m4202do(view);
        }
        this.f6963do.m4162do();
    }
}
