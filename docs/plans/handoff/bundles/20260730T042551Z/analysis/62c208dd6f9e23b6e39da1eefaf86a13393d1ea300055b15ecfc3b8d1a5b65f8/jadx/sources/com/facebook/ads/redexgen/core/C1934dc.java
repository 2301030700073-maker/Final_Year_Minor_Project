package com.facebook.ads.redexgen.core;

import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.dc, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1934dc extends IOException {
    public final int A00;

    public C1934dc(int i) {
        this.A00 = i;
    }

    public C1934dc(String str, int i) {
        super(str);
        this.A00 = i;
    }

    public C1934dc(String str, Throwable th, int i) {
        super(str, th);
        this.A00 = i;
    }

    public C1934dc(Throwable th, int i) {
        super(th);
        this.A00 = i;
    }

    public static boolean A06(IOException iOException) {
        for (IOException iOException2 = iOException; iOException2 != null; iOException2 = iOException2.getCause()) {
            if ((iOException2 instanceof C1934dc) && ((C1934dc) iOException2).A00 == 2008) {
                return true;
            }
        }
        return false;
    }
}
