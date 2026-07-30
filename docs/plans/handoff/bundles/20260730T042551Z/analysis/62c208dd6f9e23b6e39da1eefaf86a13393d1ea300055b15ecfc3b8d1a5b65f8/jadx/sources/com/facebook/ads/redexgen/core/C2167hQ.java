package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.hQ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2167hQ implements DP {
    public static String[] A01 = {"dAENZa04S5kpLZ1505OVGzU", "BCWAX", "x4EBtM5L1", "d5mzvX7vdf5oGTbdkf23a85QS6J33UuP", "T3xMk8xyeuXfnP2cHDF22zgmf4sSWk7a", "D6RnJQb1nSkQk7teZoJG77p", "lMrZ8D5HcAsH09zpnUIM78ubrFXrhoz6", "r7D6OIPJDO7XxyVdFUwVLtQI1zZlrgYr"};
    public final /* synthetic */ C2163hM A00;

    public C2167hQ(C2163hM c2163hM) {
        this.A00 = c2163hM;
    }

    @Override // com.facebook.ads.redexgen.core.DP
    public final void AC5(DQ dq) {
        boolean A0W;
        boolean z;
        AF af;
        C08982p c08982p;
        DR dr;
        EC ec;
        C2322k1 c2322k1;
        AtomicBoolean atomicBoolean;
        boolean A0V;
        AtomicBoolean atomicBoolean2;
        C1201Fd c1201Fd;
        A0W = this.A00.A0W();
        if (A0W) {
            atomicBoolean2 = this.A00.A0V;
            if (!atomicBoolean2.get()) {
                c1201Fd = this.A00.A0T;
                c1201Fd.A07(this.A00);
                return;
            }
        }
        C2163hM c2163hM = this.A00;
        if (A01[4].charAt(5) == '8') {
            A01[1] = "011C";
            z = c2163hM.A0X;
            if (z) {
                atomicBoolean = this.A00.A0V;
                if (!atomicBoolean.get()) {
                    A0V = this.A00.A0V();
                    if (A0V) {
                        this.A00.A0a.setToolbarActionMode(0);
                        this.A00.A0L();
                        return;
                    }
                }
            }
            af = this.A00.A0N;
            af.A04(AE.A07, null);
            c08982p = this.A00.A0J;
            if (c08982p.A0P()) {
                c2322k1 = this.A00.A0L;
                c2322k1.A0F().ADd();
            }
            dr = this.A00.A0Q;
            C2163hM c2163hM2 = this.A00;
            if (A01[2].length() == 9) {
                A01[6] = "SsRiNY9tvP3hEWy4eyTF9NsffnrPtCfL";
                ec = c2163hM2.A0R;
                dr.A4Z(ec.A7m());
                return;
            }
        }
        throw new RuntimeException();
    }
}
