package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Is, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1294Is implements Animator.AnimatorListener {
    public final /* synthetic */ C1771aw A00;

    public C1294Is(C1771aw c1771aw) {
        this.A00 = c1771aw;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        this.A00.A08(false);
        valueAnimator = this.A00.A01;
        if (valueAnimator == null) {
            return;
        }
        valueAnimator2 = this.A00.A01;
        valueAnimator2.removeAllListeners();
        this.A00.A01 = null;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view;
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        this.A00.A02 = EnumC1291Ip.A04;
        view = this.A00.A05;
        D3.A0F(view);
        valueAnimator = this.A00.A01;
        if (valueAnimator == null) {
            return;
        }
        valueAnimator2 = this.A00.A01;
        valueAnimator2.removeAllListeners();
        this.A00.A01 = null;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
