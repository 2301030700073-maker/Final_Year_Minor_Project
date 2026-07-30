package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;

/* renamed from: com.facebook.ads.redexgen.X.Ht, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1269Ht {
    public ViewOnClickListenerC2111gW A00;
    public final C2P A01;
    public final C08832a A02;
    public final C08872e A03;
    public final C08962n A04;
    public final C2322k1 A05;
    public final AF A06;
    public static final int A09 = (int) (CP.A02 * 4.0f);
    public static final int A07 = (int) (CP.A02 * 72.0f);
    public static final int A08 = (int) (CP.A02 * 8.0f);

    public C1269Ht(C2322k1 c2322k1, A7 a7, AbstractC2478md abstractC2478md) {
        this.A05 = c2322k1;
        this.A06 = new AF(abstractC2478md.A1g(), a7);
        this.A01 = abstractC2478md.A1a();
        this.A02 = abstractC2478md.A1b().A0G();
        this.A04 = abstractC2478md.A1e();
        this.A03 = abstractC2478md.A1b().A0I();
    }

    private View A00(ViewOnClickListenerC2111gW viewOnClickListenerC2111gW) {
        C1209Fl c1209Fl = new C1209Fl(this.A05, this.A01.A01(), true, false, false);
        c1209Fl.A04(this.A02.A0F(), this.A02.A04(), null, false, true);
        c1209Fl.setAlignment(17);
        C1203Ff c1203Ff = new C1203Ff(this.A05);
        D3.A0K(c1203Ff, 0);
        c1203Ff.setRadius(50);
        new AsyncTaskC2117gc(c1203Ff, this.A05).A04().A07(this.A04.A01());
        LinearLayout linearLayout = new LinearLayout(this.A05);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(c1203Ff, new LinearLayout.LayoutParams(A07, A07));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A08, 0, A08);
        linearLayout.addView(c1209Fl, layoutParams);
        if (viewOnClickListenerC2111gW != null) {
            D3.A0H(viewOnClickListenerC2111gW);
            linearLayout.addView(viewOnClickListenerC2111gW, layoutParams);
            if (TextUtils.isEmpty(viewOnClickListenerC2111gW.getText())) {
                D3.A0F(viewOnClickListenerC2111gW);
            }
        }
        return linearLayout;
    }

    private MG A01() {
        MG mg = new MG(this.A05);
        mg.setLayoutManager(new C2394lC(this.A05, 0, false));
        mg.setAdapter(new C1872cc(this.A05, this.A03.A02(), A09, this.A00));
        return mg;
    }

    private final EnumC1268Hs A02() {
        if (!this.A03.A02().isEmpty()) {
            return EnumC1268Hs.A03;
        }
        return EnumC1268Hs.A02;
    }

    public final Pair<EnumC1268Hs, View> A03(ViewOnClickListenerC2111gW viewOnClickListenerC2111gW) {
        View A01;
        this.A00 = viewOnClickListenerC2111gW;
        EnumC1268Hs A02 = A02();
        switch (C1267Hr.A00[A02.ordinal()]) {
            case 1:
                A01 = A01();
                break;
            default:
                A01 = A00(this.A00);
                break;
        }
        AH.A04(A01, this.A06, AE.A0S);
        return new Pair<>(A02, A01);
    }
}
