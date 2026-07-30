package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.search.SearchView;

/* renamed from: com.google.android.material.search.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Ctry f11319do;

    public Cnew(Ctry ctry) {
        this.f11319do = ctry;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Ctry ctry = this.f11319do;
        ctry.f11329do.setVisibility(8);
        if (!ctry.f11332do.m5861goto()) {
            ctry.f11332do.m5855case();
        }
        ctry.f11332do.m5856catch(SearchView.Cif.HIDDEN, true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f11319do.f11332do.m5856catch(SearchView.Cif.HIDING, true);
    }
}
