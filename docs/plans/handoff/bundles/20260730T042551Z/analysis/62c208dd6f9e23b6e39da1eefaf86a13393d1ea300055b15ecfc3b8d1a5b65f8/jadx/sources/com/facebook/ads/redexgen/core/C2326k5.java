package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.k5, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2326k5 implements C1Y {
    public static byte[] A01;
    public static String[] A02 = {"DkadTd3hzRbbbOHMxE7l2HcIgF77c2Wg", "0ZuZJmAU8cZIcQf3szyGmXM5AilOTJtQ", "s7OtZpyonCiYFMYFU1WCjmQvHXym6FPj", "3vySfQzjuhiXchKud6RTPthf0ulaYdWV", "CDvhYqwZm7dYJUP65EPDHmFcAmisUun7", "F", "FueLju8lXT0mR7zmJE5", "4fFvsSsvSh6WJapTHyxRGbQ9SIVR6447"};
    public final /* synthetic */ C2321k0 A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 23);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        byte[] bArr = {-89, -85, -97, -91, -93};
        String[] strArr = A02;
        if (strArr[4].charAt(11) == strArr[0].charAt(11)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "8YVOAkqjlCZIfPO923uAjm7vB9HJVDjx";
        strArr2[0] = "zjuPMStvlm1D7VGZIKzQB2odE0473uv0";
        A01 = bArr;
    }

    static {
        A01();
    }

    public C2326k5(C2321k0 c2321k0) {
        this.A00 = c2321k0;
    }

    @Override // com.facebook.ads.redexgen.core.C1Y
    public final void AAo(Throwable th) {
        this.A00.A08().AAu(A00(0, 5, 39), AbstractC10358a.A1e, new C10368b(th));
    }

    @Override // com.facebook.ads.redexgen.core.C1Y
    public final void AAz(Throwable th) {
        this.A00.A08().AAu(A00(0, 5, 39), AbstractC10358a.A1g, new C10368b(th));
    }

    @Override // com.facebook.ads.redexgen.core.C1Y
    public final void AGc(String str, int i, String str2, Long l, Long l2, C1J c1j) {
        C10327w.A05(this.A00, c1j.A06, c1j.A08, c1j.A09, c1j.A07, c1j.A03, i, str2, l, l2, null);
    }

    @Override // com.facebook.ads.redexgen.core.C1Y
    public final void AGd(String str, boolean z, C1J c1j) {
        C10327w.A04(this.A00, new C10317v(c1j.A06, c1j.A08, c1j.A07, c1j.A03, str), z);
    }
}
