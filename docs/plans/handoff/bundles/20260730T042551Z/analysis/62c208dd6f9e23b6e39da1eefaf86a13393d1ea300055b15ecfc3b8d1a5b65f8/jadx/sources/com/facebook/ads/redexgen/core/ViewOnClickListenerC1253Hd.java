package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Hd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1253Hd implements View.OnClickListener {
    public static String[] A01 = {"hS5f9KbstsMPLbUbPSxFVdCfAROmcRtV", "DUM08yoPCPer4HETov37xY8lXqOkWet1", "HD0hLshA4", "cNo3fMkBKvz7jHUo", "0KN3KUldF", "ICLtCAijF", "iMQeuY1uIySJVoFID8xkudblEyJz6Aif", "P1hZJiyY"};
    public final /* synthetic */ C1254He A00;

    public ViewOnClickListenerC1253Hd(C1254He c1254He) {
        this.A00 = c1254He;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        IX ix;
        if (BQ.A02(this)) {
            return;
        }
        try {
            ix = this.A00.A05;
            ix.performClick();
        } catch (Throwable th) {
            BQ.A00(th, this);
            if (A01[6].charAt(1) == 'N') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[0] = "I2wlNoUiFEETsNdyZ3cedgIbWPjbODtt";
            strArr[1] = "f6nspZJA1kETXV8rRnTaX6zeidOCX4th";
        }
    }
}
