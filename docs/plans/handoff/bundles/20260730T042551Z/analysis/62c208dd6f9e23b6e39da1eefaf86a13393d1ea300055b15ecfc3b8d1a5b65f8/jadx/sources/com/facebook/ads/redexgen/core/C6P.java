package com.facebook.ads.redexgen.core;

import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.6P, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C6P {
    public C6M A00 = new C6M();
    public final C6N A01;

    public C6P(C6N c6n) {
        this.A01 = c6n;
    }

    public final View A00(int i, int i2, int i3, int i4) {
        int A8X = this.A01.A8X();
        int next = this.A01.A8W();
        int childEnd = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View A77 = this.A01.A77(i);
            int A7A = this.A01.A7A(A77);
            int i5 = this.A01.A79(A77);
            this.A00.A03(A8X, next, A7A, i5);
            if (i3 != 0) {
                this.A00.A01();
                this.A00.A02(i3);
                if (this.A00.A04()) {
                    return A77;
                }
            }
            if (i4 != 0) {
                this.A00.A01();
                this.A00.A02(i4);
                if (this.A00.A04()) {
                    view = A77;
                }
            }
            i += childEnd;
        }
        return view;
    }
}
