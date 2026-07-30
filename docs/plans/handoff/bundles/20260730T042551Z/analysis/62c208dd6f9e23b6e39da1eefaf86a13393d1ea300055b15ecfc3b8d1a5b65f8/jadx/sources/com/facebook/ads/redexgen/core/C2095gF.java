package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.gF, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2095gF extends AbstractC1217Ft implements CJ {
    public static byte[] A03;
    public static String[] A04 = {"jViytUMb8W4ggVUJxJM4ipopCTL5", "9aLNfhHGIgyW1yw0lAvb2knTk6C61HAs", "tSRmVjXXTSnTtzrce7INiQjRTYiInlbV", "4hcdJiGUQmFME9vgh87fiTmYWHBJid0b", "Sl93MFe7LYTqHCUKgRBPFfcYUFdC2Wx2", "6CReOOSeiw7R4vGYWPFAi839J8MszZAI", "rkSedGSxOJTtoP7gEY2R8PFp4jzzUrYJ", "HZKY5YyrBfN27m9O42YnVDeAUeo6GkfS"};
    public final AbstractC2478md A00;
    public final CL A01;
    public final DR A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A04[0].length() != 28) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[1] = "P3g3yiO3ICi92ZTGqQIjITPfAPWFUEMm";
            strArr[2] = "pyBqNmisWoZkDTGCi8bHuToayw1uFlPn";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 78);
            i4++;
        }
    }

    public static void A01() {
        A03 = new byte[]{64, 68, 72, 78, 76};
    }

    static {
        A01();
    }

    public C2095gF(C1221Fx c1221Fx, boolean z) {
        super(c1221Fx, true);
        FrameLayout.LayoutParams layoutParams;
        this.A02 = c1221Fx.A0C();
        this.A00 = c1221Fx.A04();
        RelativeLayout relativeLayout = new RelativeLayout(c1221Fx.A05());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        D3.A0P(relativeLayout, getAdContextWrapper());
        LinearLayout linearLayout = new LinearLayout(c1221Fx.A05());
        linearLayout.setOrientation(!z ? 1 : 0);
        linearLayout.setGravity(80);
        D3.A0I(linearLayout);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(AbstractC1217Ft.A07, 0, AbstractC1217Ft.A07, AbstractC1217Ft.A07);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(z ? -2 : -1, -2);
        layoutParams4.setMargins(z ? AbstractC1217Ft.A07 : 0, z ? 0 : AbstractC1217Ft.A07, 0, 0);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(z ? 0 : -1, -2);
        layoutParams5.setMargins(0, 0, 0, 0);
        layoutParams5.weight = 1.0f;
        linearLayout.addView(getTitleDescContainer(), layoutParams5);
        this.A01 = CL.A01(c1221Fx.A05(), this.A00, this);
        CK A0A = this.A01.A0A(this.A00);
        c1221Fx.A05().A0H().A00(A0A.A01);
        if (c1221Fx.A0F() && !z) {
            C1251Hb c1251Hb = new C1251Hb(c1221Fx.A05());
            c1251Hb.setPageDetails(c1221Fx.A04().A1e());
            int A05 = this.A06.A04().A1a().A00().A05(true);
            c1251Hb.A02(A05, A05);
            D3.A0E(1007, c1251Hb);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams6.setMargins(0, AbstractC1217Ft.A07, 0, 0);
            linearLayout.addView(c1251Hb, layoutParams6);
            if (C10729m.A17(c1221Fx.A05())) {
                c1251Hb.setOnClickListener(getCtaButton());
            }
        }
        linearLayout.addView(getCtaButton(), layoutParams4);
        relativeLayout.addView(linearLayout, layoutParams3);
        getCtaButton().A0B(c1221Fx.A04(), c1221Fx.A0B());
        View A02 = c1221Fx.A02();
        if (A02 != null && (A0A.A00 || C10729m.A1G(getAdContextWrapper()))) {
            if (z) {
                layoutParams = new FrameLayout.LayoutParams(-2, -1);
            } else {
                layoutParams = new FrameLayout.LayoutParams(-1, -2);
            }
            layoutParams.gravity = 17;
            FrameLayout frameLayout = new FrameLayout(c1221Fx.A05());
            frameLayout.addView(A02, layoutParams);
            addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
            getCtaButton().setCreativeAsCtaLoggingHelper(this.A01);
            if (A0A.A00) {
                A02.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.Fr
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        C2095gF.this.A1A(view);
                    }
                });
            } else {
                FE.A00(A02, C10729m.A1H(getAdContextWrapper()), new ViewOnClickListenerC1216Fs(this));
            }
        } else if (A02 != null) {
            addView(A02, new RelativeLayout.LayoutParams(-1, -1));
        }
        addView(relativeLayout, layoutParams2);
        if (C10729m.A16(c1221Fx.A05())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1221Fx.A0B() != null) {
                c1221Fx.A0B().setCTAClickListener(getCtaButton());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A0z() {
        super.A0z();
        this.A01.A0B();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final void A14(C2T c2t, String str, double d, Bundle bundle) {
        super.A14(c2t, str, d, bundle);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final boolean A17() {
        return true;
    }

    public final /* synthetic */ void A1A(View view) {
        getCtaButton().A0A(A00(0, 5, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT));
    }

    @Override // com.facebook.ads.redexgen.core.CJ
    public final void ADz() {
        this.A02.A4Z(this.A00.A0e());
    }
}
