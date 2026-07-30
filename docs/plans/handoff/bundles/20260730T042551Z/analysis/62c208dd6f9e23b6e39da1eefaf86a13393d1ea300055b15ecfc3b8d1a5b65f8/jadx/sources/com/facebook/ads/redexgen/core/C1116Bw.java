package com.facebook.ads.redexgen.core;

import android.app.Activity;

/* renamed from: com.facebook.ads.redexgen.X.Bw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1116Bw {
    public static final C1116Bw A04 = new C1116Bw(new C2221iM(), new C2220iL());
    public final InterfaceC1115Bv A02;
    public final InterfaceC1139Ct A03;
    public boolean A01 = true;
    public long A00 = -1;

    public C1116Bw(InterfaceC1139Ct interfaceC1139Ct, InterfaceC1115Bv interfaceC1115Bv) {
        this.A03 = interfaceC1139Ct;
        this.A02 = interfaceC1115Bv;
    }

    public static C1116Bw A00() {
        return A04;
    }

    public final synchronized void A01() {
        this.A01 = false;
        this.A00 = this.A03.A5d();
    }

    public final synchronized void A02() {
        this.A00 = -1L;
    }

    public final boolean A03() {
        Activity lastResumedActivity = this.A02.A8C();
        boolean z = true;
        if (lastResumedActivity != null) {
            return true;
        }
        synchronized (C1116Bw.class) {
            if (this.A01) {
                return true;
            }
            if (this.A00 >= 0 && this.A03.A5d() - this.A00 >= 1000) {
                z = false;
            }
            return z;
        }
    }
}
