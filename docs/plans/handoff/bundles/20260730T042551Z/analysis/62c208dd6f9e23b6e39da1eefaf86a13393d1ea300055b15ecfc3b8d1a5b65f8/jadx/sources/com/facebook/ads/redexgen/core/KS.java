package com.facebook.ads.redexgen.core;

import android.os.Handler;

/* loaded from: assets/audience_network.dex */
public class KS extends AbstractC1820bm {
    public static String[] A01 = {"A0hxmHyocA20uKbzLNrX1cuoBFAzY21E", "I9xoCKjiIf8OmMJxcwGdtcNw1YuiDvi3", "dl", "8cu3hn6v04Mabo0DRb3BoKxPmV6m17RH", "M3PfsQ0uQOYBe23ut3RBur7M821ZKE4o", "dBLXd4nh7JPFvxg4r1eMmoTDEY", "dzagYupPsp4H2uhompZ2DySoLx14PfZd", "Z1qzuvaE1jq9Ec95ZFgzh3McR3fZkyWy"};
    public final /* synthetic */ C1812be A00;

    public KS(C1812be c1812be) {
        this.A00 = c1812be;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1821bn c1821bn) {
        C1855cL c1855cL;
        boolean z;
        Handler handler;
        boolean A0D;
        boolean z2;
        Handler handler2;
        int i;
        c1855cL = this.A00.A01;
        if (c1855cL == null) {
            return;
        }
        z = this.A00.A03;
        if (!z && c1821bn.A00().getAction() == 0) {
            C1812be c1812be = this.A00;
            String[] strArr = A01;
            if (strArr[5].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A01[4] = "8qKCS4QoQxaUoDKBRazWJt0HJmuP0GoR";
            handler = c1812be.A05;
            handler.removeCallbacksAndMessages(null);
            A0D = this.A00.A0D(EnumC1291Ip.A04);
            if (A0D) {
                this.A00.A03();
                C1812be c1812be2 = this.A00;
                if (A01[3].charAt(1) != 'x') {
                    A01[3] = "krfS0sgwBFPIM38aK2Y5K2a50FO4BQxK";
                    c1812be2.A06(true, false);
                } else {
                    c1812be2.A06(true, false);
                }
            }
            z2 = this.A00.A02;
            if (!z2) {
                return;
            }
            handler2 = this.A00.A05;
            C1813bf c1813bf = new C1813bf(this);
            i = this.A00.A00;
            handler2.postDelayed(c1813bf, i);
        }
    }
}
