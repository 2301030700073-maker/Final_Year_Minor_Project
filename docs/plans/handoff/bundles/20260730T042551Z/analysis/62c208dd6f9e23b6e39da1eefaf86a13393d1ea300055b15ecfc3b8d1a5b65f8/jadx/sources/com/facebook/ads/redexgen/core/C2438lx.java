package com.facebook.ads.redexgen.core;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.lx, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2438lx extends AnonymousClass24 {
    public static byte[] A01;
    public final /* synthetic */ C2436lv A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 43);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{9, 24, 1, 36, 40, 41, 51, 53, 40, 43, 43, 34, 53, 103, 46, 52, 103, 41, 50, 43, 43};
    }

    public C2438lx(C2436lv c2436lv) {
        this.A00 = c2436lv;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A06() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardServerFailed();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A07() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardServerSuccess();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A08() {
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            s2SRewardedVideoAdExtendedListener.onRewardedVideoCompleted();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A09() {
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            s2SRewardedVideoAdExtendedListener.onRewardedVideoActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0A() {
        RewardedVideoAd rewardedVideoAd;
        RewardedVideoAd rewardedVideoAd2;
        long j;
        RewardedVideoAd rewardedVideoAd3;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd != null) {
            rewardedVideoAd2 = this.A00.A03;
            C7F c7f = (C7F) rewardedVideoAd2.buildShowAdConfig();
            long currentTimeMillis = System.currentTimeMillis();
            j = this.A00.A02;
            c7f.A02(currentTimeMillis - j);
            rewardedVideoAd3 = this.A00.A03;
            rewardedVideoAd3.show(c7f.build());
            return;
        }
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardedVideoClosed();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0C() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2423li c2423li;
        this.A00.A07.A0F().A3A();
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c2423li = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onAdClicked(c2423li.A6a());
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0D() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2423li c2423li;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c2423li = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onLoggingImpression(c2423li.A6a());
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0F(AnonymousClass23 anonymousClass23) {
        C1379Ma c1379Ma;
        C2423li c2423li;
        C2423li c2423li2;
        C1379Ma c1379Ma2;
        C2S c2s;
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2423li c2423li3;
        C2S c2s2;
        RewardedVideoAd rewardedVideoAd2;
        C2S c2s3;
        C2423li c2423li4;
        RewardedVideoAd rewardedVideoAd3;
        C2S c2s4;
        C2423li c2423li5;
        C2423li c2423li6;
        C2423li c2423li7;
        C2S c2s5;
        C2423li c2423li8;
        c1379Ma = this.A00.A05;
        if (c1379Ma == null) {
            this.A00.A07.A08().AAu(A00(0, 3, 67), AbstractC10358a.A0N, new C10368b(A00(3, 18, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS)));
            return;
        }
        AbstractC2482mh abstractC2482mh = (AbstractC2482mh) anonymousClass23;
        c2423li = this.A00.A09;
        if (c2423li.A03 != null) {
            c2423li8 = this.A00.A09;
            abstractC2482mh.A02(c2423li8.A03);
        }
        c2423li2 = this.A00.A09;
        c2423li2.A00 = abstractC2482mh.A0H();
        this.A00.A06 = true;
        C2436lv c2436lv = this.A00;
        c1379Ma2 = this.A00.A05;
        c2436lv.A04 = c1379Ma2.A0I();
        c2s = this.A00.A04;
        if (c2s != null) {
            int i = 0;
            c2s4 = this.A00.A04;
            if (!c2s4.A1B()) {
                c2s5 = this.A00.A04;
                i = ((AbstractC2478md) c2s5).A1Z();
            }
            if (i > 0) {
                C6 c6 = new C6();
                C2322k1 c2322k1 = this.A00.A07;
                c2423li5 = this.A00.A09;
                if (c6.A09(c2322k1, c2423li5.A06, i)) {
                    c6.A08(this.A00.A07, true);
                    C2436lv c2436lv2 = this.A00;
                    C2322k1 c2322k12 = this.A00.A07;
                    c2423li6 = this.A00.A09;
                    String str = c2423li6.A0D;
                    c2423li7 = this.A00.A09;
                    c2436lv2.A03 = c6.A07(c2322k12, str, c2423li7.A06);
                } else {
                    c6.A08(this.A00.A07, false);
                }
            }
        }
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            c2423li3 = this.A00.A09;
            s2SRewardedVideoAdExtendedListener.onAdLoaded(c2423li3.A6a());
            return;
        }
        c2s2 = this.A00.A04;
        ((AbstractC2478md) c2s2).A1l(true);
        rewardedVideoAd2 = this.A00.A03;
        RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withFailOnCacheFailureEnabled = rewardedVideoAd2.buildLoadAdConfig().withFailOnCacheFailureEnabled(true);
        c2s3 = this.A00.A04;
        RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withRewardData = withFailOnCacheFailureEnabled.withRewardData(c2s3.A0c());
        c2423li4 = this.A00.A09;
        RewardedVideoAd.RewardedVideoLoadAdConfig loadAdConfig = withRewardData.withAdExperience(c2423li4.A02).withAdListener(new RewardedVideoAdListener() { // from class: com.facebook.ads.redexgen.X.3I
            @Override // com.facebook.ads.AdListener
            public final void onAdClicked(Ad ad) {
            }

            @Override // com.facebook.ads.AdListener
            public final void onAdLoaded(Ad ad) {
                S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener2;
                C2423li c2423li9;
                s2SRewardedVideoAdExtendedListener2 = C2438lx.this.A00.A08;
                c2423li9 = C2438lx.this.A00.A09;
                s2SRewardedVideoAdExtendedListener2.onAdLoaded(c2423li9.A6a());
            }

            @Override // com.facebook.ads.AdListener
            public final void onError(Ad ad, AdError adError) {
                C2S c2s6;
                S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener2;
                C2423li c2423li9;
                C2438lx.this.A00.A03 = null;
                c2s6 = C2438lx.this.A00.A04;
                ((AbstractC2478md) c2s6).A1l(false);
                s2SRewardedVideoAdExtendedListener2 = C2438lx.this.A00.A08;
                c2423li9 = C2438lx.this.A00.A09;
                s2SRewardedVideoAdExtendedListener2.onAdLoaded(c2423li9.A6a());
            }

            @Override // com.facebook.ads.AdListener
            public final void onLoggingImpression(Ad ad) {
            }

            @Override // com.facebook.ads.RewardedVideoAdListener
            public final void onRewardedVideoClosed() {
                S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener2;
                s2SRewardedVideoAdExtendedListener2 = C2438lx.this.A00.A08;
                s2SRewardedVideoAdExtendedListener2.onRewardedVideoClosed();
            }

            @Override // com.facebook.ads.RewardedVideoAdListener
            public final void onRewardedVideoCompleted() {
                S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener2;
                s2SRewardedVideoAdExtendedListener2 = C2438lx.this.A00.A08;
                s2SRewardedVideoAdExtendedListener2.onRewardedVideoCompleted();
            }
        }).build();
        rewardedVideoAd3 = this.A00.A03;
        rewardedVideoAd3.loadAd(loadAdConfig);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass24
    public final void A0G(C1091Ag c1091Ag) {
        C2423li c2423li;
        long j;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C2423li c2423li2;
        this.A00.A0D(true);
        c2423li = this.A00.A09;
        InterfaceC08621f A0F = c2423li.A0B.A0F();
        j = this.A00.A01;
        A0F.A3D(C1140Cu.A01(j), c1091Ag.A03().getErrorCode(), c1091Ag.A04());
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c2423li2 = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onError(c2423li2.A6a(), C8.A00(c1091Ag));
    }
}
