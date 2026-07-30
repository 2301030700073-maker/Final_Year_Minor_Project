package com.facebook.ads.redexgen.core;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.internal.FacebookRequestErrorClassification;

/* loaded from: assets/audience_network.dex */
public final class HM extends LinearLayout {
    public LinearLayout A00;
    public String A01;
    public boolean A02;
    public final int A03;
    public final C2322k1 A04;
    public final C1203Ff A05;
    public final C1209Fl A06;
    public static String[] A07 = {"mO6OCzz183u1Bigulq5KeRnnu3UhUErY", "M8wuVwCqg47swjluxOTBwYkXCALJOS1f", "isO3a6yeUrEqJHaKmCFaV", "J8y0fQZRtVpgz1Itec1cmA3ue79eN13N", "z6IigVxY2j2waSprQRCf4749VcxJv5uz", "GG3OTiE6t7MwpY", "UBA0QA1YjTXejDlGkh9vREu7YbW4o1hK", "iNB15eFG13fee2"};
    public static final int A0A = (int) (CP.A02 * 16.0f);
    public static final int A0B = (int) (CP.A02 * 32.0f);
    public static final int A0C = (int) (CP.A02 * 16.0f);
    public static final int A09 = (int) (CP.A02 * 4.0f);
    public static final int A08 = (int) (CP.A02 * 72.0f);

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public HM(com.facebook.ads.redexgen.core.HK r7) {
        /*
            r6 = this;
            com.facebook.ads.redexgen.X.k1 r0 = com.facebook.ads.redexgen.core.HK.A04(r7)
            r6.<init>(r0)
            r0 = 0
            r6.A02 = r0
            java.lang.String r0 = ""
            r6.A01 = r0
            com.facebook.ads.redexgen.X.k1 r0 = com.facebook.ads.redexgen.core.HK.A04(r7)
            r6.A04 = r0
            com.facebook.ads.redexgen.X.k1 r1 = r6.A04
            com.facebook.ads.redexgen.X.Ff r0 = new com.facebook.ads.redexgen.X.Ff
            r0.<init>(r1)
            r6.A05 = r0
            com.facebook.ads.redexgen.X.Fl r0 = new com.facebook.ads.redexgen.X.Fl
            com.facebook.ads.redexgen.X.k1 r1 = r6.A04
            com.facebook.ads.redexgen.X.2c r2 = com.facebook.ads.redexgen.core.HK.A02(r7)
            r4 = 0
            r5 = 1
            r3 = 1
            r0.<init>(r1, r2, r3, r4, r5)
            r6.A06 = r0
            int r0 = com.facebook.ads.redexgen.core.HK.A00(r7)
            r6.A03 = r0
            boolean r0 = com.facebook.ads.redexgen.core.HK.A08(r7)
            r6.A02 = r0
            java.lang.String r0 = com.facebook.ads.redexgen.core.HK.A05(r7)
            r6.A01 = r0
            r6.A03(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.HM.<init>(com.facebook.ads.redexgen.X.HK):void");
    }

    public /* synthetic */ HM(HK hk, C1943dl c1943dl) {
        this(hk);
    }

    private void A00() {
        A01(this.A05, 150);
        A01(this.A06, 170);
        if (this.A00 != null) {
            A01(this.A00, FacebookRequestErrorClassification.EC_INVALID_TOKEN);
        }
    }

    private void A01(View view, int i) {
        view.setTranslationY(i);
        view.setScaleY(0.75f);
        view.setScaleX(0.75f);
        view.animate().translationYBy(-i).scaleX(1.0f).scaleY(1.0f).setDuration(300L).setInterpolator(new DecelerateInterpolator(2.0f));
    }

    private void A02(HK hk) {
        String str;
        String str2;
        String str3;
        str = hk.A03;
        if (!TextUtils.isEmpty(str)) {
            this.A00 = new LinearLayout(getContext());
            this.A00.setGravity(17);
            int i = A0C / 2;
            if (this.A02) {
                i = 0;
            }
            LinearLayout linearLayout = this.A00;
            int i2 = A0C;
            int i3 = A0C;
            int marginTop = A0C;
            linearLayout.setPadding(i2, i, i3, marginTop / 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, i, 0, 0);
            TextView textView = new TextView(getContext());
            textView.setTextColor(-1);
            D3.A0W(textView, false, 16);
            str2 = hk.A03;
            textView.setText(str2);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            ImageView imageView = new ImageView(getContext());
            AsyncTaskC2117gc A04 = new AsyncTaskC2117gc(imageView, this.A04).A04();
            str3 = hk.A02;
            A04.A07(str3);
            int i4 = A0A;
            int marginTop2 = A0A;
            LinearLayout.LayoutParams informativeContainerParams = new LinearLayout.LayoutParams(i4, marginTop2);
            int marginTop3 = A0C;
            informativeContainerParams.setMargins(0, 0, marginTop3 / 2, 0);
            if (this.A02) {
                FZ fz = new FZ(getContext(), 0, -1, DB.PLAYABLE_ICON);
                fz.setLayoutParams(new LinearLayout.LayoutParams(A0B, A0B));
                this.A00.addView(fz);
            } else {
                this.A00.addView(imageView, informativeContainerParams);
                this.A00.addView(textView, layoutParams2);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setCornerRadius(100.0f);
                gradientDrawable.setColor(469762047);
                D3.A0Q(this.A00, gradientDrawable);
            }
            View view = this.A00;
            String[] strArr = A07;
            String str4 = strArr[5];
            String str5 = strArr[7];
            int length = str4.length();
            int marginTop4 = str5.length();
            if (length != marginTop4) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[0] = "6JdK2pyeEPUWkfGuYxPy07w26kgdYt9J";
            strArr2[1] = "5VEwQONd4c8VI19uC0Ib5tVL9YvIxUH6";
            addView(view, layoutParams);
        }
    }

    private void A03(HK hk) {
        C08832a c08832a;
        C08962n c08962n;
        C08832a c08832a2;
        C08962n c08962n2;
        D3.A0K(this.A05, 0);
        this.A05.setRadius(50);
        if (!this.A02) {
            c08832a = hk.A06;
            if (c08832a.A00() == C2Y.A05) {
                this.A05.setFullCircleCorners(true);
            } else {
                C1203Ff c1203Ff = this.A05;
                int i = A09;
                String[] strArr = A07;
                if (strArr[5].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                A07[2] = "avcxrBXnTsgV2I5Ie1k2l";
                c1203Ff.setRadius(i);
            }
        } else {
            this.A05.setRadius(A09);
        }
        AsyncTaskC2117gc A04 = new AsyncTaskC2117gc(this.A05, this.A04).A04();
        c08962n = hk.A07;
        A04.A07(c08962n.A01());
        C1209Fl c1209Fl = this.A06;
        c08832a2 = hk.A06;
        String A0F = c08832a2.A0F();
        c08962n2 = hk.A07;
        c1209Fl.A04(A0F, c08962n2.A03(), null, false, true);
        if (!this.A02) {
            this.A06.getDescriptionTextView().setAlpha(0.8f);
        } else {
            this.A06.getDescriptionTextView().setText(this.A01);
        }
        this.A06.setAlignment(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A0C, 0, A0C / 2);
        View view = this.A05;
        ViewGroup.LayoutParams titleAndDescriptionParams = new LinearLayout.LayoutParams(A08, A08);
        addView(view, titleAndDescriptionParams);
        addView(this.A06, layoutParams);
        A02(hk);
        D3.A0K(this, -14473425);
        setGravity(17);
        setOrientation(1);
    }

    public final void A04(HL hl) {
        A00();
        postDelayed(new C1943dl(this, hl), this.A03);
    }
}
