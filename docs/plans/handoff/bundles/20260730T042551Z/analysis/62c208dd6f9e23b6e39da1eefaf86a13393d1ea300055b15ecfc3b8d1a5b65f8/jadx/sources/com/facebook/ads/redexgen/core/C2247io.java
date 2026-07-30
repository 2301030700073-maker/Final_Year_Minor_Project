package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.io, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2247io extends AnonymousClass24 {
    public static byte[] A01;
    public final /* synthetic */ C2238ie A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 30);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{95, 112, 101, 120, 103, 116, 49, 112, 117, 98, 49, 124, 112, Byte.MAX_VALUE, 112, 118, 116, 99, 49, 101, 121, 116, 120, 99, 49, 126, 102, Byte.MAX_VALUE, 49, 120, 124, 97, 99, 116, 98, 98, 120, 126, Byte.MAX_VALUE, 98, 63};
    }

    public C2247io(C2238ie c2238ie) {
        this.A00 = c2238ie;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0B(C2496mv c2496mv) {
        this.A00.A1W(c2496mv);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0C() {
        InterfaceC2237id interfaceC2237id;
        InterfaceC2237id interfaceC2237id2;
        interfaceC2237id = this.A00.A0G;
        if (interfaceC2237id != null) {
            interfaceC2237id2 = this.A00.A0G;
            interfaceC2237id2.AC6();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0D() {
        throw new IllegalStateException(A00(0, 41, 15));
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0F(AnonymousClass23 anonymousClass23) {
        C1386Mj c1386Mj;
        C1386Mj c1386Mj2;
        c1386Mj = this.A00.A0A;
        if (c1386Mj != null) {
            c1386Mj2 = this.A00.A0A;
            c1386Mj2.A0M();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0G(C1091Ag c1091Ag) {
        long j;
        InterfaceC2237id interfaceC2237id;
        InterfaceC2237id interfaceC2237id2;
        InterfaceC08621f A0F = this.A00.A12().A0F();
        j = this.A00.A00;
        A0F.A3D(C1140Cu.A01(j), c1091Ag.A03().getErrorCode(), c1091Ag.A04());
        interfaceC2237id = this.A00.A0G;
        if (interfaceC2237id != null) {
            interfaceC2237id2 = this.A00.A0G;
            interfaceC2237id2.AD4(c1091Ag);
        }
    }
}
