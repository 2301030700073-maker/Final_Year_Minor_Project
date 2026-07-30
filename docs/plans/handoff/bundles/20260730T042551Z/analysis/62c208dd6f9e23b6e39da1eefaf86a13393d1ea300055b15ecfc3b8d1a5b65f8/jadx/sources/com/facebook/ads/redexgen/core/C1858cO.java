package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* renamed from: com.facebook.ads.redexgen.X.cO, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1858cO extends BY {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ C1855cL A02;
    public final /* synthetic */ JI A03;

    public C1858cO(C1855cL c1855cL, JI ji, int i, int i2) {
        this.A02 = c1855cL;
        this.A03 = ji;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C2322k1 c2322k1;
        Handler handler;
        C9J c9j;
        C2322k1 c2322k12;
        C9J c9j2;
        C1822bo c1822bo;
        Handler handler2;
        C2322k1 c2322k13;
        C9J c9j3;
        Handler handler3;
        C2322k1 c2322k14;
        C2322k1 c2322k15;
        C9J c9j4;
        C1830bw c1830bw;
        Handler handler4;
        C2322k1 c2322k16;
        C2322k1 c2322k17;
        Handler handler5;
        C9J c9j5;
        C9J c9j6;
        C1836c2 c1836c2;
        C2322k1 c2322k18;
        C9J c9j7;
        C1828bu c1828bu;
        if (this.A03 == JI.A07) {
            this.A02.A0M(AE.A0y);
            c2322k18 = this.A02.A0B;
            c2322k18.A0F().A3Z();
            c9j7 = this.A02.A0C;
            c1828bu = C1855cL.A0J;
            c9j7.A02(c1828bu);
            return;
        }
        if (this.A03 == JI.A03) {
            this.A02.A0M(AE.A0t);
            this.A02.A04 = true;
            c9j6 = this.A02.A0C;
            c1836c2 = C1855cL.A0H;
            c9j6.A02(c1836c2);
            this.A02.A0L(this.A00);
            return;
        }
        if (this.A03 == JI.A06) {
            this.A02.A0M(AE.A0s);
            c2322k17 = this.A02.A0B;
            c2322k17.A0F().A3R();
            this.A02.A04 = true;
            handler5 = this.A02.A08;
            handler5.removeCallbacksAndMessages(null);
            c9j5 = this.A02.A0C;
            c9j5.A02(new C1328Ka(this.A01, this.A01));
            this.A02.A0L(this.A01);
            return;
        }
        if (this.A03 == JI.A0A) {
            c2322k14 = this.A02.A0B;
            if (C10729m.A1s(c2322k14)) {
                c2322k16 = this.A02.A0B;
                c2322k16.A0B().AFk();
            }
            this.A02.A0M(AE.A0w);
            c2322k15 = this.A02.A0B;
            c2322k15.A0F().A3g();
            c9j4 = this.A02.A0C;
            c1830bw = C1855cL.A0I;
            c9j4.A02(c1830bw);
            handler4 = this.A02.A08;
            handler4.removeCallbacksAndMessages(null);
            this.A02.A0I();
            return;
        }
        if (this.A03 == JI.A05) {
            this.A02.A0M(AE.A0v);
            c2322k13 = this.A02.A0B;
            c2322k13.A0F().A3V();
            c9j3 = this.A02.A0C;
            c9j3.A02(new KY(this.A00));
            handler3 = this.A02.A08;
            handler3.removeCallbacksAndMessages(null);
            this.A02.A0L(this.A00);
            return;
        }
        if (this.A03 == JI.A04) {
            this.A02.A0M(AE.A0u);
            c2322k12 = this.A02.A0B;
            c2322k12.A0F().A3S();
            c9j2 = this.A02.A0C;
            c1822bo = C1855cL.A0L;
            c9j2.A02(c1822bo);
            handler2 = this.A02.A08;
            handler2.removeCallbacksAndMessages(null);
            return;
        }
        if (this.A03 == JI.A09) {
            this.A02.A0M(AE.A0s);
            c2322k1 = this.A02.A0B;
            c2322k1.A0F().A3b();
            this.A02.A04 = true;
            handler = this.A02.A08;
            handler.removeCallbacksAndMessages(null);
            c9j = this.A02.A0C;
            c9j.A02(new C1328Ka(this.A00, this.A01));
            this.A02.A0L(this.A00);
        }
    }
}
