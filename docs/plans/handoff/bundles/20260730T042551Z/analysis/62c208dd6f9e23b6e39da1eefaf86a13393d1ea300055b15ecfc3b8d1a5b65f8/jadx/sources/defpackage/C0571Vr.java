package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.search.SearchBar;

/* renamed from: Vr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0571Vr extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f4204do;

    public C0571Vr(SearchBar searchBar) {
        this.f4204do = searchBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view = this.f4204do;
        if (view != null) {
            view.setVisibility(0);
        }
    }
}
