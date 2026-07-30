package com.facebook.ads.redexgen.core;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.text.NumberFormat;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class LS extends AbstractC2097gH {
    public static byte[] A0J;
    public static String[] A0K = {"zra6hnpaifP7bxfZB5bQOHnqie2tQjg", "wy9og3M9LeWlDzkU0RS7zgtaq3xQKlMR", "jyAiwm88v9hsYzrfl9gFIABQTfRULZfl", "Wwy1p0nUO1H5ggrsb6VvEsAvpBZyxSvp", "wjN7zQjrZyyYli8cgu97rk5B2y3BycTh", "DSxnyYt0igg0K0GbJ5jSMl2rvJzineXI", "irrLwQMNjn2DglpbBC8hfvG7oGwbzPRC", "9jAewdJckPVrzkqluL1z0QkIRDh51Ovv"};
    public static final int A0L;
    public static final int A0M;
    public static final int A0N;
    public static final int A0O;
    public static final int A0P;
    public static final int A0Q;
    public static final int A0R;
    public static final int A0S;
    public static final int A0T;
    public static final int A0U;
    public static final int A0V;
    public static final int A0W;
    public static final int A0X;
    public static final int A0Y;
    public static final int A0Z;
    public View A00;
    public View A01;
    public ImageView A02;
    public C2322k1 A03;
    public CH A04;
    public DQ A05;
    public DQ A06;
    public C2071fr A07;
    public C1269Ht A08;
    public C1275Hz A09;
    public C1767as A0A;
    public boolean A0B;
    public boolean A0C;
    public final DR A0D;
    public final InterfaceC1200Fc A0E;
    public final C1201Fd A0F;
    public final C1221Fx A0G;
    public final C1855cL A0H;
    public final C1777b5 A0I;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 85);
        }
        return new String(copyOfRange);
    }

    public static void A0C() {
        A0J = new byte[]{-23, -117, 1, -6, 15, -2, 24, 12, 13, -6, 11, 13, 2, 7, 0, 24, -6, 7, 2, 6, -6, 13, 2, 8, 7, 12, 24, 9, 5, -6, 18, -2, -3, 26, 29, 33, 19, 45, 32, 19, 37, 15, 32, 18, 45, 33, 17, 32, 19, 19, 28, 45, 33, 22, 29, 37, 28, -7, -29, -11, 1, -25, -16, -26, 1, -27, -29, -12, -26, 1, -11, -22, -15, -7, -16, -17, -19, -33, -20, -35, -26, -29, -35, -27};
    }

    static {
        A0C();
        A0O = (int) (CP.A02 * 16.0f);
        A0Y = (int) (CP.A02 * 12.0f);
        A0L = (int) (CP.A02 * 8.0f);
        A0M = (int) (CP.A02 * 10.0f);
        A0T = (int) (CP.A02 * 20.0f);
        A0U = (int) (CP.A02 * 13.0f);
        A0P = (int) (CP.A02 * 48.0f);
        A0X = (int) (CP.A02 * 14.0f);
        A0V = (int) (CP.A02 * 12.0f);
        A0N = (int) (CP.A02 * 8.0f);
        A0W = AnonymousClass43.A02(-1, 77);
        A0S = (int) (CP.A02 * 16.0f);
        A0Z = (int) (CP.A02 * 12.0f);
        A0Q = (int) (CP.A03 * 12.0f);
        A0R = (int) (CP.A03 * 16.0f);
    }

    public LS(C1221Fx c1221Fx) {
        super(c1221Fx, false);
        this.A0C = false;
        this.A0B = false;
        this.A03 = c1221Fx.A05();
        this.A06 = c1221Fx.A0B();
        this.A05 = c1221Fx.A0A();
        this.A0G = c1221Fx;
        this.A01 = new View(this.A03);
        D3.A0I(this.A01);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13);
        addView(this.A01, layoutParams);
        A09();
        this.A0D = c1221Fx.A0C();
        AbstractC1210Fm.A00(c1221Fx.A05(), this, getAdInfo().A0F().A08());
        this.A0H = A01(c1221Fx);
        getAdDetailsView().bringToFront();
        if (!getAdDataBundle().A1P()) {
            this.A0I = A02(c1221Fx);
        } else {
            this.A0I = null;
        }
        if (getAdDataBundle().A1O()) {
            if (this.A0I != null) {
                this.A0I.setVisibility(8);
            }
            getAdDetailsView().setVisibility(8);
            A08();
        }
        A1D();
        this.A08 = new C1269Ht(this.A03, c1221Fx.A06(), getAdDataBundle());
        this.A0E = new C2093gD(this);
        this.A0F = new C1201Fd(c1221Fx, getAdDataBundle(), this.A0H, this.A0I, getAdDetailsView(), this.A0D, this.A0E);
        CK A0A = super.A08.A0A(getAdDataBundle());
        this.A03.A0H().A00(A0A.A01);
        getCtaButton().setCreativeAsCtaLoggingHelper(super.A08);
        if (A0A.A00) {
            this.A0H.getVideoImplView().setOnClickListener(new G0(this));
        } else if (C10729m.A1I(getAdContextWrapper())) {
            FE.A00(this.A0H.getVideoImplView(), C10729m.A1J(getAdContextWrapper()), new G1(this));
        }
        if (c1221Fx.A04().A1L()) {
            this.A07 = new C2071fr(c1221Fx);
            View view = this.A07;
            ViewGroup.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            addView(view, layoutParams2);
            getAdDetailsView().setVisibility(8);
        }
    }

    private C1855cL A01(C1221Fx c1221Fx) {
        RelativeLayout.LayoutParams layoutParams;
        C1855cL c1855cL = (C1855cL) c1221Fx.A02();
        int A1A = A1A(c1221Fx.A0B());
        this.A02 = (ImageView) c1221Fx.A03();
        if (!getAdDataBundle().A1P()) {
            ImageView imageView = this.A02;
            int i = AbstractC2097gH.A0J;
            int i2 = AbstractC2097gH.A0J;
            int toolbarHeight = AbstractC2097gH.A0J;
            imageView.setPadding(i, i2, toolbarHeight, AbstractC2097gH.A0J);
            int toolbarHeight2 = AbstractC2097gH.A0K;
            layoutParams = new RelativeLayout.LayoutParams(toolbarHeight2, AbstractC2097gH.A0K);
            int toolbarHeight3 = AbstractC2097gH.A0I;
            layoutParams.setMargins(0, A1A, toolbarHeight3, 0);
            layoutParams.addRule(11);
        } else {
            int toolbarHeight4 = AbstractC2097gH.A0L;
            layoutParams = new RelativeLayout.LayoutParams(toolbarHeight4, AbstractC2097gH.A0L);
            int i3 = A0R;
            int i4 = A0Q;
            int toolbarHeight5 = A0R;
            layoutParams.setMargins(i3, i4, toolbarHeight5, A0Q);
            layoutParams.addRule(9);
        }
        layoutParams.addRule(10);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        if (getAdDataBundle().A1O() && c1855cL != null) {
            View videoView = c1855cL.getVideoView();
            int paddingLeft = c1855cL.getVideoView().getPaddingLeft();
            int paddingTop = c1855cL.getVideoView().getPaddingTop();
            int paddingRight = c1855cL.getVideoView().getPaddingRight();
            int toolbarHeight6 = c1855cL.getVideoView().getPaddingBottom();
            videoView.setPadding(paddingLeft, paddingTop, paddingRight, toolbarHeight6 + A0Z);
        }
        layoutParams2.addRule(13);
        addView(c1855cL, layoutParams2);
        c1855cL.addView(this.A02, layoutParams);
        return c1855cL;
    }

    private C1777b5 A02(C1221Fx c1221Fx) {
        C1777b5 A0D = c1221Fx.A0D();
        A0D.A06(-1, AbstractC2097gH.A0D, false);
        A0D.setPadding(AbstractC2097gH.A0O, AbstractC2097gH.A0O, AbstractC2097gH.A0O, AbstractC2097gH.A0O);
        RelativeLayout.LayoutParams progressBarLayoutParams = new RelativeLayout.LayoutParams(-1, AbstractC2097gH.A0N);
        progressBarLayoutParams.addRule(12);
        addView(A0D, progressBarLayoutParams);
        return A0D;
    }

    private void A04() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (this.A09 != null) {
            addView(this.A09.A0O(), layoutParams);
        }
    }

    private void A05() {
        addView(new G9(this.A0G.A05(), getAdDataBundle(), this.A0G.A0C()).A08(getCtaButton()));
    }

    private void A06() {
        D3.A0Z(this.A02, getCtaButton(), getAdDetailsView(), this.A01, this.A0F, this.A0G.A0B());
        for (IQ iq : this.A0H.getPlugins()) {
            if (iq instanceof IX) {
                this.A0H.A0i(iq);
                return;
            }
        }
    }

    private void A07() {
        if (getAnimationPlugin() != null) {
            getAnimationPlugin().A0E();
            this.A0H.A0i(getAnimationPlugin());
        }
    }

    private void A08() {
        RelativeLayout.LayoutParams layoutParams;
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        A0E(relativeLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, A0O, 0);
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams appMetadataLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        appMetadataLayoutParams.setMargins(A0O, A0Y, A0O, A0Y);
        appMetadataLayoutParams.addRule(12);
        relativeLayout2.addView(relativeLayout, layoutParams2);
        ViewOnClickListenerC2111gW ctaButton = getCtaButton();
        ctaButton.setTextSize(14.0f);
        ctaButton.setIncludeFontPadding(false);
        ctaButton.setTextColor(-1);
        layoutParams2.addRule(0, ctaButton.getId());
        if (!getAdDataBundle().A1M()) {
            ctaButton.setPadding(A0M, A0M, A0M, A0M);
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(6, relativeLayout.getId());
            layoutParams.addRule(8, relativeLayout.getId());
            ctaButton.setBackgroundColor(-12549889);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            D3.A0Q(ctaButton, D3.A06(-16738826, A0L));
            ctaButton.setPadding(A0T, A0U, A0T, A0U);
            ctaButton.setStateListAnimator(null);
            D3.A0V(ctaButton);
        }
        layoutParams.addRule(11);
        if (ctaButton.getParent() != null) {
            D3.A0Z(ctaButton);
        }
        relativeLayout2.addView(ctaButton, layoutParams);
        addView(relativeLayout2, appMetadataLayoutParams);
        relativeLayout2.bringToFront();
    }

    private void A09() {
        if (this.A06 == null) {
            return;
        }
        this.A0A = new C1767as(this.A06, 400, -this.A06.getToolbarHeight(), 0);
    }

    private void A0A() {
        new AF(getAdDataBundle().A1g(), getAdEventManager()).A04(AE.A0z, null);
        if (!getAdInfo().A0R()) {
            return;
        }
        super.A09.set(true);
        D3.A0R(this);
        D3.A0Z(this.A0I, this.A0F, this.A00);
        D3.A0J(this.A06);
        Pair<EnumC1268Hs, View> A03 = this.A08.A03(getCtaButton());
        this.A00 = (View) A03.second;
        A0F((EnumC1268Hs) A03.first);
        if (getAdInfo().A0I().A00() >= 0) {
            this.A0B = true;
            if (this.A06 != null) {
                this.A06.setToolbarActionMode(getAdDataBundle().A1o() ? 8 : 2);
                this.A06.setProgressImmediate(0.0f);
            }
            this.A04 = new CH((int) getAdInfo().A0I().A00(), 20.0f, 20L, new Handler(Looper.getMainLooper()), new C2092gC(this));
            this.A04.A07();
        }
    }

    private void A0B() {
        if (this.A0A != null) {
            this.A0A.A40(true, false);
        }
        if (!this.A0G.A04().A1P() && !getAdDataBundle().A1O() && getAdDetailsAnimation() != null) {
            C1767as adDetailsAnimation = getAdDetailsAnimation();
            String[] strArr = A0K;
            if (strArr[3].charAt(21) == strArr[6].charAt(21)) {
                throw new RuntimeException();
            }
            A0K[1] = "NNplzEPPEJhw482VYN3vhqCWu3reteuX";
            adDetailsAnimation.A40(true, false);
        }
    }

    private void A0D(int i) {
        if (!getAdDataBundle().A1P()) {
            return;
        }
        this.A03.A0F().AJo(i);
        this.A0H.A0b(i);
        if (getAdDetailsView() instanceof AbstractC2116gb) {
            if ((getAdDetailsView() instanceof C1356Lc) || (getAdDetailsView() instanceof C1355Lb)) {
                D3.A0H(getAdDetailsView());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                if (getResources().getConfiguration().orientation == 2) {
                    layoutParams.addRule(1, this.A0H.getVideoView().getId());
                    getAdDetailsView().setLayoutParams(layoutParams);
                    this.A0H.addView(getAdDetailsView());
                } else {
                    addView(getAdDetailsView(), layoutParams);
                }
            }
            getAdDetailsView().A0D(i);
            ((AbstractC2116gb) getAdDetailsView()).A0U(this.A0H, i);
        }
    }

    private void A0E(RelativeLayout relativeLayout) {
        int i;
        String formattingRatingCount;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0P, A0P);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        C1203Ff c1203Ff = new C1203Ff(this.A03);
        D3.A0K(c1203Ff, 0);
        D3.A0I(c1203Ff);
        new AsyncTaskC2117gc(c1203Ff, this.A03).A05(A0P, A0P).A07(getAdDataBundle().A1e().A01());
        TextView textView = new TextView(this.A03);
        D3.A0I(textView);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextColor(getAdDataBundle().A1a().A01().A07(true));
        textView.setText(getAdDataBundle().A1b().A0G().A0F());
        textView.setTextSize(!getAdDataBundle().A1M() ? 16.0f : 17.0f);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        C2322k1 c2322k1 = this.A03;
        if (!getAdDataBundle().A1M()) {
            i = A0X;
        } else {
            i = A0V;
        }
        C1205Fh c1205Fh = new C1205Fh(c2322k1, i, 5, A0W, -1);
        c1205Fh.setGravity(16);
        LinearLayout.LayoutParams ratingCountParams = new LinearLayout.LayoutParams(-2, -1);
        TextView textView2 = new TextView(this.A03);
        textView2.setTextColor(getAdDataBundle().A1a().A01().A07(true));
        textView2.setGravity(16);
        textView2.setIncludeFontPadding(false);
        if (!getAdDataBundle().A1M()) {
            textView2.setTextSize(13.0f);
        }
        LinearLayout.LayoutParams starRatingContainerParams = new LinearLayout.LayoutParams(-2, -1);
        starRatingContainerParams.leftMargin = A0N;
        LinearLayout linearLayout = new LinearLayout(this.A03);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        RelativeLayout.LayoutParams ratingInfoContainerParams = new RelativeLayout.LayoutParams(-2, A0S);
        ratingInfoContainerParams.topMargin = A0N / 2;
        ratingInfoContainerParams.addRule(3, textView.getId());
        linearLayout.addView(c1205Fh, ratingCountParams);
        linearLayout.addView(textView2, starRatingContainerParams);
        RelativeLayout.LayoutParams iconParams = new RelativeLayout.LayoutParams(-2, -2);
        iconParams.leftMargin = A0N;
        iconParams.addRule(1, c1203Ff.getId());
        iconParams.addRule(15);
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        relativeLayout2.addView(linearLayout, ratingInfoContainerParams);
        relativeLayout2.addView(textView);
        relativeLayout.addView(relativeLayout2, iconParams);
        relativeLayout.addView(c1203Ff, layoutParams);
        if (TextUtils.isEmpty(getAdDataBundle().A1b().A0G().A0B())) {
            linearLayout.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        c1205Fh.setRating(Float.parseFloat(getAdDataBundle().A1b().A0G().A0B()));
        if (getAdDataBundle().A1b().A0G().A08() == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(A03(0, 1, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
        if (!getAdDataBundle().A1M()) {
            formattingRatingCount = NumberFormat.getNumberInstance().format(Integer.parseInt(getAdDataBundle().A1b().A0G().A08()));
        } else {
            formattingRatingCount = CY.A01(Integer.parseInt(getAdDataBundle().A1b().A0G().A08()));
        }
        sb.append(formattingRatingCount);
        String formattingRatingCount2 = A03(1, 1, 13);
        sb.append(formattingRatingCount2);
        String formattingRatingCount3 = sb.toString();
        textView2.setText(formattingRatingCount3);
    }

    private void A0F(EnumC1268Hs enumC1268Hs) {
        if (getAdDataBundle().A1b().A0I().A03() && !getAdDataBundle().A1b().A0I().A02().isEmpty()) {
            this.A09 = new C1275Hz(this.A03, getAdDataBundle(), this.A0D, getCtaButton());
            D3.A0Z(this.A06, getAdDetailsView(), this.A02);
            A04();
        } else if (getAdDataBundle().A1b().A0I().A04() && getAdDataBundle().A1b().A0I().A02().isEmpty()) {
            A06();
            A05();
        } else {
            A0G(enumC1268Hs);
        }
    }

    private void A0G(EnumC1268Hs enumC1268Hs) {
        this.A0H.A0j(false);
        this.A0H.setVisibility(8);
        if (this.A06 instanceof C2189hn) {
            DQ dq = this.A05;
            if (A0K[2].charAt(18) == 'X') {
                throw new RuntimeException();
            }
            String[] strArr = A0K;
            strArr[3] = "VBTxPCVQSRRVVKfJEBHdIagRaEa9moGI";
            strArr[6] = "iS4EeCSjafPAdymtQeFXdNKcyC2MGxGr";
            if (dq != null) {
                D3.A0F(this.A06);
                this.A06 = this.A05;
                D3.A0J(this.A06);
            }
        }
        switch (enumC1268Hs) {
            case A03:
                FH oldEndCardAdDetailsView = getOldEndCardAdDetailsView();
                if (A0K[4].charAt(31) != 'A') {
                    A0K[2] = "XFfDcp5VJF8GQaNSTNs87nOmJmOzmbPV";
                    if (oldEndCardAdDetailsView == null) {
                        FH oldEndCard = getAdDetailsView();
                        oldEndCard.setVisibility(0);
                    } else {
                        addView(oldEndCardAdDetailsView);
                    }
                    RelativeLayout.LayoutParams screenshotParams = new RelativeLayout.LayoutParams(-1, -1);
                    screenshotParams.setMargins(0, A1A(this.A06), 0, 0);
                    if (oldEndCardAdDetailsView != null) {
                        screenshotParams.addRule(2, oldEndCardAdDetailsView.getId());
                    } else {
                        FH oldEndCard2 = getAdDetailsView();
                        screenshotParams.addRule(2, oldEndCard2.getId());
                    }
                    addView(this.A00, screenshotParams);
                    return;
                }
                throw new RuntimeException();
            case A02:
                D3.A0Z(getAdDetailsView());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.setMargins(AbstractC2097gH.A0M, AbstractC2097gH.A0M, AbstractC2097gH.A0M, AbstractC2097gH.A0M);
                addView(this.A00, layoutParams);
                return;
            default:
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A0J(C1828bu c1828bu) {
        super.A0J(c1828bu);
        if (this.A07 != null && this.A07.getVisibility() == 0) {
            return;
        }
        if (getAdDataBundle().A1P()) {
            this.A03.A0F().AJn(Double.toString(this.A0G.A04().A0T()));
        }
        A0D(getResources().getConfiguration().orientation);
        if (getAdDataBundle().A1D()) {
            this.A0H.setOnClickListener(getCtaButton());
        }
        if (getAdDataBundle().A1P()) {
            getAdDetailsView().setVisibility(0);
            if (getAdDetailsView() instanceof AbstractC2116gb) {
                ((AbstractC2116gb) getAdDetailsView()).A0S(getResources().getConfiguration().orientation);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A0K(KX kx) {
        super.A0K(kx);
        int A00 = kx.A00();
        int videoLengthMs = this.A0H.getDuration();
        int videoLengthMs2 = videoLengthMs - A00;
        if (getAnimationPlugin() != null && videoLengthMs2 < 3000 && getAnimationPlugin().A0J()) {
            getAnimationPlugin().A0F();
        }
        if (getAdDetailsView() instanceof AbstractC2116gb) {
            FH adDetailsView = getAdDetailsView();
            int videoLengthMs3 = A0K[2].charAt(18);
            if (videoLengthMs3 == 88) {
                throw new RuntimeException();
            }
            A0K[1] = "S0R1Vst7btMNh0acsAmYiD0yQ3U0B5iY";
            int currentPosMs = A00 / 1000;
            ((AbstractC2116gb) adDetailsView).A0Q(currentPosMs);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2097gH, com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A0z() {
        super.A0z();
        A07();
        this.A06 = null;
        this.A07 = null;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2097gH, com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A14(C2T c2t, String str, double d, Bundle bundle) {
        super.A14(c2t, str, d, bundle);
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!bundle.getBoolean(A03(2, 31, 100), false)) {
            A0B();
        }
        if (bundle.getBoolean(A03(57, 18, 77), false)) {
            A0A();
        }
        if (bundle.getBoolean(A03(33, 24, 121), false)) {
            this.A0F.A07(this);
        }
        if (getAdDataBundle().A1P()) {
            boolean z = getAdDetailsView() instanceof AbstractC2116gb;
            if (A0K[2].charAt(18) == 'X') {
                throw new RuntimeException();
            }
            String[] strArr = A0K;
            strArr[3] = "TYF9Gze5okVE8nAMFw0kZuTKWJAG4GPN";
            strArr[6] = "e5C8lQxoH1vEX5uTYGqpe7vBIorNDTyW";
            if (z) {
                ((AbstractC2116gb) getAdDetailsView()).A0P();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A15(C1328Ka c1328Ka) {
        super.A15(c1328Ka);
        if (getAdDataBundle().A1P()) {
            FH adDetailsView = getAdDetailsView();
            if (A0K[0].length() == 5) {
                throw new RuntimeException();
            }
            A0K[4] = "m5gTgOd0mlzOyrsuIVxaBMecvKjJBXrq";
            removeView(adDetailsView);
        }
        A0A();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final boolean A17() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final boolean A19(boolean z) {
        if (z && !this.A0C && !super.A09.get()) {
            this.A0F.A07(this);
            return true;
        }
        if (!getAdInfo().A0R()) {
            return false;
        }
        boolean z2 = super.A09.get();
        if (A0K[4].charAt(31) == 'A') {
            throw new RuntimeException();
        }
        String[] strArr = A0K;
        strArr[3] = "EPxoCM5ZHywZjaL2iUUSFMk3WFd5m6XL";
        strArr[6] = "lTBjgNJWw5Z4CB7iubQhWZLtOmC1X7yD";
        if (!z2) {
            this.A0H.A0f(II.A08);
            return true;
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2097gH
    public final FH A1B(C1221Fx c1221Fx, C2T c2t, String str) {
        double A0T2 = c1221Fx.A04().A0T();
        if (getAdDataBundle().A1P()) {
            if (C1855cL.A0T((float) A0T2)) {
                return new C1355Lb(c1221Fx.A05(), getCtaButton(), AbstractC2097gH.A0G, getColors(), str, c1221Fx.A06(), c1221Fx.A0C(), c1221Fx.A0E(), c1221Fx.A09(), c1221Fx.A04(), c1221Fx.A0D(), c1221Fx.A07());
            }
            if (C1855cL.A0U((float) A0T2)) {
                return new C1354La(c1221Fx.A05(), getCtaButton(), AbstractC2097gH.A0G, getColors(), str, c1221Fx.A06(), c1221Fx.A0C(), c1221Fx.A0E(), c1221Fx.A09(), c1221Fx.A04(), c1221Fx.A0D(), c1221Fx.A07());
            }
            return new C1356Lc(c1221Fx.A05(), getCtaButton(), AbstractC2097gH.A0G, getColors(), str, c1221Fx.A06(), c1221Fx.A0C(), c1221Fx.A0E(), c1221Fx.A09(), c1221Fx.A04(), c1221Fx.A0D(), c1221Fx.A07());
        }
        return new C2098gI(c1221Fx.A05(), getCtaButton(), AbstractC2097gH.A0H, c2t.A0G().A00() == C2Y.A05, getColors(), c2t.A0H().A06(), str, c1221Fx.A06(), c1221Fx.A0C(), c1221Fx.A0E(), c1221Fx.A09(), c1221Fx.A04());
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2097gH
    public final C2098gI A1C(C1221Fx c1221Fx, C2T c2t, String str) {
        return new C2098gI(c1221Fx.A05(), getCtaButton(), AbstractC2097gH.A0H, c2t.A0G().A00() == C2Y.A05, getColors(), c2t.A0H().A06(), str, c1221Fx.A06(), c1221Fx.A0C(), c1221Fx.A0E(), c1221Fx.A09(), c1221Fx.A04());
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2097gH
    public final void A1D() {
        super.A1D();
        if (getAnimationPlugin() != null) {
            getAnimationPlugin().AAk(this.A0H);
        }
    }

    public final void A1F() {
        getCtaButton().A0A(A03(75, 9, 37));
    }

    public final void A1G() {
        new AF(this.A0G.A04().A1g(), getAdEventManager()).A04(AE.A0h, null);
        if (this.A0G.A0B() != null) {
            DQ A0B = this.A0G.A0B();
            if (A0K[4].charAt(31) == 'A') {
                throw new RuntimeException();
            }
            A0K[2] = "qVUXWES3bTCAG5k5pbCpCu4g17099rEp";
            A0B.setVisibility(8);
            removeView(this.A0G.A0B());
        }
        removeView(this.A07);
        removeView(this.A0H);
        A07();
        removeView(getAdDetailsView());
        removeView(this.A0I);
        A1E();
    }

    public final void A1H(C1329Kb c1329Kb) {
        if (this.A07 != null) {
            this.A07.A1A(c1329Kb);
            this.A07.A0z();
            removeView(this.A07);
            this.A07 = null;
        }
        getAdDetailsView().setVisibility(0);
    }

    public final boolean A1I() {
        return getAdInfo().A0R();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public int getCloseButtonStyle() {
        if (this.A0B) {
            if (getAdDataBundle().A1o()) {
                return 8;
            }
            return 2;
        }
        if (A1I() && !super.A09.get()) {
            return 1;
        }
        return super.getCloseButtonStyle();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2097gH, com.facebook.ads.redexgen.core.AbstractC1217Ft, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A07 != null) {
            C2071fr c2071fr = this.A07;
            if (A0K[0].length() == 5) {
                throw new RuntimeException();
            }
            A0K[4] = "EpyE2nRNkziEqwhglEeRfTluajKoT9IB";
            if (c2071fr.getVisibility() == 0) {
                getAdDetailsView().setVisibility(8);
                return;
            }
        }
        if (getAdDataBundle().A1b().A0I().A03() && this.A09 != null && super.A09.get()) {
            this.A09.A0P(configuration.orientation);
        }
        if (this.A09 != null || super.A09.get()) {
            FH oldEndCardAdDetailsView = getOldEndCardAdDetailsView();
            if (oldEndCardAdDetailsView != null) {
                oldEndCardAdDetailsView.A0D(configuration.orientation);
                return;
            }
            return;
        }
        A0D(configuration.orientation);
    }

    public void setVideoAdViewListener(HT ht) {
        if (this.A07 != null) {
            this.A07.setVideoAdViewListener(ht);
        }
    }
}
