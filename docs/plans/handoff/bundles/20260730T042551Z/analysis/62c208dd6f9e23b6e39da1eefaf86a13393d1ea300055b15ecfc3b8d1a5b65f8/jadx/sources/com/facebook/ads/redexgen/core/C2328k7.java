package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.k7, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2328k7 extends BY {
    public static byte[] A02;
    public final /* synthetic */ C2327k6 A00;
    public final /* synthetic */ AtomicBoolean A01;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 78);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A02 = new byte[]{14, 44, 46, 51, 48, -21, 49, 44, 52, 55, -7, -110, -80, -78, -73, -76, 111, -62, -60, -78, -78, -76, -62, -62, 125};
    }

    public C2328k7(C2327k6 c2327k6, AtomicBoolean atomicBoolean) {
        this.A00 = c2327k6;
        this.A01 = atomicBoolean;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        AnonymousClass85 anonymousClass85;
        long j;
        AnonymousClass85 anonymousClass852;
        long j2;
        if (this.A00.A00 != null) {
            if (this.A01.get()) {
                this.A00.A02.A0I(AE.A0H);
                anonymousClass852 = this.A00.A02.A04;
                C10227m c10227m = this.A00.A01;
                int i = C10327w.A00;
                j2 = this.A00.A02.A00;
                C10327w.A02(anonymousClass852, c10227m, i, A01(11, 14, 1), j2);
                this.A00.A02.A0T();
                this.A00.A00.ACj();
                return;
            }
            this.A00.A02.A0I(AE.A0G);
            anonymousClass85 = this.A00.A02.A04;
            C10227m c10227m2 = this.A00.A01;
            int i2 = C10327w.A04;
            j = this.A00.A02.A00;
            C10327w.A02(anonymousClass85, c10227m2, i2, A01(0, 11, 125), j);
            this.A00.A02.A0U();
            this.A00.A00.ACa();
        }
    }
}
