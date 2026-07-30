package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.search.SearchView;
import defpackage.Y0;

/* renamed from: com.google.android.material.search.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Ctry f11316do;

    public Cdo(Ctry ctry) {
        this.f11316do = ctry;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Ctry ctry = this.f11316do;
        if (!ctry.f11332do.m5861goto()) {
            ctry.f11332do.m5854break();
        }
        ctry.f11332do.m5856catch(SearchView.Cif.SHOWN, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        Ctry ctry = this.f11316do;
        ctry.f11329do.setVisibility(0);
        SearchBar searchBar = ctry.f11331do;
        searchBar.f11265do.getClass();
        View view = searchBar.f11275if;
        if (view instanceof Y0) {
            ((Y0) view).m2886do();
        }
        if (view != 0) {
            view.setAlpha(0.0f);
        }
    }
}
