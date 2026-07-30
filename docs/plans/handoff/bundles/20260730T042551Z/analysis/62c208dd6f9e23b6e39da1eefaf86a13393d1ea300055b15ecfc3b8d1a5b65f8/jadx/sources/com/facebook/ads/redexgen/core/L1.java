package com.facebook.ads.redexgen.core;

import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.facebook.ads.AdError;
import com.facebook.internal.security.OidcSecurityUtil;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class L1 extends AbstractC2025f6 {
    public static byte[] A0W;
    public static String[] A0X = {"uwiFFMiPjkxeIpnCelDmRbiHk5Vwnfgt", "wLfFuslsjBH4uPGwj2Xycf6hIgRvR8Oe", "HvNwre", "LU1P5nNd", "IrSP0rhp", "3tH6XBAURu1AudBFEixfPGQY1Q", "mKjuxDaulnRYw", "yhw0zrPGEZfB7fyQoDKXN69L0o"};
    public static final int A0Y;
    public static final int A0Z;
    public static final int A0a;
    public static final int A0b;
    public static final int A0c;
    public static final int A0d;
    public static final int A0e;
    public static final int A0f;
    public static final int A0g;
    public static final int A0h;
    public C08852c A00;
    public CH A01;
    public IP A02;
    public C1771aw A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final C2322k1 A0C;
    public final FH A0D;
    public final ViewOnClickListenerC2111gW A0E;
    public final HI A0F;
    public final C1269Ht A0G;
    public final C1860cQ A0H;
    public final C1855cL A0I;
    public final C1329Kb A0J;
    public final AbstractC1837c3 A0K;
    public final AbstractC1835c1 A0L;
    public final AbstractC1831bx A0M;
    public final AbstractC1829bv A0N;
    public final AbstractC1827bt A0O;
    public final AbstractC1826bs A0P;
    public final C1812be A0Q;
    public final C1801bT A0R;
    public final C1777b5 A0S;
    public final C1767as A0T;
    public final boolean A0U;
    public final boolean A0V;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0W, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 71);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A0W = new byte[]{82, 94, 92, 31, 87, 80, 82, 84, 83, 94, 94, 90, 31, 80, 85, 66, 31, 88, 95, 69, 84, 67, 66, 69, 88, 69, 88, 80, 93, 31, 82, 93, 88, 82, 90, 84, 85, 54, 33, 51, 37, 54, 32, 33, 32, 27, 50, 45, 32, 33, 43, 105, 118, 123, 122, 112};
    }

    static {
        A0A();
        A0b = (int) (CP.A02 * 48.0f);
        A0Z = AnonymousClass43.A02(-1, 77);
        A0g = (int) (CP.A02 * 26.0f);
        A0h = (int) (CP.A02 * 12.0f);
        A0d = (int) (CP.A02 * 12.0f);
        A0e = (int) (CP.A02 * 44.0f);
        A0c = (int) (CP.A02 * 8.0f);
        A0f = (int) (CP.A02 * 16.0f);
        A0a = AnonymousClass43.A02(A0Z, 90);
        A0Y = (int) (CP.A02 * 4.0f);
    }

    public L1(C2322k1 c2322k1, A7 a7, AbstractC2478md abstractC2478md, C10297t c10297t, EC ec, int i, DR dr, AF af, int i2, int i3, int i4, boolean z, int i5, boolean z2, boolean z3, boolean z4, HI hi) {
        super(c2322k1, ec, a7, abstractC2478md, i, z3, z4, dr);
        C08852c A00;
        this.A04 = false;
        this.A05 = false;
        this.A07 = false;
        this.A0O = new LA(this);
        this.A0N = new L9(this);
        this.A0M = new L7(this);
        this.A0P = new L6(this);
        this.A0K = new L5(this);
        this.A0L = new L2(this);
        this.A0C = c2322k1;
        this.A0R = new C1801bT(this.A0C, af);
        this.A0S = new C1777b5(this.A0C, -1);
        this.A0A = i5;
        this.A0V = z2;
        this.A09 = i2;
        this.A0B = i3;
        this.A0F = hi;
        this.A08 = i4;
        this.A0U = z;
        this.A0G = new C1269Ht(this.A0C, a7, super.A05);
        if (i3 == 1) {
            A00 = super.A05.A1a().A01();
        } else {
            A00 = super.A05.A1a().A00();
        }
        this.A00 = A00;
        this.A0I = new C1855cL(this.A0C);
        this.A0I.getEventBus().A03(this.A0O, this.A0N, this.A0M, this.A0P, this.A0K, this.A0L);
        this.A0J = new C1329Kb(c2322k1, a7, this.A0I, abstractC2478md.A1g());
        A09();
        this.A0I.setVideoURI(c10297t.A0S(super.A05.A1b().A0F().A09()));
        A08();
        CK A0A = super.A08.A0A(abstractC2478md);
        this.A0C.A0H().A00(A0A.A01);
        this.A0D = A02();
        this.A0T = new C1767as(this.A0D, 400, 100, 0);
        this.A0T.A40(true, false);
        this.A0Q = new C1812be(true);
        A0B();
        this.A0E = this.A0D.getCTAButton();
        if (A0A.A00) {
            this.A0I.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.H3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    L1.this.A1B(view);
                }
            });
        }
        D3.A0E(AdError.NO_FILL_ERROR_CODE, this.A0E);
        A07();
        A06();
        this.A0D.bringToFront();
        if (C10729m.A1s(this.A0C)) {
            this.A0C.A0B().AJs(this.A0I, super.A05.A1g(), true);
        }
        if (C10729m.A1t(this.A0C)) {
            this.A0H = new C1860cQ(this.A0C, a7, this.A0I, super.A05.A1g(), this.A0J, null);
        } else {
            this.A0H = null;
        }
    }

    private C2098gI A02() {
        String A05;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        if (super.A05.A0i().equals(A05(37, 14, 3))) {
            A05 = IV.A04.A03();
        } else {
            A05 = A05(0, 37, 118);
        }
        C2098gI c2098gI = new C2098gI(this.A0C, null, A0b, super.A05.A1b().A0G().A00() == C2Y.A05, getColors(), super.A05.A1b().A0H().A06(), A05, super.A07, super.A0A, super.A0C, super.A09, super.A05);
        c2098gI.getCTAButton().getCtaActionHelper().A04(super.A05);
        c2098gI.getCTAButton().setCreativeAsCtaLoggingHelper(super.A08);
        D3.A0E(1008, c2098gI);
        c2098gI.A0D(this.A0B);
        addView(c2098gI, layoutParams);
        c2098gI.setInfo(super.A05.A1b().A0G(), super.A05.A1b().A0H(), super.A05.A1g(), super.A05.A1e().A01(), null, null);
        return c2098gI;
    }

    private void A06() {
        this.A0S.A06(-1, A0Z, false);
        this.A0S.setPadding(A0h, A0h, A0h, A0h);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0g);
        layoutParams.addRule(12);
        addView(this.A0S, layoutParams);
    }

    private void A07() {
        this.A0R.setPadding(A0d, A0d, A0d, A0d);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0e, A0e);
        layoutParams.setMargins(0, DQ.A00, A0c, 0);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        ViewGroup.LayoutParams videoViewParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.A0I, videoViewParams);
        addView(this.A0R, layoutParams);
    }

    private void A08() {
        postDelayed(new C2015ew(this), C10729m.A0O(this.A0C));
    }

    private void A09() {
        this.A0I.A0h(this.A0S);
        this.A0I.A0h(this.A0R);
        if (!TextUtils.isEmpty(super.A05.A1b().A0F().A08())) {
            KA ka = new KA(this.A0C);
            this.A0I.A0h(ka);
            ka.setImage(super.A05.A1b().A0F().A08());
        }
        this.A0I.A0h(new C1277Ib(this.A0C));
    }

    private final void A0B() {
        View expandableLayout = this.A0D.getExpandableLayout();
        if (expandableLayout != null) {
            if (this.A03 != null) {
                C1812be c1812be = this.A0Q;
                C1771aw c1771aw = this.A03;
                String[] strArr = A0X;
                if (strArr[5].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                A0X[1] = "yPUFQNIw4jpGFPLG5nXj9YsdQuCVJrWl";
                c1812be.A0I(c1771aw);
            }
            C08852c A01 = super.A05.A1a().A01();
            this.A0Q.A0I(new C1768at(this.A0D.getCTAButton(), 300, -1, A01.A0A(true)));
            Drawable A08 = D3.A08(A0Z, A0a, A0Y);
            Drawable endDrawable = D3.A05(A01.A09(true), A0Y);
            this.A0Q.A0I(new C1772ax(this.A0D.getCTAButton(), 300, A08, endDrawable));
            this.A0Q.A0I(new C1770av(expandableLayout, 150, false));
            this.A0Q.AAk(this.A0I);
            this.A0Q.A0H(2300);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(KX kx) {
        if (this.A0I.getState() == JI.A02 && C10729m.A1X(this.A0C)) {
            postDelayed(new C2014ev(this, kx), OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public final void A11() {
        super.A11();
        if (this.A01 != null) {
            CH ch = this.A01;
            String[] strArr = A0X;
            if (strArr[4].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0X;
            strArr2[4] = "vVds5dTr";
            strArr2[3] = "mwltsewL";
            ch.A06();
        }
        if (C10729m.A1s(this.A0C)) {
            this.A0C.A0B().AJZ(this.A0I);
        }
        if (this.A0H != null) {
            this.A0H.A05();
        }
        if (this.A0I != null) {
            this.A0I.getEventBus().A04(this.A0O, this.A0N, this.A0M, this.A0P, this.A0K, this.A0L);
            D3.A0F(this.A0I);
            this.A0I.A0Y();
        }
        this.A0J.A0p();
        D3.A0Z(this.A0I, this.A0S, this.A0R);
        super.A0C.A0V();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public final void A13() {
        this.A0C.A0F().A4n();
        this.A04 = true;
        D3.A0R(this);
        D3.A0F(this.A0I);
        D3.A0Z(this.A0I, this.A0S, this.A0R);
        Pair<EnumC1268Hs, View> A03 = this.A0G.A03(this.A0E);
        View view = (View) A03.second;
        D3.A0E(1101, view);
        switch (H4.A00[((EnumC1268Hs) A03.first).ordinal()]) {
            case 1:
                this.A0D.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.setMargins(0, DQ.A00, 0, 0);
                layoutParams.addRule(2, this.A0D.getId());
                addView(view, layoutParams);
                break;
            case 2:
                D3.A0Z(this.A0D);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams2.setMargins(A0f, A0f, A0f, A0f);
                addView(view, layoutParams2);
                break;
        }
        if (this.A08 == 0 && this.A0U) {
            if (this.A0V) {
                this.A0F.AJh();
            }
            this.A01 = new CH(this.A0A, 100.0f, 100L, new Handler(Looper.getMainLooper()), new C2007eo(this));
            this.A01.A07();
            return;
        }
        this.A05 = true;
        this.A0F.AF6(true);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public final void A14() {
        this.A0I.setVolume(super.A05.A1b().A0F().A0A() ? 0.0f : 1.0f);
        this.A0I.A0g(IP.A02, 20);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public final void A16(boolean z) {
        if (this.A01 != null) {
            this.A01.A06();
        }
        if (this.A0I.A0p()) {
            return;
        }
        this.A02 = this.A0I.getVideoStartReason();
        this.A06 = z;
        this.A0I.A0k(false, 13);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public final void A17(boolean z) {
        if (this.A01 != null && !this.A01.A05()) {
            this.A01.A07();
        }
        if (this.A04 || this.A0I.getState() == JI.A06 || this.A02 == null) {
            return;
        }
        if (!this.A06 || z) {
            this.A0I.A0g(this.A02, 19);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public final boolean A18() {
        if (this.A08 != 2 && super.A05.A1b().A0R() && !this.A04) {
            return true;
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public final boolean A19() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public final boolean A1A(String str) {
        this.A0E.A0A(str);
        return true;
    }

    public final /* synthetic */ void A1B(View view) {
        this.A0E.A0A(A05(51, 5, 88));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6, com.facebook.ads.redexgen.core.CJ
    public final void ADz() {
        super.A0A.A4Z(super.A05.A0e());
    }

    public C08852c getColors() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public HG getFullScreenAdStyle() {
        return new HG(true, HG.A06, super.A05.A1a().A01(), ViewOnClickListenerC2111gW.A09(super.A05), super.A05.A1a().A01().A08(true), super.A05.A1b().A0F().A08());
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6
    public C1141Cv getTouchDataRecorder() {
        return super.A09;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2025f6, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C08852c A00;
        super.onConfigurationChanged(configuration);
        if (!this.A04) {
            if (configuration.orientation == 1) {
                A00 = super.A05.A1a().A01();
            } else {
                C2P A1a = super.A05.A1a();
                String[] strArr = A0X;
                if (strArr[4].length() != strArr[3].length()) {
                    throw new RuntimeException();
                }
                A0X[1] = "ZWQFADQdeKHmDIXasxpY6pydlWSUwrFV";
                A00 = A1a.A00();
            }
            this.A00 = A00;
            this.A0E.setViewShowsOverMedia(true);
            this.A0E.setUpButtonColors(this.A00);
            this.A0D.A0D(configuration.orientation);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View expandableLayout = this.A0D.getExpandableLayout();
        if (expandableLayout != null && z && this.A03 == null) {
            this.A03 = new C1771aw(expandableLayout, 300, expandableLayout.getHeight(), 0);
            this.A0Q.A0I(this.A03);
            this.A0Q.A0G();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            A17(false);
        } else {
            A16(false);
        }
    }
}
