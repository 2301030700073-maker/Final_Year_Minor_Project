package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: assets/audience_network.dex */
public class GI extends AnimatorListenerAdapter {
    public final /* synthetic */ C2074fu A00;
    public final /* synthetic */ boolean A01;

    public GI(C2074fu c2074fu, boolean z) {
        this.A00 = c2074fu;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        GT gt;
        C1777b5 c1777b5;
        AbstractC2478md abstractC2478md;
        C1777b5 c1777b52;
        C1777b5 c1777b53;
        C2150h9 c2150h9;
        C2150h9 c2150h92;
        super.onAnimationEnd(animator);
        gt = this.A00.A0N;
        gt.setTranslationY(0.0f);
        this.A00.A0W();
        if (!this.A01) {
            c2150h9 = this.A00.A0K;
            if (c2150h9 != null) {
                c2150h92 = this.A00.A0K;
                c2150h92.destroy();
            }
        }
        c1777b5 = this.A00.A0l;
        if (c1777b5 == null) {
            return;
        }
        abstractC2478md = this.A00.A0G;
        if (!abstractC2478md.A1H()) {
            c1777b53 = this.A00.A0l;
            c1777b53.setVisibility(this.A01 ? 8 : 0);
        } else {
            c1777b52 = this.A00.A0l;
            c1777b52.setVisibility(8);
        }
    }
}
