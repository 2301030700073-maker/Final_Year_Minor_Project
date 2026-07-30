package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.hh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2184hh extends RelativeLayout implements DS {
    public static byte[] A0F;
    public View A00;
    public CH A01;
    public HM A02;
    public boolean A03;
    public boolean A04;
    public C2P A05;
    public I7 A06;
    public boolean A07;
    public final ViewOnSystemUiVisibilityChangeListenerC1136Cq A08;
    public final DR A09;
    public final AbstractC2478md A0A;
    public final C2322k1 A0B;
    public final A7 A0C;
    public final AF A0D;
    public final DQ A0E;

    static {
        A0R();
    }

    public static String A0O(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 37);
        }
        return new String(copyOfRange);
    }

    public static void A0R() {
        A0F = new byte[]{-93, -81, -83, 110, -90, -95, -93, -91, -94, -81, -81, -85, 110, -95, -92, -77, 110, -87, -82, -76, -91, -78, -77, -76, -87, -76, -87, -95, -84, 110, -87, -83, -80, -78, -91, -77, -77, -87, -81, -82, 110, -84, -81, -89, -89, -91, -92};
    }

    public abstract void A0W();

    public abstract boolean A0e();

    public abstract int getCloseButtonStyle();

    public AbstractC2184hh(C2322k1 c2322k1, A7 a7, DR dr, AbstractC2478md abstractC2478md) {
        super(c2322k1);
        this.A07 = false;
        this.A04 = false;
        this.A03 = false;
        this.A0B = c2322k1;
        this.A0C = a7;
        this.A09 = dr;
        this.A08 = new ViewOnSystemUiVisibilityChangeListenerC1136Cq(this);
        this.A0A = abstractC2478md;
        this.A0D = new AF(this.A0A.A1g(), this.A0C);
        this.A0E = new FullScreenAdToolbar(this.A0B, getAudienceNetworkListener(), this.A0D, 0, this.A0A.A1V(), false);
        if (Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
    }

    private C08852c A0M(int i) {
        if (i == 1) {
            return this.A05.A01();
        }
        return this.A05.A00();
    }

    private void A0P() {
        removeAllViews();
        D3.A0H(this);
    }

    private void A0Q() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (A0b() && this.A02 == null) {
            this.A04 = true;
            this.A02 = new HK(this.A0B, this.A0A.A1b().A0G(), this.A0A.A1e()).A0A(this.A0A.A1a().A01()).A0F();
            AH.A04(this.A02, this.A0D, AE.A0U);
            this.A09.A3u(this, 0, layoutParams);
            this.A09.A3u(this.A02, 1, layoutParams);
            this.A02.A04(new C2186hk(this));
            return;
        }
        this.A09.A3u(this, 0, layoutParams);
    }

    private void A0S(C08852c c08852c, boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A0E.getToolbarHeight());
        layoutParams.addRule(10);
        this.A0E.A0A(c08852c, ViewOnClickListenerC2111gW.A09(this.A0A));
        addView(this.A0E, layoutParams);
    }

    public final void A0V() {
        if (this.A00 == null || !(this.A00 instanceof AbstractC1217Ft)) {
            return;
        }
        if (A0c()) {
            ((AbstractC1217Ft) this.A00).A13();
        } else {
            ((AbstractC1217Ft) this.A00).A12();
        }
    }

    public final void A0X(int i) {
        this.A01 = new CH(i, new C2185hi(this, i));
        this.A03 = true;
        A0V();
        this.A01.A07();
    }

    public final void A0Y(View view, boolean z, int i) {
        this.A0E.setFullscreen(z);
        this.A00 = view;
        this.A08.A05(EnumC1135Cp.A02);
        A0P();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, z ? 0 : this.A0E.getToolbarHeight(), 0, 0);
        layoutParams.addRule(12);
        addView(view, layoutParams);
        C08852c A0M = A0M(i);
        A0S(A0M, z);
        D3.A0K(this, A0M.A08(false));
        if (this.A09 != null) {
            A0Q();
            if (z) {
                this.A08.A05(EnumC1135Cp.A03);
            }
        }
    }

    public final void A0Z(C09886e c09886e) {
        this.A08.A04(c09886e.A05().getWindow());
        this.A05 = this.A0A.A1a();
        C2T c2t = null;
        C2T adInfo = this.A0A.A1b();
        if (adInfo != null) {
            C2T adInfo2 = this.A0A.A1b();
            if (adInfo2 != null) {
                c2t = this.A0A.A1b();
            }
        }
        this.A0E.setPageDetails(this.A0A.A1e(), this.A0A.A1g(), c2t != null ? c2t.A0F().A04() : 0, this.A0A.A1f());
        this.A0E.setToolbarListener(new C2188hm(this, c09886e));
    }

    public final void A0a(C09886e c09886e) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200L);
        alphaAnimation.setAnimationListener(new AnimationAnimationListenerC1150De(this, this, c09886e));
        startAnimation(alphaAnimation);
    }

    public final boolean A0b() {
        return !this.A0A.A1i().isEmpty() && this.A0A.A1b().A0S();
    }

    public final boolean A0c() {
        return this.A03;
    }

    public final boolean A0d() {
        return this.A04;
    }

    public void AEP(boolean z) {
        if (this.A01 != null && this.A01.A05()) {
            this.A01.A06();
        }
    }

    public void AEs(boolean z) {
        if (this.A01 != null && !this.A01.A04()) {
            this.A01.A07();
        }
    }

    public A7 getAdEventManager() {
        return this.A0C;
    }

    public DR getAudienceNetworkListener() {
        return this.A09;
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public String getCurrentClientToken() {
        return this.A0A.A1g();
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
    }

    public void onDestroy() {
        this.A08.A03();
        this.A0E.setToolbarListener(null);
        A0P();
    }

    public void setImpressionRecordingFlag(C1141Cv c1141Cv) {
        c1141Cv.A05();
        if (getAudienceNetworkListener() != null) {
            if (this.A07) {
                getAudienceNetworkListener().A4Z(new C2158hH().A86());
            } else {
                getAudienceNetworkListener().A4Z(A0O(0, 47, 27));
            }
        }
    }

    public void setListener(DR dr) {
    }

    public void setServerSideRewardHandler(I7 i7) {
        this.A06 = i7;
    }
}
