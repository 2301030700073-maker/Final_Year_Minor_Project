package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Iy, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1300Iy implements Animator.AnimatorListener {
    public final /* synthetic */ C1767as A00;

    public C1300Iy(C1767as c1767as) {
        this.A00 = c1767as;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.A00.A09(false);
        this.A00.A04();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view;
        this.A00.A01 = EnumC1291Ip.A04;
        view = this.A00.A05;
        D3.A0F(view);
        this.A00.A04();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
