package com.facebook.ads.redexgen.core;

import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Fl, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1209Fl extends LinearLayout {
    public static byte[] A04;
    public static String[] A05 = {"5HLU", "cJmhtdIbv5Y5xdwCDl3dT8HPvklAUmwI", "4stzzs6gVfUC8wPYX", "7o6tBFGKBnQKcZsvXBJ4ayd9LnRtCNJ", "BSijPHOaulEPVGa4U1fKlqwI", "TamflSlcNH2rcKEIo3f72qWopMk8DENN", "Hhh3HDuTgivrAf4KqreTZK2", "SugScFu"};
    public static final float A06;
    public static final int A07;
    public static final int A08;
    public final TextView A00;
    public final TextView A01;
    public final TextView A02;
    public final boolean A03;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{31, 26, 26, 27, 10, 31, 23, 18, 13};
    }

    static {
        A01();
        A06 = Resources.getSystem().getDisplayMetrics().density;
        A08 = (int) (A06 * 6.0f);
        A07 = (int) (A06 * 8.0f);
    }

    public C1209Fl(C2322k1 c2322k1, C08852c c08852c, boolean z, int i, int i2, int i3) {
        super(c2322k1);
        setOrientation(1);
        this.A02 = new TextView(c2322k1);
        D3.A0W(this.A02, true, i);
        this.A02.setEllipsize(TextUtils.TruncateAt.END);
        this.A02.setLineSpacing(A08, 1.0f);
        this.A01 = new TextView(c2322k1);
        this.A00 = new TextView(c2322k1);
        D3.A0W(this.A00, false, i2);
        this.A00.setEllipsize(TextUtils.TruncateAt.END);
        this.A00.setLineSpacing(A08, 1.0f);
        this.A03 = C10729m.A16(c2322k1);
        int i4 = this.A03 ? -2 : -1;
        addView(this.A02, new LinearLayout.LayoutParams(i4, -2));
        addView(this.A01, new LinearLayout.LayoutParams(i4, -2));
        this.A01.setVisibility(8);
        A03(c08852c, z);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, -2);
        layoutParams.setMargins(0, i3, 0, 0);
        addView(this.A00, layoutParams);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1209Fl(com.facebook.ads.redexgen.core.C2322k1 r8, com.facebook.ads.redexgen.core.C08852c r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            if (r11 == 0) goto L19
            r4 = 18
        L4:
            if (r11 == 0) goto L16
            r5 = 14
        L8:
            int r6 = com.facebook.ads.redexgen.core.C1209Fl.A07
            if (r12 == 0) goto Le
            int r6 = r6 / 2
        Le:
            r0 = r7
            r3 = r10
            r2 = r9
            r1 = r8
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        L16:
            r5 = 16
            goto L8
        L19:
            r4 = 22
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1209Fl.<init>(com.facebook.ads.redexgen.X.k1, com.facebook.ads.redexgen.X.2c, boolean, boolean, boolean):void");
    }

    public final void A02() {
        this.A02.setTypeface(this.A02.getTypeface(), 1);
    }

    public final void A03(C08852c c08852c, boolean z) {
        this.A02.setTextColor(c08852c.A07(z));
        this.A01.setTextColor(c08852c.A05(z));
        this.A00.setTextColor(c08852c.A06(z));
    }

    public final void A04(String str, String str2, String str3, boolean z, boolean z2) {
        boolean z3 = !TextUtils.isEmpty(str);
        boolean z4 = !TextUtils.isEmpty(str2);
        TextView textView = this.A02;
        if (!z3) {
            str = str2;
        }
        textView.setText(str);
        if (str3 != null) {
            this.A01.setText(str3);
        }
        TextView textView2 = this.A00;
        if (!z3) {
            str2 = A00(0, 0, 51);
        }
        textView2.setText(str2);
        int i = 3;
        String[] strArr = A05;
        if (strArr[6].length() != strArr[4].length()) {
            String[] strArr2 = A05;
            strArr2[3] = "nuTyQWYrKUsKt4wC014k9cpf4UiNlrc";
            strArr2[0] = "l7Wy";
            if (!z3 || !z4) {
                TextView textView3 = this.A02;
                if (A05[1].charAt(4) != 'F') {
                    String[] strArr3 = A05;
                    strArr3[3] = "qWmgL2iM9nfMb7yMq7CVR7HS6Guvx6S";
                    strArr3[0] = "mFhP";
                    if (z) {
                        i = 2;
                    } else if (z2) {
                        i = 4;
                    }
                    textView3.setMaxLines(i);
                    return;
                }
            } else {
                this.A02.setMaxLines(z ? 1 : 2);
                this.A00.setMaxLines(z ? 1 : z2 ? 3 : 2);
                return;
            }
        }
        throw new RuntimeException();
    }

    public TextView getDescriptionTextView() {
        return this.A00;
    }

    public TextView getTitleTextView() {
        return this.A02;
    }

    public void setAlignment(int i) {
        if (this.A03) {
            setGravity(i);
        }
        this.A02.setGravity(i);
        this.A00.setGravity(i);
    }

    public void setCTAClickListener(ViewOnClickListenerC2111gW viewOnClickListenerC2111gW) {
        ViewOnClickListenerC1213Fp A03 = AbstractC1214Fq.A03(viewOnClickListenerC2111gW, A00(0, 9, 20));
        this.A02.setOnClickListener(A03);
        this.A00.setOnClickListener(A03);
        this.A01.setOnClickListener(A03);
    }

    public void setDescriptionTextSize(int i) {
        this.A00.setTextSize(i);
    }

    public void setDescriptionVisibility(int i) {
        this.A00.setVisibility(i);
    }

    public void setTitleTextSize(int i) {
        this.A02.setTextSize(i);
    }
}
