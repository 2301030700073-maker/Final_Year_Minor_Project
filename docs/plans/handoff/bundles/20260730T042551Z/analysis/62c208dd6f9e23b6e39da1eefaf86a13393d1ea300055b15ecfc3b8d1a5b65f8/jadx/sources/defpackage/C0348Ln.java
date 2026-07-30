package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.heinrichreimersoftware.materialintro.view.InkPageIndicator;

/* renamed from: Ln, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0348Ln extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InkPageIndicator f2000do;

    public C0348Ln(InkPageIndicator inkPageIndicator) {
        this.f2000do = inkPageIndicator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = InkPageIndicator.f12171goto;
        InkPageIndicator inkPageIndicator = this.f2000do;
        inkPageIndicator.m6377try();
        inkPageIndicator.f12191for = false;
    }
}
