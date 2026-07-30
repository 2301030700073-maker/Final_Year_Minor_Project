package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: assets/audience_network.dex */
public final class N0 extends AbstractC2482mh {
    public static C10297t A0D;
    public static byte[] A0E;
    public static String[] A0F = {"g9SdUg6XNSnvVCS02jX19aczyGq48qDV", "lGSQ9LsgX83H3UqklEPZgAjaPEKabNT0", "y0oXMo4BXc2on8MNFvJxgBv", "Ulfd9L14l0ScyK0QB689zsPu0EZ5wfqr", "W3xKKEfUMxBXJmvfztSkCM8j4ls7Vw3H", "lNYBpqeQZYlfeCveDiVEAZh", "rx8", "elj"};
    public long A00;
    public C2L A01;
    public C2M A02;
    public C2S A03;
    public C2322k1 A04;
    public BG A05;
    public C1241Gr A06;
    public String A07;
    public String A08;
    public String A09;
    public String A0A;
    public final String A0B = UUID.randomUUID().toString();
    public final AtomicBoolean A0C = new AtomicBoolean();

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 51);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0E = new byte[]{-98, -16, -14, -14, -12, -5, -12, 1, -2, -4, -12, 3, -12, 1, -18, 1, -2, 3, -16, 3, -8, -2, -3, -58, -45, -60, -58, -56, -39, -50, -37, -50, -39, -34, 1, 6, -1, 7, 12, 3, 2, -33, 2, -30, -1, 18, -1, -32, 19, 12, 2, 10, 3, 29, 21, 20, 25, 17, 36, 25, 31, 30, -12, 17, 36, 17, 16, 12, 1, 3, 5, 13, 5, 14, 20, -23, 4, -68, -66, -79, -80, -79, -78, -75, -70, -79, -80, -101, -66, -75, -79, -70, -64, -83, -64, -75, -69, -70, -105, -79, -59, -17, -30, -18, -14, -30, -16, -15, -47, -26, -22, -30, -2, -15, 3, -19, -2, -16, -33, -15, -2, 2, -15, -2, -31, -34, -40, -13, -26, -8, -30, -13, -27, -26, -27, -41, -22, -27, -26, -16, -62, -27, -59, -30, -11, -30, -61, -10, -17, -27, -19, -26, 28, 15, 33, 11, 28, 14, 15, 14, 9, 32, 19, 14, 15, 25, -61, -68, -73, -65, -61, -77, -105, -78, -4, -17, -21, -3, -38, -1, -10, -21};
    }

    static {
        A09();
    }

    private void A07() {
        AnonymousClass42.A00(this.A04).A06(this.A02, this.A02.A00());
    }

    private void A08() {
        if (this.A02 != null) {
            try {
                AnonymousClass42.A00(this.A04).A05(this.A02);
            } catch (Exception unused) {
            }
        }
    }

    private void A0A(Intent intent) {
        int i = super.A00;
        String A05 = A05(77, 24, 25);
        if (i != -1 && Settings.System.getInt(this.A04.getContentResolver(), A05(1, 22, 92), 0) != 1) {
            int i2 = super.A00;
            String[] strArr = A0F;
            if (strArr[4].charAt(19) == strArr[0].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[5] = "RWC7frN5DjKRH0uo4BJmLzj";
            strArr2[2] = "FPcb0UYEDF6wwONX6Ty9E2F";
            intent.putExtra(A05, i2);
            return;
        }
        C2322k1 c2322k1 = this.A04;
        String[] strArr3 = A0F;
        if (strArr3[7].length() == strArr3[6].length()) {
            String[] strArr4 = A0F;
            strArr4[5] = "O4w3do1khQsKhsE3USwlJ7C";
            strArr4[2] = "rALKIAVwphrvKmHx0hqaLzY";
            if (C10729m.A0g(c2322k1)) {
                return;
            }
        } else if (C10729m.A0g(c2322k1)) {
            return;
        }
        intent.putExtra(A05, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(C2322k1 c2322k1, C2476mb c2476mb, int i) {
        if (i >= c2476mb.A1W()) {
            return;
        }
        C1392Mu c1392Mu = (C1392Mu) c2476mb.A1Z(i);
        A0D = new C10297t(c2322k1);
        A0D.A0d(new AF(c1392Mu.A1g(), c2322k1.A0A()));
        AnonymousClass36.A02(c2322k1, A0D, c1392Mu);
        A0D.A0W(new N1(this, i == 0, c2322k1, c1392Mu, c2476mb, i), new C10227m(c1392Mu.A0r(), A05(152, 14, 119), i));
    }

    private void A0D(boolean z) {
        if (this.A05 == BG.A0F) {
            A0F(z);
            return;
        }
        if (this.A05 == BG.A0H) {
            A0G(z);
        } else if (this.A05 == BG.A0G) {
            A0E(z);
        } else {
            A0G(z);
        }
    }

    private void A0E(boolean z) {
        C10297t c10297t = new C10297t(this.A04);
        boolean z2 = C10729m.A28(this.A04) && C7J.A0A(this.A03.A0u());
        if (z2) {
            C7J unifiedAssetsLoader = new C7J(c10297t, this.A03.A0u(), this.A03.A0i(), this.A03.A0r(), z2, new C2491mq(this));
            c10297t.A0d(new AF(((AbstractC2478md) this.A03).A1g(), this.A04.A0A()));
            unifiedAssetsLoader.A0B();
            return;
        }
        AnonymousClass35.A02(this.A04, (AbstractC2478md) this.A03, z, new C2490mp(this));
    }

    private void A0F(boolean z) {
        C10297t c10297t = new C10297t(this.A04);
        c10297t.A0d(new AF(((AbstractC2478md) this.A03).A1g(), this.A04.A0A()));
        AnonymousClass36.A03(this.A04, c10297t, (C1392Mu) this.A03);
        c10297t.A0W(new C2495mu(this), new C10227m(this.A03.A0r(), A05(152, 14, 119)));
    }

    private void A0G(boolean z) {
        boolean z2 = false;
        if (this.A03.A1B()) {
            C2476mb c2476mb = (C2476mb) this.A03;
            for (int i = 0; i < c2476mb.A1W(); i++) {
                if (TextUtils.isEmpty(c2476mb.A1Z(i).A1b().A0F().A09())) {
                    this.A01.AEz(this, AdError.INTERNAL_ERROR);
                    return;
                }
            }
            A0C(this.A04, c2476mb, 0);
            return;
        }
        C10297t c10297t = new C10297t(this.A04);
        c10297t.A0d(new AF(((AbstractC2478md) this.A03).A1g(), this.A04.A0A()));
        if (C10729m.A28(this.A04) && C7J.A0A(this.A03.A0u())) {
            z2 = true;
        }
        boolean A1F = this.A03.A1F();
        if (z2) {
            C7J unifiedAssetsLoader = new C7J(c10297t, this.A03.A0u(), this.A03.A0i(), this.A03.A0r(), z2, new C2493ms(this, A1F));
            unifiedAssetsLoader.A0B();
            return;
        }
        C1392Mu c1392Mu = (C1392Mu) this.A03;
        if (TextUtils.isEmpty(c1392Mu.A1b().A0F().A09())) {
            if (this.A05 == BG.A0I) {
                this.A04.A0F().ADf();
            }
            this.A01.AEz(this, AdError.INTERNAL_ERROR);
        } else {
            AnonymousClass36.A02(this.A04, c10297t, c1392Mu);
            c10297t.A0W(new N2(this, z, A1F, c1392Mu, this), new C10227m(c1392Mu.A0r(), A05(152, 14, 119)));
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2482mh
    public final int A0H() {
        if (this.A03 == null) {
            return -1;
        }
        return this.A03.A0Y();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2482mh
    public final C2S A0I() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2482mh
    public final boolean A0J() {
        if (!this.A0C.get()) {
            return false;
        }
        this.A03.A0w(super.A01);
        String A03 = I7.A03(super.A02, this.A0B, this.A07);
        this.A03.A0x(super.A02);
        this.A03.A11(A03);
        AdActivityIntent A05 = C1114Bq.A05(this.A04);
        A05.putExtra(A05(174, 8, 83), this.A05);
        A05.putExtra(A05(ModuleDescriptor.MODULE_VERSION, 25, 78), this.A03);
        A05.putExtra(A05(34, 19, FacebookMediationAdapter.ERROR_NULL_CONTEXT), this.A03);
        A05.putExtra(A05(166, 8, 27), this.A0B);
        if (A03 != null) {
            A05.putExtra(A05(112, 15, 89), A03);
        }
        A05.putExtra(A05(66, 11, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), this.A0A);
        A05.putExtra(A05(FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS, 11, 74), this.A00);
        if (this.A09 != null) {
            A05.putExtra(A05(53, 13, 125), this.A09);
        }
        A0A(A05);
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            A05.setFlags(A05.getFlags() | 268435456);
        }
        ActivityUtils.A03(this.A04);
        try {
            if (ProcessUtils.isRemoteRenderingProcess()) {
                if (!C1114Bq.A0I(this.A04, A05)) {
                    this.A04.A0F().AHI();
                    if (this.A01 != null) {
                        this.A01.AEz(this, AdError.AD_PRESENTATION_ERROR);
                    }
                    return false;
                }
                return true;
            }
            C1114Bq.A0B(this.A04, A05);
            return true;
        } catch (C1112Bo e) {
            String[] strArr = A0F;
            if (strArr[1].charAt(25) != strArr[3].charAt(25)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[7] = "zr3";
            strArr2[6] = "zCM";
            Throwable cause = e.getCause();
            Throwable th = e;
            if (cause != null) {
                th = e.getCause();
            }
            this.A04.A08().AAu(A05(23, 11, 50), AbstractC10358a.A01, new C10368b(th));
            return true;
        }
    }

    public final void A0K(C2322k1 c2322k1, C2L c2l, AnonymousClass38 anonymousClass38, boolean z, String str, String str2) {
        String A05;
        this.A0C.set(false);
        this.A04 = c2322k1;
        this.A01 = c2l;
        this.A0A = anonymousClass38.A02();
        this.A00 = anonymousClass38.A00();
        this.A09 = str2;
        if (this.A0A != null) {
            String str3 = this.A0A;
            String A052 = A05(0, 1, 12);
            String[] strArr = A0F;
            if (strArr[7].length() == strArr[6].length()) {
                String[] strArr2 = A0F;
                strArr2[7] = "x5W";
                strArr2[6] = "dMK";
                A05 = str3.split(A052)[0];
            }
            throw new RuntimeException();
        }
        A05 = A05(0, 0, 100);
        this.A07 = A05;
        this.A03 = C2S.A00(anonymousClass38.A03(), this.A04);
        this.A03.A0z(str);
        this.A03.A0v(anonymousClass38.A01().A06());
        if (this.A03.A1B()) {
            this.A08 = ((C2476mb) this.A03).A1c();
        } else {
            this.A08 = ((AbstractC2478md) this.A03).A1g();
        }
        if (this.A03.A1F()) {
            this.A05 = BG.A08;
            if (this.A03.A17()) {
                this.A04.A0F().AIz(EnumC08741r.A08);
            } else {
                this.A04.A0F().AIz(EnumC08741r.A0A);
            }
        } else {
            switch (this.A03.A0X()) {
                case 0:
                    this.A05 = BG.A0H;
                    this.A04.A0F().AIz(EnumC08741r.A0D);
                    break;
                case 1:
                    this.A05 = BG.A0G;
                    this.A04.A0F().AIz(EnumC08741r.A0C);
                    break;
                case 2:
                    this.A05 = BG.A05;
                    this.A04.A0F().AIz(EnumC08741r.A05);
                    break;
                case 3:
                    this.A05 = BG.A0F;
                    this.A04.A0F().AIz(EnumC08741r.A04);
                    break;
                case 4:
                    this.A05 = BG.A0I;
                    this.A04.A0F().AIz(EnumC08741r.A0E);
                    break;
            }
        }
        if (C10729m.A0u(c2322k1)) {
            C2S c2s = this.A03;
            String[] strArr3 = A0F;
            if (strArr3[4].charAt(19) != strArr3[0].charAt(19)) {
                String[] strArr4 = A0F;
                strArr4[4] = "c2SjyVfNFMTSQhwflPzyjFy3Fjr2snH4";
                strArr4[0] = "k4vT1WhZbJ1Mlr1eks5fTJscMmdnfo8D";
                if (c2s.A1B()) {
                    C2476mb c2476mb = (C2476mb) this.A03;
                    for (int A1W = c2476mb.A1W() - 1; A1W >= 0; A1W--) {
                        AbstractC2478md A1Z = c2476mb.A1Z(A1W);
                        if (AbstractC08821z.A06(this.A04, AbstractC08821z.A01(c2322k1, A1Z.A0u(), A1Z.A1g()), c2322k1.A0A())) {
                            this.A04.A0F().A4s();
                            c2476mb.A1e(A1W);
                            return;
                        }
                    }
                    if (c2476mb.A1W() == 0) {
                        this.A01.AEz(this, AdError.NO_FILL);
                        return;
                    }
                } else if (AbstractC08821z.A06(this.A04, AbstractC08821z.A01(c2322k1, anonymousClass38.A03(), ((AbstractC2478md) this.A03).A1g()), c2322k1.A0A())) {
                    this.A04.A0F().A4s();
                    this.A01.AEz(this, AdError.NO_FILL);
                    return;
                }
            }
            throw new RuntimeException();
        }
        this.A02 = new C2M(this.A0B, this, c2l);
        A07();
        A0D(z);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass23
    public final String A7E() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass23
    public final boolean AJQ() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass23
    public final void onDestroy() {
        A08();
    }
}
