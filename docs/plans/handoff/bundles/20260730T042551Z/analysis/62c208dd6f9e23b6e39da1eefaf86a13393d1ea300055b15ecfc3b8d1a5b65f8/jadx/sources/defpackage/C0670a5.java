package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.view.ViewPropertyAnimator;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarContentLayout;

/* renamed from: a5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0670a5 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f4928do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ BaseTransientBottomBar f4929do;

    public C0670a5(BaseTransientBottomBar baseTransientBottomBar, int i) {
        this.f4929do = baseTransientBottomBar;
        this.f4928do = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f4929do.m5923new(this.f4928do);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        BaseTransientBottomBar baseTransientBottomBar = this.f4929do;
        InterfaceC0422Pa interfaceC0422Pa = baseTransientBottomBar.f11459do;
        int i = baseTransientBottomBar.f11473if;
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) interfaceC0422Pa;
        snackbarContentLayout.f11498do.setAlpha(1.0f);
        long j = i;
        ViewPropertyAnimator duration = snackbarContentLayout.f11498do.animate().alpha(0.0f).setDuration(j);
        TimeInterpolator timeInterpolator = snackbarContentLayout.f11496do;
        long j2 = 0;
        duration.setInterpolator(timeInterpolator).setStartDelay(j2).start();
        if (snackbarContentLayout.f11497do.getVisibility() == 0) {
            snackbarContentLayout.f11497do.setAlpha(1.0f);
            snackbarContentLayout.f11497do.animate().alpha(0.0f).setDuration(j).setInterpolator(timeInterpolator).setStartDelay(j2).start();
        }
    }
}
