package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.d4, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1900d4 extends JK {
    public final /* synthetic */ C1336Ki A00;

    public C1900d4(C1336Ki c1336Ki) {
        this.A00 = c1336Ki;
    }

    @Override // com.facebook.ads.redexgen.core.JK
    public final void A03() {
        C1141Cv c1141Cv;
        C1141Cv c1141Cv2;
        String str;
        JL jl;
        C1141Cv c1141Cv3;
        AbstractC2478md abstractC2478md;
        A7 a7;
        String str2;
        AbstractC2478md abstractC2478md2;
        C2322k1 c2322k1;
        C2322k1 c2322k12;
        AbstractC2478md abstractC2478md3;
        AbstractC2478md abstractC2478md4;
        c1141Cv = this.A00.A0E;
        if (!c1141Cv.A07()) {
            C1336Ki c1336Ki = this.A00;
            c1141Cv2 = this.A00.A0E;
            c1336Ki.setImpressionRecordingFlag(c1141Cv2);
            str = this.A00.A0A;
            if (!TextUtils.isEmpty(str)) {
                FB fb = new FB();
                jl = this.A00.A09;
                FB A03 = fb.A03(jl);
                c1141Cv3 = this.A00.A0E;
                FB A02 = A03.A02(c1141Cv3);
                abstractC2478md = ((AbstractC2184hh) ((AbstractC2184hh) this.A00)).A0A;
                Map<String, String> A05 = A02.A04(abstractC2478md.A0h()).A05();
                a7 = ((AbstractC2184hh) ((AbstractC2184hh) this.A00)).A0C;
                str2 = this.A00.A0A;
                a7.AB0(str2, A05);
                abstractC2478md2 = ((AbstractC2184hh) ((AbstractC2184hh) this.A00)).A0A;
                C08902h A1c = abstractC2478md2.A1c();
                c2322k1 = this.A00.A0D;
                C08902h.A07(A1c, c2322k1);
                c2322k12 = this.A00.A0D;
                c2322k12.A0F().A3B();
                abstractC2478md3 = this.A00.A03;
                String A0g = abstractC2478md3.A0g();
                abstractC2478md4 = ((AbstractC2184hh) ((AbstractC2184hh) this.A00)).A0A;
                AbstractC09093a.A02(A0g, AbstractC1124Ce.A00(abstractC2478md4.A0i()));
            }
        }
    }
}
