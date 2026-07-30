package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.Hb, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1251Hb extends LinearLayout {
    public static final int A04 = (int) (CP.A02 * 32.0f);
    public static final int A05 = (int) (CP.A02 * 8.0f);
    public TextView A00;
    public TextView A01;
    public C1203Ff A02;
    public final C2322k1 A03;

    public C1251Hb(C2322k1 c2322k1) {
        super(c2322k1);
        this.A03 = c2322k1;
        A00(c2322k1);
    }

    private final void A00(C2322k1 c2322k1) {
        setGravity(16);
        this.A02 = new C1203Ff(c2322k1);
        this.A02.setFullCircleCorners(true);
        LinearLayout.LayoutParams pageImageViewParams = new LinearLayout.LayoutParams(A04, A04);
        pageImageViewParams.setMargins(0, 0, A05, 0);
        addView(this.A02, pageImageViewParams);
        LinearLayout pageInfoView = new LinearLayout(c2322k1);
        pageInfoView.setOrientation(1);
        this.A00 = new TextView(c2322k1);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        D3.A0W(this.A00, true, 16);
        this.A00.setEllipsize(TextUtils.TruncateAt.END);
        this.A00.setSingleLine(true);
        this.A01 = new TextView(c2322k1);
        D3.A0W(this.A01, false, 14);
        pageInfoView.addView(this.A00);
        pageInfoView.addView(this.A01);
        addView(pageInfoView, layoutParams);
    }

    public final void A01() {
        this.A02.setImageBitmap(null);
        this.A00.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.A01.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public final void A02(int i, int i2) {
        this.A00.setTextColor(i);
        this.A01.setTextColor(i2);
    }

    public void setPageDetails(C08962n c08962n) {
        AsyncTaskC2117gc asyncTaskC2117gc = new AsyncTaskC2117gc(this.A02, this.A03);
        asyncTaskC2117gc.A05(A04, A04);
        asyncTaskC2117gc.A07(c08962n.A01());
        this.A00.setText(c08962n.A02());
        this.A01.setText(c08962n.A03());
    }
}
