package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AdError;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: assets/audience_network.dex */
public abstract class FH extends LinearLayout {
    public static byte[] A0A;
    public static final LinearLayout.LayoutParams A0B;
    public LinearLayout A00;
    public TextView A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final View.OnClickListener A05;
    public final RelativeLayout A06;
    public final C2322k1 A07;
    public final ViewOnClickListenerC2111gW A08;
    public final C1203Ff A09;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 11);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A0A = new byte[]{-96, -93, -93, -92, -77, -96, -88, -85, -78};
    }

    public abstract void A0D(int i);

    static {
        A01();
        A0B = new LinearLayout.LayoutParams(-2, -2);
    }

    public FH(C2322k1 c2322k1, ViewOnClickListenerC2111gW viewOnClickListenerC2111gW, int i, C08852c c08852c, boolean z, String str, A7 a7, DR dr, JL jl, C1141Cv c1141Cv, C08902h c08902h, boolean z2, String str2) {
        super(c2322k1);
        this.A02 = A00(0, 0, 37);
        D3.A0I(this);
        this.A07 = c2322k1;
        this.A04 = i;
        this.A03 = z2;
        this.A02 = str2;
        this.A09 = new C1203Ff(c2322k1);
        D3.A0K(this.A09, 0);
        D3.A0I(this.A09);
        if (z2) {
            this.A00 = new LinearLayout(c2322k1);
            this.A01 = new TextView(c2322k1);
            D3.A0I(this.A01);
        }
        if (viewOnClickListenerC2111gW == null) {
            this.A08 = new ViewOnClickListenerC2111gW(c2322k1, str, c08852c, z, a7, dr, jl, c1141Cv, c08902h);
        } else {
            this.A08 = viewOnClickListenerC2111gW;
        }
        D3.A0E(AdError.NO_FILL_ERROR_CODE, this.A08);
        this.A05 = AbstractC1214Fq.A03(this.A08, A00(0, 9, 52));
        this.A06 = new RelativeLayout(c2322k1);
        this.A06.setLayoutParams(A0B);
        D3.A0I(this.A06);
    }

    public void A0N() {
        this.A09.setOnClickListener(this.A05);
    }

    public final ViewOnClickListenerC2111gW getCTAButton() {
        return this.A08;
    }

    public View getExpandableLayout() {
        return null;
    }

    public final ImageView getIconView() {
        return this.A09;
    }

    public void setInfo(C08832a c08832a, C08862d c08862d, String str, String str2, CZ cz, FP fp) {
        this.A08.setCta(c08862d, str, new HashMap(), cz, fp);
        new AsyncTaskC2117gc(this.A09, this.A07).A05(this.A04, this.A04).A07(str2);
    }

    public void setTitleMaxLines(int i) {
    }
}
