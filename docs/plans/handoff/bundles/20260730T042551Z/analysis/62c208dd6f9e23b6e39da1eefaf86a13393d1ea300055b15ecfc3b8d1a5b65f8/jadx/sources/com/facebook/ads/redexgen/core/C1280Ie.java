package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Ie, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1280Ie extends AnimatorListenerAdapter {
    public final /* synthetic */ C1805bX A00;

    public C1280Ie(C1805bX c1805bX) {
        this.A00 = c1805bX;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view;
        view = this.A00.A00;
        view.setVisibility(8);
    }
}
