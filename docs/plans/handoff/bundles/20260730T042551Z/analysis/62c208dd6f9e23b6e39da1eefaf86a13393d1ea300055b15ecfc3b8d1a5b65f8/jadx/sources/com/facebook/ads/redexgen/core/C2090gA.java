package com.facebook.ads.redexgen.core;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.gA, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2090gA extends AbstractC1217Ft implements CJ {
    public static byte[] A05;
    public static final int A06;
    public final AbstractC2478md A00;
    public final CL A01;
    public final DR A02;
    public final GP A03;
    public final C1251Hb A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 86);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{38, 42, 30, 36, 34};
    }

    static {
        A01();
        A06 = Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public C2090gA(C1221Fx c1221Fx, boolean z) {
        super(c1221Fx, z);
        int id;
        int A01;
        this.A02 = c1221Fx.A0C();
        this.A00 = c1221Fx.A04();
        this.A03 = new GP(c1221Fx.A05(), c1221Fx.A02());
        this.A03.A01(getTitleDescContainer(), z);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        layoutParams.setMargins(AbstractC1217Ft.A07, AbstractC1217Ft.A07, AbstractC1217Ft.A07, AbstractC1217Ft.A07);
        getCtaButton().setLayoutParams(layoutParams);
        if (c1221Fx.A0F()) {
            this.A04 = new C1251Hb(c1221Fx.A05());
            this.A04.setPageDetails(c1221Fx.A04().A1e());
            D3.A0E(1007, this.A04);
            RelativeLayout.LayoutParams pageDetailsParams = new RelativeLayout.LayoutParams(-2, -2);
            pageDetailsParams.addRule(2, getCtaButton().getId());
            pageDetailsParams.setMargins(AbstractC1217Ft.A07, AbstractC1217Ft.A07 - (AbstractC1217Ft.A07 / 2), AbstractC1217Ft.A07, 0);
            this.A04.setLayoutParams(pageDetailsParams);
            id = this.A04.getId();
            A01 = c1221Fx.A01() - (AbstractC1217Ft.A07 / 2);
        } else {
            id = getCtaButton().getId();
            A01 = c1221Fx.A01();
            this.A04 = null;
        }
        FrameLayout insideContainerLayout = new FrameLayout(c1221Fx.A05());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(10);
        layoutParams2.addRule(2, id);
        layoutParams2.setMargins(0, A01, 0, 0);
        insideContainerLayout.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 17;
        layoutParams3.setMargins(AbstractC1217Ft.A07, 0, AbstractC1217Ft.A07, 0);
        insideContainerLayout.addView(this.A03, layoutParams3);
        addView(insideContainerLayout);
        if (this.A04 != null) {
            addView(this.A04);
        }
        addView(getCtaButton());
        getCtaButton().A0B(c1221Fx.A04(), c1221Fx.A0B());
        View A02 = c1221Fx.A02();
        this.A01 = CL.A01(c1221Fx.A05(), this.A00, this);
        CK A0A = this.A01.A0A(this.A00);
        c1221Fx.A05().A0H().A00(A0A.A01);
        getCtaButton().setCreativeAsCtaLoggingHelper(this.A01);
        if (A02 != null && A0A.A00) {
            A02.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.G3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C2090gA.this.A1A(view);
                }
            });
        } else if (A02 != null && C10729m.A1G(getAdContextWrapper())) {
            FE.A00(A02, C10729m.A1H(getAdContextWrapper()), new G4(this));
        }
        if (C10729m.A16(c1221Fx.A05())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1221Fx.A0B() != null) {
                c1221Fx.A0B().setCTAClickListener(getCtaButton());
            }
        }
        if (this.A04 != null && C10729m.A17(c1221Fx.A05())) {
            this.A04.setOnClickListener(getCtaButton());
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final boolean A02() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A0z() {
        super.A0z();
        this.A01.A0B();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A14(C2T c2t, String str, double d, Bundle bundle) {
        super.A14(c2t, str, d, bundle);
        if (d > 0.0d) {
            int mediaHeight = (int) ((A06 - (AbstractC1217Ft.A07 * 2)) / d);
            this.A03.A00(mediaHeight);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final boolean A17() {
        return false;
    }

    public final /* synthetic */ void A1A(View view) {
        getCtaButton().A0A(A00(0, 5, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT));
    }

    @Override // com.facebook.ads.redexgen.core.CJ
    public final void ADz() {
        this.A02.A4Z(this.A00.A0e());
    }
}
