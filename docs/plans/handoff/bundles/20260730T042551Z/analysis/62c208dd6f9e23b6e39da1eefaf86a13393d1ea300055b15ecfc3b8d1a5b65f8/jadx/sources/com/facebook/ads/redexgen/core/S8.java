package com.facebook.ads.redexgen.core;

import android.util.SparseArray;

/* loaded from: assets/audience_network.dex */
public class S8 implements YK {
    public final C2069fp A00 = new C2069fp(new byte[4]);
    public final /* synthetic */ S6 A01;

    public S8(S6 s6) {
        this.A01 = s6;
    }

    @Override // com.facebook.ads.redexgen.core.YK
    public final void A50(C2070fq c2070fq) {
        int secondHeaderByte;
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int tableId = c2070fq.A0I();
        if (tableId != 0) {
            return;
        }
        int tableId2 = c2070fq.A0I();
        if ((tableId2 & 128) == 0) {
            return;
        }
        c2070fq.A0g(6);
        int A07 = c2070fq.A07() / 4;
        for (int i = 0; i < A07; i++) {
            c2070fq.A0h(this.A00, 4);
            int programCount = this.A00.A04(16);
            this.A00.A09(3);
            if (programCount == 0) {
                this.A00.A09(13);
            } else {
                int A04 = this.A00.A04(13);
                sparseArray2 = this.A01.A0B;
                if (sparseArray2.get(A04) == null) {
                    sparseArray3 = this.A01.A0B;
                    sparseArray3.put(A04, new SU(new S7(this.A01, A04)));
                    S6.A02(this.A01);
                }
            }
        }
        secondHeaderByte = this.A01.A09;
        if (secondHeaderByte != 2) {
            sparseArray = this.A01.A0B;
            sparseArray.remove(0);
        }
    }

    @Override // com.facebook.ads.redexgen.core.YK
    public final void AA3(C2084g4 c2084g4, UL ul, YS ys) {
    }
}
