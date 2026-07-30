package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: assets/audience_network.dex */
public class HS implements View.OnTouchListener {
    public final /* synthetic */ C1337Kj A00;

    public HS(C1337Kj c1337Kj) {
        this.A00 = c1337Kj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View view2;
        View view3;
        View view4;
        View view5;
        View view6;
        View view7;
        AbstractC1217Ft abstractC1217Ft;
        AbstractC1217Ft abstractC1217Ft2;
        float x = motionEvent.getX();
        view2 = this.A00.A0H;
        if (x >= view2.getX()) {
            float x2 = motionEvent.getX();
            view3 = this.A00.A0H;
            float x3 = view3.getX();
            view4 = this.A00.A0H;
            if (x2 <= x3 + view4.getWidth()) {
                float y = motionEvent.getY();
                view5 = this.A00.A0H;
                if (y >= view5.getY()) {
                    float y2 = motionEvent.getY();
                    view6 = this.A00.A0H;
                    float y3 = view6.getY();
                    view7 = this.A00.A0H;
                    if (y2 > y3 + view7.getHeight()) {
                        return false;
                    }
                    abstractC1217Ft = this.A00.A03;
                    if (abstractC1217Ft == null) {
                        return true;
                    }
                    abstractC1217Ft2 = this.A00.A03;
                    abstractC1217Ft2.dispatchTouchEvent(motionEvent);
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
