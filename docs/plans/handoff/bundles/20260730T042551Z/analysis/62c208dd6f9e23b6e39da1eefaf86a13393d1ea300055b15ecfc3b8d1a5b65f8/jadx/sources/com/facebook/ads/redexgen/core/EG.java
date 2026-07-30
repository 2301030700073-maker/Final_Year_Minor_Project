package com.facebook.ads.redexgen.core;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* loaded from: assets/audience_network.dex */
public final class EG extends RelativeLayout {
    public final int A00;
    public final int A01;
    public final C09153g A02;
    public final C2322k1 A03;
    public final EJ A04;
    public final boolean A05;
    public static final int A09 = (int) (CP.A02 * 16.0f);
    public static final int A0A = (int) (CP.A02 * 8.0f);
    public static final int A0D = (int) (CP.A02 * 44.0f);
    public static final int A08 = (int) (CP.A02 * 10.0f);
    public static final int A07 = A09 - A08;
    public static final int A0E = (int) (CP.A02 * 75.0f);
    public static final int A0B = (int) (CP.A02 * 25.0f);
    public static final int A0F = (int) (CP.A02 * 45.0f);
    public static final int A0C = (int) (CP.A02 * 15.0f);
    public static final int A06 = (int) (CP.A02 * 16.0f);

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EG(com.facebook.ads.redexgen.core.EF r11) {
        /*
            r10 = this;
            com.facebook.ads.redexgen.X.k1 r0 = com.facebook.ads.redexgen.core.EF.A01(r11)
            r10.<init>(r0)
            com.facebook.ads.redexgen.X.k1 r0 = com.facebook.ads.redexgen.core.EF.A01(r11)
            r10.A03 = r0
            com.facebook.ads.redexgen.X.k1 r0 = r10.A03
            com.facebook.ads.redexgen.X.k0 r0 = r0.A02()
            com.facebook.ads.redexgen.X.3g r0 = com.facebook.ads.redexgen.core.AbstractC09163h.A00(r0)
            r10.A02 = r0
            com.facebook.ads.redexgen.X.EJ r0 = com.facebook.ads.redexgen.core.EF.A03(r11)
            r10.A04 = r0
            boolean r0 = com.facebook.ads.redexgen.core.EF.A09(r11)
            if (r0 == 0) goto La5
            int r0 = com.facebook.ads.redexgen.core.EG.A0E
        L27:
            r10.A01 = r0
            boolean r0 = com.facebook.ads.redexgen.core.EF.A09(r11)
            if (r0 == 0) goto La2
            int r0 = com.facebook.ads.redexgen.core.EG.A0B
        L31:
            r10.A00 = r0
            boolean r0 = com.facebook.ads.redexgen.core.EF.A0A(r11)
            r10.A05 = r0
            r0 = 1
            r10.setFocusable(r0)
            android.view.View r9 = r10.A01(r11)
            android.view.View r8 = r10.A00(r11)
            android.view.View r7 = r10.getFooterView()
            com.facebook.ads.redexgen.core.D3.A0I(r9)
            com.facebook.ads.redexgen.core.D3.A0I(r8)
            com.facebook.ads.redexgen.core.D3.A0I(r7)
            r3 = -1
            r2 = -2
            android.widget.RelativeLayout$LayoutParams r6 = new android.widget.RelativeLayout$LayoutParams
            r6.<init>(r3, r2)
            r0 = 10
            r6.addRule(r0)
            android.widget.RelativeLayout$LayoutParams r5 = new android.widget.RelativeLayout$LayoutParams
            r5.<init>(r3, r3)
            r0 = 13
            r5.addRule(r0)
            r1 = 3
            int r0 = r9.getId()
            r5.addRule(r1, r0)
            r1 = 2
            int r0 = r7.getId()
            r5.addRule(r1, r0)
            android.widget.RelativeLayout$LayoutParams r4 = new android.widget.RelativeLayout$LayoutParams
            r4.<init>(r3, r2)
            r0 = 12
            r4.addRule(r0)
            int r3 = com.facebook.ads.redexgen.core.EG.A09
            int r2 = com.facebook.ads.redexgen.core.EG.A09
            int r0 = com.facebook.ads.redexgen.core.EG.A09
            r1 = 0
            r4.setMargins(r3, r1, r2, r0)
            r10.addView(r9, r6)
            r10.addView(r8, r5)
            r10.addView(r7, r4)
            boolean r0 = com.facebook.ads.redexgen.core.EF.A0B(r11)
            if (r0 == 0) goto L9f
        L9b:
            r7.setVisibility(r1)
            return
        L9f:
            r1 = 8
            goto L9b
        La2:
            int r0 = com.facebook.ads.redexgen.core.EG.A0C
            goto L31
        La5:
            int r0 = com.facebook.ads.redexgen.core.EG.A0F
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.EG.<init>(com.facebook.ads.redexgen.X.EF):void");
    }

    public /* synthetic */ EG(EF ef, ED ed) {
        this(ef);
    }

    private View A00(EF ef) {
        DB db;
        int i;
        String str;
        String str2;
        boolean z;
        String str3;
        String str4;
        String str5;
        ImageView imageView = new ImageView(getContext());
        imageView.setPadding(this.A00, this.A00, this.A00, this.A00);
        db = ef.A01;
        imageView.setImageBitmap(DC.A01(db));
        imageView.setColorFilter(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.A01, this.A01);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        i = ef.A00;
        gradientDrawable.setColor(i);
        D3.A0Q(imageView, gradientDrawable);
        layoutParams.gravity = 17;
        layoutParams.setMargins(A09, 0, A09, A09);
        TextView subtitleView = new TextView(getContext());
        D3.A0W(subtitleView, true, 20);
        subtitleView.setTextColor(-14934495);
        str = ef.A06;
        subtitleView.setText(str);
        subtitleView.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(A09, 0, A09, A09);
        TextView titleView = new TextView(getContext());
        D3.A0W(titleView, false, 16);
        titleView.setTextColor(-10459280);
        str2 = ef.A05;
        titleView.setText(str2);
        titleView.setGravity(17);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(A09, 0, A09, A09);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(subtitleView, layoutParams2);
        linearLayout.addView(titleView, layoutParams3);
        z = ef.A09;
        if (z) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            str3 = ef.A04;
            if (!TextUtils.isEmpty(str3)) {
                C1203Ff c1203Ff = new C1203Ff(this.A03);
                LinearLayout.LayoutParams iconParams = new LinearLayout.LayoutParams(A0F, A0F);
                iconParams.setMargins(0, 0, A0A, 0);
                c1203Ff.setFullCircleCorners(true);
                AsyncTaskC2117gc A05 = new AsyncTaskC2117gc(c1203Ff, this.A03).A05(A0F, A0F);
                str5 = ef.A04;
                A05.A07(str5);
                linearLayout2.addView(c1203Ff, iconParams);
            }
            EL el = new EL(this.A03);
            str4 = ef.A03;
            el.setData(str4, DB.CHECKMARK);
            el.setSelected(true);
            linearLayout2.addView(el, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(linearLayout2);
        }
        return linearLayout;
    }

    private View A01(EF ef) {
        boolean z;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        z = ef.A0A;
        if (z) {
            ImageView imageView = new ImageView(getContext());
            imageView.setPadding(A08, A08, A08, A08);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setImageBitmap(DC.A01(DB.CROSS));
            imageView.setOnClickListener(new ED(this));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A0D, A0D);
            layoutParams.setMargins(A07, A07, A07, A07);
            linearLayout.addView(imageView, layoutParams);
        }
        return linearLayout;
    }

    private View getFooterView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(DC.A01(DB.SETTINGS));
        imageView.setColorFilter(-13272859);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A06, A06);
        layoutParams.gravity = 17;
        TextView textView = new TextView(getContext());
        D3.A0W(textView, false, 16);
        textView.setTextColor(-13272859);
        textView.setPadding(A0A, A0A, A0A, A0A);
        textView.setText(this.A02.A0J());
        LinearLayout.LayoutParams settingsIconParams = new LinearLayout.LayoutParams(-2, -2);
        settingsIconParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new EE(this));
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, settingsIconParams);
        return linearLayout;
    }
}
