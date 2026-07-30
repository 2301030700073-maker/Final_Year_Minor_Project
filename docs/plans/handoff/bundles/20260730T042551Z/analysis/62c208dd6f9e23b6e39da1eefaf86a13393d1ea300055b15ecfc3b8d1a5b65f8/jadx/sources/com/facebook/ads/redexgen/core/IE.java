package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: assets/audience_network.dex */
public class IE implements View.OnTouchListener {
    public final /* synthetic */ C1855cL A00;

    public IE(C1855cL c1855cL) {
        this.A00 = c1855cL;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C9J c9j;
        c9j = this.A00.A0C;
        c9j.A02(new C1821bn(view, motionEvent));
        return false;
    }
}
