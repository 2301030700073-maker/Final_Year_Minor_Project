package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.view.animation.Animation;

/* loaded from: assets/audience_network.dex */
public class DV implements Animation.AnimationListener {
    public final /* synthetic */ ViewOnClickListenerC1378Lz A00;

    public DV(ViewOnClickListenerC1378Lz viewOnClickListenerC1378Lz) {
        this.A00 = viewOnClickListenerC1378Lz;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        int i;
        Handler handler;
        Runnable runnable;
        int i2;
        this.A00.A06();
        i = this.A00.A04;
        if (i <= 0) {
            return;
        }
        handler = this.A00.A05;
        runnable = this.A00.A07;
        i2 = this.A00.A04;
        handler.postDelayed(runnable, i2);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
