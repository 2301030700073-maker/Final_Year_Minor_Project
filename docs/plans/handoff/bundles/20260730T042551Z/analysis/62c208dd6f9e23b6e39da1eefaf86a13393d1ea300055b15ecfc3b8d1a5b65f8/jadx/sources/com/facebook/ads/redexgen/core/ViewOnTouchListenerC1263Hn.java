package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Hn, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnTouchListenerC1263Hn implements View.OnTouchListener {
    public final /* synthetic */ C1264Ho A00;

    public ViewOnTouchListenerC1263Hn(C1264Ho c1264Ho) {
        this.A00 = c1264Ho;
    }

    public /* synthetic */ ViewOnTouchListenerC1263Hn(C1264Ho c1264Ho, C1335Kh c1335Kh) {
        this(c1264Ho);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        A7 a7;
        AbstractC2478md abstractC2478md;
        if (motionEvent.getAction() == 1) {
            this.A00.A01 = System.currentTimeMillis();
            C1264Ho.A00(this.A00);
            a7 = this.A00.A07;
            abstractC2478md = this.A00.A04;
            a7.ABE(abstractC2478md.A1g(), new FB().A03(this.A00.getViewabilityChecker()).A02(this.A00.getTouchDataRecorder()).A05());
            return false;
        }
        return false;
    }
}
