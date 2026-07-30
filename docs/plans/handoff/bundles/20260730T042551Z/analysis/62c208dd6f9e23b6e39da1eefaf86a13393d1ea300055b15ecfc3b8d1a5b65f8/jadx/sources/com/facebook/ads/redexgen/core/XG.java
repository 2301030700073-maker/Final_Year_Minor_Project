package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class XG implements InterfaceC1515Rv {
    public static byte[] A01;
    public static String[] A02 = {"XP2FqcAOW5OB", "vy3sHWnxY", "lliIYEEgrUJaxxNNiq0urdHUk", "jOem", "K0eytYsrH5QQCvogWHmQjW0THjxnwlIr", "eBaETZSTNwb8Lbal6f7x", "1IvAX", "YJYc4zCx"};
    public final /* synthetic */ C0V A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 51);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        byte[] bArr = {-46, 6, -11, -6, 0, -79, 4, -6, -1, -4, -79, -10, 3, 3, 0, 3, -32, -8, -9, -4, -12, -42, 2, -9, -8, -10, -44, 8, -9, -4, 2, -27, -8, 1, -9, -8, 5, -8, 5, -85, -86, -113, -88, -95, -95, -84, -23, -24, -47, -37, -27, -33, -17, -22};
        if (A02[4].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[3] = "eS4Y";
        strArr[5] = "7MrfQHgoNWqiCvXyWdPD";
        A01 = bArr;
    }

    static {
        A01();
    }

    public XG(C0V c0v) {
        this.A00 = c0v;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void ACO(Exception exc) {
        C1508Ro c1508Ro;
        AbstractC2055fb.A08(A00(16, 23, 96), A00(0, 16, 94), exc);
        c1508Ro = this.A00.A0G;
        c1508Ro.A0D(exc);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void ACP(C1511Rr c1511Rr) {
        C1508Ro c1508Ro;
        c1508Ro = this.A00.A0G;
        c1508Ro.A0B(c1511Rr);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void ACQ(C1511Rr c1511Rr) {
        C1508Ro c1508Ro;
        c1508Ro = this.A00.A0G;
        c1508Ro.A0C(c1511Rr);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void AEH() {
        C0V.A05(this.A00);
        if (0 != 0) {
            C0V.A05(this.A00);
            throw new NullPointerException(A00(46, 8, 71));
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void AEI() {
        C0V.A05(this.A00);
        if (0 != 0) {
            C0V.A05(this.A00);
            throw new NullPointerException(A00(39, 7, 9));
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void AEa(long j) {
        C1508Ro c1508Ro;
        c1508Ro = this.A00.A0G;
        c1508Ro.A03(j);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void AEb() {
        this.A00.A26();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void AF7(boolean z) {
        C1508Ro c1508Ro;
        c1508Ro = this.A00.A0G;
        c1508Ro.A0I(z);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1515Rv
    public final void AFR(int i, long j, long j2) {
        C1508Ro c1508Ro;
        c1508Ro = this.A00.A0G;
        c1508Ro.A01(i, j, j2);
    }
}
