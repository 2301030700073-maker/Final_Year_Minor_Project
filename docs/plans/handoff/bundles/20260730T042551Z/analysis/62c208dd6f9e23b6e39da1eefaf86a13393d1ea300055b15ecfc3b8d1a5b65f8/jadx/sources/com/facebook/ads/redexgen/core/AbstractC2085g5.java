package com.facebook.ads.redexgen.core;

import android.os.Trace;

/* renamed from: com.facebook.ads.redexgen.X.g5, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2085g5 {
    public static void A00() {
        if (PS.A00 && AbstractC2094gE.A02 >= 18) {
            A01();
        }
    }

    public static void A01() {
        Trace.endSection();
    }

    public static void A02(String str) {
        if (PS.A00 && AbstractC2094gE.A02 >= 18) {
            A03(str);
        }
    }

    public static void A03(String str) {
        Trace.beginSection(str);
    }
}
