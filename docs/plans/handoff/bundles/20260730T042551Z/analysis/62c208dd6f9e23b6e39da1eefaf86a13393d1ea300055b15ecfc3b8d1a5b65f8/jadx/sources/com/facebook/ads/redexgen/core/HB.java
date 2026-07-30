package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: assets/audience_network.dex */
public class HB extends AnimatorListenerAdapter {
    public final /* synthetic */ C1345Kr A00;
    public final /* synthetic */ boolean A01;

    public HB(C1345Kr c1345Kr, boolean z) {
        this.A00 = c1345Kr;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        GT gt;
        C2150h9 c2150h9;
        C2150h9 c2150h92;
        super.onAnimationEnd(animator);
        gt = this.A00.A0H;
        gt.setTranslationY(0.0f);
        this.A00.A0U();
        if (this.A01) {
            return;
        }
        c2150h9 = this.A00.A0G;
        if (c2150h9 == null) {
            return;
        }
        c2150h92 = this.A00.A0G;
        c2150h92.destroy();
    }
}
