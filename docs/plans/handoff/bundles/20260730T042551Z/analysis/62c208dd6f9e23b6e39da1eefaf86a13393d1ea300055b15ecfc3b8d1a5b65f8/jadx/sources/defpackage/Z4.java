package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.view.ViewPropertyAnimator;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarContentLayout;

/* loaded from: classes3.dex */
public final class Z4 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f4778do;

    public Z4(BaseTransientBottomBar baseTransientBottomBar) {
        this.f4778do = baseTransientBottomBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f4778do.m5924try();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        BaseTransientBottomBar baseTransientBottomBar = this.f4778do;
        InterfaceC0422Pa interfaceC0422Pa = baseTransientBottomBar.f11459do;
        int i = baseTransientBottomBar.f11470for;
        int i2 = baseTransientBottomBar.f11458do;
        int i3 = i - i2;
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) interfaceC0422Pa;
        snackbarContentLayout.f11498do.setAlpha(0.0f);
        long j = i2;
        ViewPropertyAnimator duration = snackbarContentLayout.f11498do.animate().alpha(1.0f).setDuration(j);
        TimeInterpolator timeInterpolator = snackbarContentLayout.f11496do;
        long j2 = i3;
        duration.setInterpolator(timeInterpolator).setStartDelay(j2).start();
        if (snackbarContentLayout.f11497do.getVisibility() == 0) {
            snackbarContentLayout.f11497do.setAlpha(0.0f);
            snackbarContentLayout.f11497do.animate().alpha(1.0f).setDuration(j).setInterpolator(timeInterpolator).setStartDelay(j2).start();
        }
    }
}
