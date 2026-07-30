package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.search.SearchView;

/* renamed from: com.google.android.material.search.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Ctry f11318do;

    public Cif(Ctry ctry) {
        this.f11318do = ctry;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Ctry ctry = this.f11318do;
        ctry.f11329do.setVisibility(8);
        if (!ctry.f11332do.m5861goto()) {
            ctry.f11332do.m5855case();
        }
        ctry.f11332do.m5856catch(SearchView.Cif.HIDDEN, true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f11318do.f11332do.m5856catch(SearchView.Cif.HIDING, true);
    }
}
