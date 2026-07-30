package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Gf, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnTouchListenerC1229Gf implements View.OnTouchListener {
    public final /* synthetic */ LJ A00;

    public ViewOnTouchListenerC1229Gf(LJ lj) {
        this.A00 = lj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C1233Gj c1233Gj;
        c1233Gj = this.A00.A0E;
        c1233Gj.dispatchTouchEvent(MotionEvent.obtain(motionEvent));
        return false;
    }
}
