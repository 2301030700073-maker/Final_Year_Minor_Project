package com.facebook.ads.redexgen.core;

import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.fl, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2065fl extends JK {
    public final /* synthetic */ LJ A00;

    public C2065fl(LJ lj) {
        this.A00 = lj;
    }

    @Override // com.facebook.ads.redexgen.core.JK
    public final void A03() {
        C1141Cv c1141Cv;
        C1141Cv c1141Cv2;
        JL jl;
        C1141Cv c1141Cv3;
        A7 a7;
        AbstractC2478md abstractC2478md;
        C2322k1 c2322k1;
        EC ec;
        AbstractC2478md abstractC2478md2;
        AbstractC2478md abstractC2478md3;
        C2322k1 c2322k12;
        C2322k1 c2322k13;
        AbstractC2478md abstractC2478md4;
        AbstractC2478md abstractC2478md5;
        DR dr;
        DR dr2;
        EC ec2;
        c1141Cv = this.A00.A0B;
        if (!c1141Cv.A07()) {
            c1141Cv2 = this.A00.A0B;
            c1141Cv2.A05();
            FB fb = new FB();
            jl = this.A00.A0H;
            FB A03 = fb.A03(jl);
            c1141Cv3 = this.A00.A0B;
            Map<String, String> A05 = A03.A02(c1141Cv3).A05();
            a7 = this.A00.A08;
            abstractC2478md = this.A00.A06;
            a7.AB0(abstractC2478md.A1g(), A05);
            c2322k1 = this.A00.A07;
            C1108Bh A00 = C1108Bh.A00(c2322k1);
            ec = this.A00.A0D;
            String A8b = ec.A8b();
            abstractC2478md2 = this.A00.A06;
            A00.A0E(A8b, abstractC2478md2.A1g());
            abstractC2478md3 = this.A00.A06;
            C08902h A1c = abstractC2478md3.A1c();
            c2322k12 = this.A00.A07;
            C08902h.A07(A1c, c2322k12);
            c2322k13 = this.A00.A07;
            c2322k13.A0F().A3B();
            abstractC2478md4 = this.A00.A06;
            String A0g = abstractC2478md4.A0g();
            abstractC2478md5 = this.A00.A06;
            AbstractC09093a.A02(A0g, AbstractC1124Ce.A00(abstractC2478md5.A0i()));
            dr = this.A00.A0C;
            if (dr != null) {
                dr2 = this.A00.A0C;
                ec2 = this.A00.A0D;
                dr2.A4Z(ec2.A86());
            }
        }
    }
}
