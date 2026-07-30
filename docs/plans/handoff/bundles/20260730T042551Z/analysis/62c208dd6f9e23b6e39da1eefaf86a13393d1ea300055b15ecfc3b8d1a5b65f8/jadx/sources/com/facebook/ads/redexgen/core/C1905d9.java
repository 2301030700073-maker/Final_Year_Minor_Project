package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* renamed from: com.facebook.ads.redexgen.X.d9, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1905d9 extends C6K implements DY {
    public static String[] A08 = {"biNTtjxa0xULALtZEUOcP", "rMVpYr4hwZgX", "y0rebd1hOaNR", "snwXdVXwO66aPvNuuMD2", "jxkMgVVp1g5", "Dcah1JX", "lglxOXHbCZFpcLf1TWQPAMUDis4zLCZx", "n80A5ryznQOlcAJIvKv7FeLq2ck19EHB"};
    public C08902h A00;
    public JK A01;
    public JL A02;
    public JL A03;
    public final int A04;
    public final SparseBooleanArray A05;
    public final C2322k1 A06;
    public final LU A07;

    public C1905d9(LU lu, SparseBooleanArray sparseBooleanArray, JL jl, int i, C2322k1 c2322k1, C08902h c08902h) {
        super(lu);
        this.A06 = c2322k1;
        this.A07 = lu;
        this.A05 = sparseBooleanArray;
        this.A02 = jl;
        this.A04 = i;
        this.A00 = c08902h;
    }

    private void A0A(A7 a7, C1141Cv c1141Cv, String str, C1252Hc c1252Hc) {
        if (this.A05.get(c1252Hc.A02())) {
            return;
        }
        if (this.A03 != null) {
            this.A03.A0V();
            String[] strArr = A08;
            if (strArr[1].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[3] = "sEemyGdXpNnP2WRBMWcD";
            strArr2[0] = "kawPFcVLuq3VyedHvbBIc";
            this.A03 = null;
        }
        this.A01 = new C1908dC(this, str, c1252Hc, a7, c1252Hc.A04(), c1141Cv);
        this.A03 = new JL(this.A07, 10, new WeakReference(this.A01), this.A06);
        this.A03.A0Y(false);
        this.A03.A0W(100);
        this.A03.A0X(100);
        this.A07.setOnAssetsLoadedListener(new C1907dB(this, c1252Hc));
    }

    public final void A0j(C1252Hc c1252Hc, A7 a7, C10297t c10297t, C1141Cv c1141Cv, String str, int i, int i2, int i3) {
        int A02 = c1252Hc.A02();
        this.A07.setTag(-1593835536, Integer.valueOf(A02));
        this.A07.setupNativeCtaExtension(c1252Hc);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i, -2);
        int rightMargin = A02 == 0 ? i3 : i2;
        if (A02 < this.A04 - 1) {
            i3 = i2;
        }
        String[] strArr = A08;
        if (strArr[1].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[1] = "ng4t5bAKqCWK";
        strArr2[2] = "n9xBZs9SEWUc";
        marginLayoutParams.setMargins(rightMargin, 0, i3, 0);
        String A082 = c1252Hc.A03().A0F().A08();
        String A09 = c1252Hc.A03().A0F().A09();
        this.A07.setIsVideo(!TextUtils.isEmpty(A09));
        if (this.A07.A1F()) {
            this.A07.setVideoPlaceholderUrl(A082);
            this.A07.setVideoUrl(c10297t.A0S(A09));
        } else {
            this.A07.setImageUrl(A082);
        }
        this.A07.setLayoutParams(marginLayoutParams);
        this.A07.setCTAInfo(c1252Hc.A03().A0H(), c1252Hc.A04());
        this.A07.A1G(c1252Hc.A04());
        A0A(a7, c1141Cv, str, c1252Hc);
    }

    public final void A0k(JL jl) {
        this.A02 = jl;
    }

    @Override // com.facebook.ads.redexgen.core.DY
    public final void AIL() {
        this.A07.A1A();
    }
}
