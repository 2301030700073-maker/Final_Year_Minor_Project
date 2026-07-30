package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

/* renamed from: com.facebook.ads.redexgen.X.hW, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2173hW extends AbstractC1153Dh {
    public C1329Kb A00;
    public boolean A01;
    public boolean A02;
    public final ViewGroup A03;
    public final C10297t A04;
    public final A7 A05;
    public final C1855cL A06;
    public final AbstractC1837c3 A07;
    public final AbstractC1835c1 A08;
    public final C1809bb A09;
    public final ViewOnClickListenerC1802bU A0A;
    public final C1801bT A0B;
    public final JK A0C;
    public final JL A0D;

    public C2173hW(C2322k1 c2322k1, A7 a7, C10297t c10297t, AF af, View.OnClickListener onClickListener) {
        super(c2322k1, onClickListener);
        this.A02 = false;
        this.A01 = false;
        this.A07 = new C1367Lo(this);
        this.A08 = new C1366Ln(this);
        this.A05 = a7;
        this.A04 = c10297t;
        this.A0C = A00();
        this.A0D = A07();
        this.A03 = new FrameLayout(c2322k1);
        addView(this.A03, new RelativeLayout.LayoutParams(-1, -1));
        this.A06 = A01(af);
        this.A0A = A04();
        this.A09 = A03();
        this.A0B = A06(af);
        A0C();
    }

    private C2179hc A00() {
        return new C2179hc(this);
    }

    private C1855cL A01(AF af) {
        C1855cL c1855cL = new C1855cL(super.A01);
        D3.A0I(c1855cL);
        c1855cL.setFunnelLoggingHandler(af);
        c1855cL.getEventBus().A03(this.A07, this.A08);
        if (C10729m.A1S(super.A01)) {
            c1855cL.setVolume(0.0f);
        }
        if (!C10729m.A1N(super.A01)) {
            c1855cL.setOnClickListener(new ViewOnClickListenerC1155Dj(this));
        }
        RelativeLayout.LayoutParams videoLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        videoLayoutParams.addRule(13);
        addView(c1855cL, videoLayoutParams);
        return c1855cL;
    }

    private C1809bb A03() {
        C1809bb c1809bb = new C1809bb(super.A01);
        c1809bb.setTextColor(-1);
        D3.A0W(c1809bb, false, 12);
        c1809bb.setGravity(17);
        this.A06.A0h(c1809bb);
        return c1809bb;
    }

    private ViewOnClickListenerC1802bU A04() {
        ViewOnClickListenerC1802bU viewOnClickListenerC1802bU = new ViewOnClickListenerC1802bU(super.A01);
        this.A06.A0h(viewOnClickListenerC1802bU);
        return viewOnClickListenerC1802bU;
    }

    private C1801bT A06(AF af) {
        C1801bT c1801bT = new C1801bT(super.A01, af, true);
        c1801bT.setBackgroundPaintColor(855638016);
        this.A06.A0h(c1801bT);
        return c1801bT;
    }

    private JL A07() {
        return new JL(this, 50, true, new WeakReference(this.A0C), super.A01);
    }

    private void A08() {
        if (getVisibility() == 0 && this.A01 && hasWindowFocus()) {
            this.A0D.A0U();
        } else {
            this.A0D.A0V();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1153Dh
    public final void A0A() {
        this.A0D.A0V();
        this.A06.getEventBus().A04(this.A07, this.A08);
        this.A06.A0Y();
        D3.A0H(this.A06);
        if (this.A00 != null) {
            this.A00.A0p();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1153Dh
    public final void A0B() {
        this.A0B.A09();
        this.A02 = true;
        this.A0D.A0U();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1153Dh
    public final void A0C() {
        super.A0C();
        if (C10729m.A1T(super.A01)) {
            D3.A0H(this.A0A);
            this.A0A.setLayoutParams(A00(true, false));
            addView(this.A0A);
        }
        if (C10729m.A1P(super.A01)) {
            D3.A0H(this.A09);
            this.A09.setLayoutParams(A00(true, true));
            addView(this.A09);
        }
        if (C10729m.A1R(super.A01)) {
            D3.A0H(this.A0B);
            this.A0B.setLayoutParams(A00(false, false));
            addView(this.A0B);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1153Dh
    public final boolean A0D() {
        return this.A06.A0n();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1153Dh
    public final boolean A0E() {
        if (getMeasuredWidth() <= 0 || this.A06.getMeasuredWidth() <= 0) {
            return true;
        }
        int measuredWidth = (int) ((getMeasuredWidth() - this.A06.getMeasuredWidth()) / 2.0d);
        int i = AbstractC1153Dh.A05;
        int widthGap = AbstractC1153Dh.A04;
        return measuredWidth > i + (widthGap * 2);
    }

    public final C2173hW A0F(String str, String str2, String str3, String str4, String str5) {
        this.A06.setVideoURI(this.A04.A0S(str2));
        this.A00 = new C1329Kb(super.A01, this.A05, this.A06, str);
        if (str3 != null && !TextUtils.isEmpty(str3)) {
            new AsyncTaskC2117gc(this.A03, super.A01).A05(this.A03.getHeight(), this.A03.getWidth()).A06(new C2174hX(this)).A07(str3);
        }
        if (str5 != null) {
            this.A0A.setPlayAccessibilityLabel(str4);
        }
        if (str5 != null) {
            this.A0A.setPauseAccessibilityLabel(str5);
        }
        return this;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1153Dh
    public int getMediaViewId() {
        return this.A06.getId();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A01 = true;
        A08();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A01 = false;
        A08();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A08();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A08();
    }
}
