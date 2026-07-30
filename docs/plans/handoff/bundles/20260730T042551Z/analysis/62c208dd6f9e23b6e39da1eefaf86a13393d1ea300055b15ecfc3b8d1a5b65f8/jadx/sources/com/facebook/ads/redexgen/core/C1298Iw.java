package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.ValueAnimator;

/* renamed from: com.facebook.ads.redexgen.X.Iw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1298Iw implements Animator.AnimatorListener {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ C1768at A02;

    public C1298Iw(C1768at c1768at, int i, int i2) {
        this.A02 = c1768at;
        this.A01 = i;
        this.A00 = i2;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        this.A02.A07(this.A00, this.A01, false);
        valueAnimator = this.A02.A00;
        if (valueAnimator == null) {
            return;
        }
        valueAnimator2 = this.A02.A00;
        valueAnimator2.removeAllListeners();
        this.A02.A00 = null;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i;
        EnumC1291Ip enumC1291Ip;
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        C1768at c1768at = this.A02;
        int i2 = this.A01;
        i = this.A02.A04;
        if (i2 == i) {
            enumC1291Ip = EnumC1291Ip.A02;
        } else {
            enumC1291Ip = EnumC1291Ip.A04;
        }
        c1768at.A01 = enumC1291Ip;
        valueAnimator = this.A02.A00;
        if (valueAnimator == null) {
            return;
        }
        valueAnimator2 = this.A02.A00;
        valueAnimator2.removeAllListeners();
        this.A02.A00 = null;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
