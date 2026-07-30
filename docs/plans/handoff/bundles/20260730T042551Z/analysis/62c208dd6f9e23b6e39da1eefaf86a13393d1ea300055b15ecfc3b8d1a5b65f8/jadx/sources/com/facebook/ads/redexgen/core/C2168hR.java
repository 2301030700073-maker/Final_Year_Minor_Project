package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.hR, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2168hR implements CG {
    public static byte[] A01;
    public final /* synthetic */ C2163hM A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{69, 81, 80, 75, 71, 72, 77, 71, 79};
    }

    public C2168hR(C2163hM c2163hM) {
        this.A00 = c2163hM;
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void ACi() {
        boolean z;
        boolean z2;
        z = this.A00.A0C;
        if (!z) {
            z2 = this.A00.A0B;
            if (!z2) {
                this.A00.A0U(false, A00(0, 9, 80));
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void AEg(float f) {
    }
}
