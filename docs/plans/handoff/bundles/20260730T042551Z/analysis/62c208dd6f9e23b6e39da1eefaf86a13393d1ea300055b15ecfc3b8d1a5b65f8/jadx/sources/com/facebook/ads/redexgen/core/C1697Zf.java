package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Zf, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1697Zf implements PD {
    public static byte[] A07;
    public static String[] A08 = {"2Ykyj0PXgzh9wnrPnGwMIu3DEOZhuRwM", "z4FUODfDBU9GT", "ESJ6i5kJYXio6ja8bwP4eFkCntwSyaWj", "txZDj", "OVeDYl2sIQX2B7dUTJlIz6Yb5cspYx4C", "FvydbNRRQIR6GfcSVfHZQGHXST", "SlwZg", "mzOcbhaSYgOYrw5trFFPK3BJ1uJm5qSb"};
    public PD A00;
    public InterfaceC1682Yq A01;
    public boolean A04;
    public final OH A05;
    public final C1678Ym A06;
    public boolean A03 = true;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "This reverts a bug introduced in D48802706. The upgraded exoaccounts for this but not the old exo. Hence, this is needed here temporarily")
    public boolean A02 = MetaExoPlayerUpgradeConfig.A03(EnumC1387Mn.A1V);

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 19);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{-55, -15, -24, -16, -27, -20, -24, -31, -100, -18, -31, -22, -32, -31, -18, -31, -18, -100, -23, -31, -32, -27, -35, -100, -33, -24, -21, -33, -25, -17, -100, -31, -22, -35, -34, -24, -31, -32, -86};
    }

    static {
        A01();
    }

    public C1697Zf(OH oh, InterfaceC2018ez interfaceC2018ez) {
        this.A05 = oh;
        this.A06 = new C1678Ym(interfaceC2018ez);
    }

    private void A02(boolean z) {
        if (A03(z)) {
            this.A03 = true;
            if (this.A04) {
                this.A06.A00();
                return;
            }
            return;
        }
        PD pd = (PD) AbstractC2011es.A01(this.A00);
        long rendererClockPositionUs = pd.A8f();
        if (this.A03) {
            PD rendererClock = this.A06;
            if (rendererClockPositionUs < rendererClock.A8f()) {
                this.A06.A01();
                return;
            } else {
                this.A03 = false;
                if (this.A04) {
                    this.A06.A00();
                }
            }
        }
        this.A06.A02(rendererClockPositionUs);
        C1687Yv A8c = pd.A8c();
        PD rendererClock2 = this.A06;
        if (!A8c.equals(rendererClock2.A8c())) {
            PD rendererClock3 = this.A06;
            rendererClock3.AIj(A8c);
            this.A05.AEV(A8c);
        }
    }

    private boolean A03(boolean z) {
        if (this.A01 != null) {
            boolean AAE = this.A01.AAE();
            if (A08[7].charAt(29) == 'y') {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[0] = "6NOGXo6HM3S6o5udLce1QQnWpZKciPRV";
            strArr[2] = "TJ7ZVsUjgiKde6TM48whmDCYQZFzbxe0";
            if (!AAE && (this.A01.AAT() || (!z && !this.A01.A9f()))) {
                return false;
            }
        }
        return true;
    }

    public final long A04(boolean z) {
        A02(z);
        return A8f();
    }

    public final void A05() {
        this.A04 = true;
        this.A06.A00();
    }

    public final void A06() {
        this.A04 = false;
        this.A06.A01();
    }

    public final void A07(long j) {
        this.A06.A02(j);
    }

    public final void A08(InterfaceC1682Yq interfaceC1682Yq) {
        if (interfaceC1682Yq == this.A01) {
            this.A00 = null;
            this.A01 = null;
            this.A03 = true;
        }
    }

    public final void A09(InterfaceC1682Yq interfaceC1682Yq) throws EK {
        PD A8J = interfaceC1682Yq.A8J();
        if (A8J != null) {
            PD rendererMediaClock = this.A00;
            if (A8J != rendererMediaClock) {
                PD rendererMediaClock2 = this.A00;
                if (rendererMediaClock2 == null) {
                    this.A00 = A8J;
                    this.A01 = interfaceC1682Yq;
                    PD pd = this.A00;
                    PD rendererMediaClock3 = this.A06;
                    pd.AIj(rendererMediaClock3.A8c());
                    return;
                }
                throw EK.A02(new IllegalStateException(A00(0, 39, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS)));
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.PD
    public final C1687Yv A8c() {
        if (this.A00 != null) {
            return this.A00.A8c();
        }
        return this.A06.A8c();
    }

    @Override // com.facebook.ads.redexgen.core.PD
    public final long A8f() {
        if (this.A03) {
            return this.A06.A8f();
        }
        return ((PD) AbstractC2011es.A01(this.A00)).A8f();
    }

    @Override // com.facebook.ads.redexgen.core.PD
    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "This reverts a bug introduced in D48802706. The upgraded exoaccounts for this but not the old exo. Hence, this is needed here temporarily")
    public final void AIj(C1687Yv c1687Yv) {
        if (this.A00 != null) {
            this.A00.AIj(c1687Yv);
            c1687Yv = this.A00.A8c();
        }
        this.A06.AIj(c1687Yv);
        if (A08[5].length() == 21) {
            throw new RuntimeException();
        }
        A08[4] = "GhKEfvvCOvrfqr3FFiwQarRbUxetwk92";
        if (this.A02) {
            this.A05.AEV(c1687Yv);
        }
    }
}
