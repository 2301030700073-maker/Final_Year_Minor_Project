package com.facebook.ads.redexgen.core;

import android.view.View;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.InterstitialAdListener;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.m0, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2441m0 extends AnonymousClass24 {
    public static byte[] A01;
    public static String[] A02 = {"swComlxz6aoGHqKS8LOj1g5iAOstdInC", "iLoXwxITRpbgZFbT1koR1uJW4vvDXY2W", "MpkXHfR6HdYIg9t449R", "HQI6v11U6roDlbOuDHGyMjhCWVrAbgmk", "qsbQ14vrFuO8q1N0nwgFIOsRNgh3HWyt", "NXqrvE65RyYHWICx", "E9yzS8MfEszoKvwo", "osh9YHk0bwFUuMRHqHbnPk"};
    public final /* synthetic */ C2439ly A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 112, 105, 47, 35, 34, 56, 62, 35, 32, 32, 41, 62, 108, 37, 63, 108, 34, 57, 32, 32};
    }

    static {
        A01();
    }

    public C2441m0(C2439ly c2439ly) {
        this.A00 = c2439ly;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A02() {
        InterstitialAd interstitialAd;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAd = this.A00.A01;
        if (interstitialAd == null) {
            this.A00.A04 = false;
            interstitialAdExtendedListener = this.A00.A07;
            interstitialAdExtendedListener.onInterstitialActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A04() {
        InterstitialAd interstitialAd;
        InterstitialAd interstitialAd2;
        C1389Mr c1389Mr;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2435lu c2435lu;
        C1389Mr c1389Mr2;
        C1389Mr c1389Mr3;
        C1389Mr c1389Mr4;
        interstitialAd = this.A00.A01;
        if (interstitialAd != null) {
            interstitialAd2 = this.A00.A01;
            interstitialAd2.show();
            return;
        }
        this.A00.A04 = false;
        c1389Mr = this.A00.A03;
        if (c1389Mr != null && C10729m.A24(this.A00.A06)) {
            c1389Mr2 = this.A00.A03;
            c1389Mr2.A0S(new m1(this));
            c1389Mr3 = this.A00.A03;
            c1389Mr3.A0N();
            c1389Mr4 = this.A00.A03;
            c1389Mr4.A0K();
            this.A00.A03 = null;
        }
        interstitialAdExtendedListener = this.A00.A07;
        c2435lu = this.A00.A08;
        interstitialAdExtendedListener.onInterstitialDismissed(c2435lu.A6a());
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A05() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2435lu c2435lu;
        interstitialAdExtendedListener = this.A00.A07;
        c2435lu = this.A00.A08;
        interstitialAdExtendedListener.onInterstitialDisplayed(c2435lu.A6a());
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A06() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdServerFailed();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A07() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdServerSucceeded();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A08() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdCompleted();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0C() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2435lu c2435lu;
        this.A00.A06.A0F().A3A();
        interstitialAdExtendedListener = this.A00.A07;
        c2435lu = this.A00.A08;
        interstitialAdExtendedListener.onAdClicked(c2435lu.A6a());
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0D() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2435lu c2435lu;
        interstitialAdExtendedListener = this.A00.A07;
        c2435lu = this.A00.A08;
        interstitialAdExtendedListener.onLoggingImpression(c2435lu.A6a());
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0E(View view) {
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0F(AnonymousClass23 anonymousClass23) {
        C1389Mr c1389Mr;
        C1389Mr c1389Mr2;
        C2S c2s;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2435lu c2435lu;
        C2S c2s2;
        InterstitialAd interstitialAd;
        InterstitialAdExtendedListener interstitialAdExtendedListener2;
        C2435lu c2435lu2;
        InterstitialAdExtendedListener interstitialAdExtendedListener3;
        C2435lu c2435lu3;
        InterstitialAd interstitialAd2;
        C2435lu c2435lu4;
        C2435lu c2435lu5;
        InterstitialAd interstitialAd3;
        C2435lu c2435lu6;
        C2435lu c2435lu7;
        C2435lu c2435lu8;
        c1389Mr = this.A00.A03;
        if (c1389Mr != null) {
            this.A00.A05 = true;
            C2439ly c2439ly = this.A00;
            c1389Mr2 = this.A00.A03;
            c2439ly.A02 = c1389Mr2.A0I();
            c2s = this.A00.A02;
            if (!(c2s instanceof AbstractC2478md)) {
                interstitialAdExtendedListener = this.A00.A07;
                String[] strArr = A02;
                if (strArr[0].charAt(8) == strArr[3].charAt(8)) {
                    String[] strArr2 = A02;
                    strArr2[6] = "JHAXxmwzHKs3NajX";
                    strArr2[5] = "FHZeNyejFCAXh3Vz";
                    c2435lu = this.A00.A08;
                    interstitialAdExtendedListener.onAdLoaded(c2435lu.A6a());
                    return;
                }
            } else {
                c2s2 = this.A00.A02;
                final AbstractC2478md abstractC2478md = (AbstractC2478md) c2s2;
                if (abstractC2478md.A1Z() > 0) {
                    C6 c6 = new C6();
                    C2322k1 c2322k1 = this.A00.A06;
                    c2435lu6 = this.A00.A08;
                    if (c6.A09(c2322k1, c2435lu6.A08(), abstractC2478md.A1Z())) {
                        c6.A08(this.A00.A06, true);
                        C2439ly c2439ly2 = this.A00;
                        C2322k1 c2322k12 = this.A00.A06;
                        c2435lu7 = this.A00.A08;
                        String A0A = c2435lu7.A0A();
                        c2435lu8 = this.A00.A08;
                        c2439ly2.A01 = c6.A06(c2322k12, A0A, c2435lu8.A08());
                    } else {
                        C2439ly c2439ly3 = this.A00;
                        if (A02[1].charAt(2) != 'w') {
                            A02[7] = "alFbtn3b1";
                            c6.A08(c2439ly3.A06, false);
                        } else {
                            String[] strArr3 = A02;
                            strArr3[6] = "OkLAbmcEeyte5Vfo";
                            strArr3[5] = "zgaU15rF2mVDrexS";
                            c6.A08(c2439ly3.A06, false);
                        }
                    }
                }
                C2439ly c2439ly4 = this.A00;
                if (A02[1].charAt(2) != 'w') {
                    A02[1] = "23I4hcZMgJ395X2lYna8PMjzW0ozt3hz";
                    interstitialAd = c2439ly4.A01;
                    if (interstitialAd != null) {
                        abstractC2478md.A1l(true);
                        interstitialAd2 = this.A00.A01;
                        InterstitialAd.InterstitialAdLoadConfigBuilder withAdListener = interstitialAd2.buildLoadAdConfig().withAdListener(new InterstitialAdListener() { // from class: com.facebook.ads.redexgen.X.3H
                            @Override // com.facebook.ads.AdListener
                            public final void onAdClicked(Ad ad) {
                            }

                            @Override // com.facebook.ads.AdListener
                            public final void onAdLoaded(Ad ad) {
                                InterstitialAdExtendedListener interstitialAdExtendedListener4;
                                C2435lu c2435lu9;
                                interstitialAdExtendedListener4 = C2441m0.this.A00.A07;
                                c2435lu9 = C2441m0.this.A00.A08;
                                interstitialAdExtendedListener4.onAdLoaded(c2435lu9.A6a());
                            }

                            @Override // com.facebook.ads.AdListener
                            public final void onError(Ad ad, AdError adError) {
                                InterstitialAdExtendedListener interstitialAdExtendedListener4;
                                C2435lu c2435lu9;
                                C2441m0.this.A00.A01 = null;
                                abstractC2478md.A1l(false);
                                interstitialAdExtendedListener4 = C2441m0.this.A00.A07;
                                c2435lu9 = C2441m0.this.A00.A08;
                                interstitialAdExtendedListener4.onAdLoaded(c2435lu9.A6a());
                            }

                            @Override // com.facebook.ads.InterstitialAdListener
                            public final void onInterstitialDismissed(Ad ad) {
                                C1389Mr c1389Mr3;
                                InterstitialAdExtendedListener interstitialAdExtendedListener4;
                                C2435lu c2435lu9;
                                C1389Mr c1389Mr4;
                                C1389Mr c1389Mr5;
                                C1389Mr c1389Mr6;
                                C2441m0.this.A00.A04 = false;
                                c1389Mr3 = C2441m0.this.A00.A03;
                                if (c1389Mr3 != null) {
                                    c1389Mr4 = C2441m0.this.A00.A03;
                                    c1389Mr4.A0S(new C2442m2(this));
                                    c1389Mr5 = C2441m0.this.A00.A03;
                                    c1389Mr5.A0N();
                                    c1389Mr6 = C2441m0.this.A00.A03;
                                    c1389Mr6.A0K();
                                    C2441m0.this.A00.A03 = null;
                                }
                                interstitialAdExtendedListener4 = C2441m0.this.A00.A07;
                                c2435lu9 = C2441m0.this.A00.A08;
                                interstitialAdExtendedListener4.onInterstitialDismissed(c2435lu9.A6a());
                            }

                            @Override // com.facebook.ads.InterstitialAdListener
                            public final void onInterstitialDisplayed(Ad ad) {
                            }

                            @Override // com.facebook.ads.AdListener
                            public final void onLoggingImpression(Ad ad) {
                            }
                        });
                        c2435lu4 = this.A00.A08;
                        InterstitialAd.InterstitialAdLoadConfigBuilder withCacheFlags = withAdListener.withCacheFlags(c2435lu4.A0B());
                        c2435lu5 = this.A00.A08;
                        InterstitialAd.InterstitialLoadAdConfig loadAdConfig = withCacheFlags.withRewardData(c2435lu5.A03()).build();
                        interstitialAd3 = this.A00.A01;
                        interstitialAd3.loadAd(loadAdConfig);
                        return;
                    }
                    C2439ly c2439ly5 = this.A00;
                    String[] strArr4 = A02;
                    if (strArr4[0].charAt(8) != strArr4[3].charAt(8)) {
                        interstitialAdExtendedListener3 = c2439ly5.A07;
                        c2435lu3 = this.A00.A08;
                        interstitialAdExtendedListener3.onAdLoaded(c2435lu3.A6a());
                        return;
                    } else {
                        A02[2] = "joZPUUFug9Ts";
                        interstitialAdExtendedListener2 = c2439ly5.A07;
                        c2435lu2 = this.A00.A08;
                        interstitialAdExtendedListener2.onAdLoaded(c2435lu2.A6a());
                        return;
                    }
                }
            }
            throw new RuntimeException();
        }
        this.A00.A06.A08().AAu(A00(0, 3, 98), AbstractC10358a.A0N, new C10368b(A00(3, 18, 46)));
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0G(C1091Ag c1091Ag) {
        long j;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C2435lu c2435lu;
        InterfaceC08621f A0F = this.A00.A06.A0F();
        j = this.A00.A00;
        A0F.A3D(C1140Cu.A01(j), c1091Ag.A03().getErrorCode(), c1091Ag.A04());
        interstitialAdExtendedListener = this.A00.A07;
        c2435lu = this.A00.A08;
        interstitialAdExtendedListener.onError(c2435lu.A6a(), C8.A00(c1091Ag));
    }
}
