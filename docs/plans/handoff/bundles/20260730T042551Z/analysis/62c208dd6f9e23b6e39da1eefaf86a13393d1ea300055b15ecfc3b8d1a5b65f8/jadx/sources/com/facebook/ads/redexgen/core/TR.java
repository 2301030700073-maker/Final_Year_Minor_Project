package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: assets/audience_network.dex */
public final class TR extends AbstractC1628Wm {
    public static byte[] A05;
    public static String[] A06 = {"OSBuxA8zEnRiolB6cG4uiPECo0WwUmkD", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "xxcpUJPnTVYqEuTHrwYVOjHOAxUZFuGN", "poU66SInsspskoUBYHR1JtfFAGzPXbU6", "7pDXU75iEa8PyIUpn3YZlzs2rDl8sX26", "S76AnDIrtBEeNrQVDfr12EH7dZmda5WJ", "B8HbVAhEW7WC60T6Eda", "VpVh4192C3aIK0mfoZM1laVAC0HKAzJR"};
    public int A00;
    public C1584Us A01;
    public C1586Uu A02;
    public C1629Wn A03;
    public boolean A04;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final C1629Wn A02(C2070fq c2070fq) throws IOException {
        if (this.A02 == null) {
            this.A02 = AbstractC1587Uv.A06(c2070fq);
            return null;
        }
        if (this.A01 == null) {
            this.A01 = AbstractC1587Uv.A04(c2070fq);
            return null;
        }
        C1586Uu c1586Uu = this.A02;
        C1584Us c1584Us = this.A01;
        byte[] bArr = new byte[c2070fq.A0A()];
        System.arraycopy(c2070fq.A0l(), 0, bArr, 0, c2070fq.A0A());
        return new C1629Wn(c1586Uu, c1584Us, bArr, AbstractC1587Uv.A0E(c2070fq, c1586Uu.A05), AbstractC1587Uv.A00(r6.length - 1));
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 37);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A05 = new byte[]{23, 3, 18, 31, 25, 89, 0, 25, 4, 20, 31, 5};
    }

    static {
        A04();
    }

    public static int A00(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    public static int A01(byte b, C1629Wn c1629Wn) {
        if (!c1629Wn.A04[A00(b, c1629Wn.A00, 1)].A03) {
            int modeNumber = c1629Wn.A02.A03;
            return modeNumber;
        }
        C1586Uu c1586Uu = c1629Wn.A02;
        if (A06[5].charAt(14) != 'Q') {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[3] = "ty7LcGOnA759j2s1NaQCjDuGhoB8VzM6";
        strArr[2] = "FC8vzAHnHatKcIVILTws19eQHI2zvHfe";
        int modeNumber2 = c1586Uu.A04;
        return modeNumber2;
    }

    public static void A05(C2070fq c2070fq, long j) {
        if (c2070fq.A08() < c2070fq.A0A() + 4) {
            c2070fq.A0i(Arrays.copyOf(c2070fq.A0l(), c2070fq.A0A() + 4));
        } else {
            c2070fq.A0e(c2070fq.A0A() + 4);
        }
        byte[] A0l = c2070fq.A0l();
        A0l[c2070fq.A0A() - 4] = (byte) (j & 255);
        A0l[c2070fq.A0A() - 3] = (byte) ((j >>> 8) & 255);
        A0l[c2070fq.A0A() - 2] = (byte) ((j >>> 16) & 255);
        A0l[c2070fq.A0A() - 1] = (byte) (255 & (j >>> 24));
    }

    public static boolean A06(C2070fq c2070fq) {
        try {
            return AbstractC1587Uv.A0C(1, c2070fq, true);
        } catch (Q6 unused) {
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1628Wm
    public final long A0E(C2070fq c2070fq) {
        int i = 0;
        if ((c2070fq.A0l()[0] & 1) == 1) {
            return -1L;
        }
        int A01 = A01(c2070fq.A0l()[0], (C1629Wn) AbstractC2011es.A02(this.A03));
        if (this.A04) {
            int packetBlockSize = this.A00;
            i = (packetBlockSize + A01) / 4;
        }
        A05(c2070fq, i);
        this.A04 = true;
        this.A00 = A01;
        return i;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1628Wm
    public final void A0F(long j) {
        super.A0F(j);
        this.A04 = j != 0;
        this.A00 = this.A02 != null ? this.A02.A03 : 0;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1628Wm
    public final void A0I(boolean z) {
        super.A0I(z);
        if (z) {
            if (A06[5].charAt(14) != 'Q') {
                throw new RuntimeException();
            }
            A06[5] = "KAtjHSILaIST5YQV0zAYcVVXx1PQzuJl";
            this.A03 = null;
            this.A02 = null;
            this.A01 = null;
        }
        this.A00 = 0;
        this.A04 = false;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1628Wm
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean A0J(C2070fq c2070fq, long j, C1627Wl c1627Wl) throws IOException {
        if (this.A03 != null) {
            AbstractC2011es.A01(c1627Wl.A00);
            return false;
        }
        this.A03 = A02(c2070fq);
        if (this.A03 == null) {
            return true;
        }
        C1629Wn c1629Wn = this.A03;
        C1586Uu c1586Uu = c1629Wn.A02;
        ArrayList<byte[]> codecInitializationData = new ArrayList<>();
        codecInitializationData.add(c1586Uu.A09);
        codecInitializationData.add(c1629Wn.A03);
        c1627Wl.A00 = new P5().A11(A03(0, 12, 83)).A0a(c1586Uu.A02).A0j(c1586Uu.A00).A0b(c1586Uu.A05).A0m(c1586Uu.A06).A12(codecInitializationData).A0v(AbstractC1587Uv.A02(MetaExoPlayerCustomizedCollections.A02(c1629Wn.A01.A02))).A14();
        return true;
    }
}
