package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.7e, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C10147e {
    public static InterfaceC10157f A00;
    public static boolean A01;
    public static byte[] A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 18);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-91, -88, -79, -90, -85, -80, -92, -75, -82};
    }

    static {
        A02();
        A01 = false;
        A00 = null;
    }

    public static void A01() {
        synchronized (C10147e.class) {
            if (A00 == null) {
                return;
            }
            C10368b c10368b = new C10368b(A00.AHh());
            c10368b.A05(1);
            C2321k0 A002 = AnonymousClass84.A00();
            if (A002 != null) {
                A002.A08().AAu(A00(0, 9, 49), 3401, c10368b);
            }
            A00.reset();
        }
    }

    public static void A03(final long j) {
        if (j > 0) {
            A00 = new C2331kA();
            new Thread(j) { // from class: com.facebook.ads.redexgen.X.7g
                public final long A00;

                {
                    this.A00 = j;
                    start();
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    if (BQ.A02(this)) {
                        return;
                    }
                    while (true) {
                        try {
                            try {
                                Thread.sleep(this.A00);
                            } catch (Throwable th) {
                                BQ.A00(th, this);
                                return;
                            }
                        } catch (InterruptedException unused) {
                        }
                        C10147e.A01();
                    }
                }
            };
        }
    }
}
