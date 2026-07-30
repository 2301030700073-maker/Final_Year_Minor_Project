package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.search.SearchView;

/* renamed from: com.google.android.material.search.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Ctry f11317do;

    public Cfor(Ctry ctry) {
        this.f11317do = ctry;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Ctry ctry = this.f11317do;
        if (!ctry.f11332do.m5861goto()) {
            ctry.f11332do.m5854break();
        }
        ctry.f11332do.m5856catch(SearchView.Cif.SHOWN, true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        Ctry ctry = this.f11317do;
        ctry.f11329do.setVisibility(0);
        ctry.f11332do.m5856catch(SearchView.Cif.SHOWING, true);
    }
}
