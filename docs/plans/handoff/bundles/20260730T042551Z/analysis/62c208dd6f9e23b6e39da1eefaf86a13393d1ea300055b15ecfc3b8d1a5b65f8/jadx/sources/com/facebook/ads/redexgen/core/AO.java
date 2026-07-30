package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: assets/audience_network.dex */
public class AO implements View.OnTouchListener {
    public static String[] A01 = {"BENQAquhgvj7TT9", "G4ABWHEO8pFoECzre8aPRkd5RqzaS810", "PI8RZp2k0CYdM", "EmvTCi8E1ni5QktN6f", "uKZwthLDSYADW2ME8E7na2CL49A5zEt8", "f3ahGFeoLQ7BDTppBYhbDWzCsZGogVaH", "wyETLpONaJd07JaZyOo", "wX7oH8VfboeBvBElZn"};
    public final /* synthetic */ C2249iq A00;

    public AO(C2249iq c2249iq) {
        this.A00 = c2249iq;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C1368Lp c1368Lp;
        C1368Lp c1368Lp2;
        c1368Lp = this.A00.A04;
        if (c1368Lp != null) {
            int action = motionEvent.getAction();
            String[] strArr = A01;
            if (strArr[0].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A01[6] = "VIP8zqVOsYs7o10MZlA";
            if (action == 1) {
                c1368Lp2 = this.A00.A04;
                c1368Lp2.A0u();
            }
        }
        return true;
    }
}
