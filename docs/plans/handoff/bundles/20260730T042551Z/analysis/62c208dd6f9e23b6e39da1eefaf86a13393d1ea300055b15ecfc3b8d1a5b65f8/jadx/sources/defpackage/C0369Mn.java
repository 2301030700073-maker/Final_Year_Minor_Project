package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.heinrichreimersoftware.materialintro.view.InkPageIndicator;

/* renamed from: Mn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0369Mn extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InkPageIndicator f2240do;

    public C0369Mn(InkPageIndicator inkPageIndicator) {
        this.f2240do = inkPageIndicator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2240do.f12183do = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f2240do.f12183do = false;
    }
}
