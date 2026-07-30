package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* renamed from: com.facebook.ads.redexgen.X.ci, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1878ci extends C6K implements DY {
    public C08902h A00;
    public JK A01;
    public JL A02;
    public JL A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final SparseBooleanArray A08;
    public final C2322k1 A09;
    public final LK A0A;

    public C1878ci(LK lk, SparseBooleanArray sparseBooleanArray, JL jl, int i, int i2, int i3, int i4, C2322k1 c2322k1, C08902h c08902h) {
        super(lk);
        this.A09 = c2322k1;
        this.A0A = lk;
        this.A08 = sparseBooleanArray;
        this.A02 = jl;
        this.A04 = i;
        this.A05 = i2;
        this.A06 = i3;
        this.A07 = i4;
        this.A00 = c08902h;
    }

    private void A0A(A7 a7, C1141Cv c1141Cv, String str, C1252Hc c1252Hc) {
        if (this.A08.get(c1252Hc.A02())) {
            return;
        }
        if (this.A03 != null) {
            this.A03.A0V();
            this.A03 = null;
        }
        this.A01 = new C1880ck(this, str, c1252Hc, a7, c1252Hc.A04(), c1141Cv);
        this.A03 = new JL(this.A0A, 10, new WeakReference(this.A01), this.A09);
        this.A03.A0Y(false);
        this.A03.A0W(100);
        this.A03.A0X(100);
        this.A0A.setOnAssetsLoadedListener(new C1879cj(this, c1252Hc));
    }

    public final ViewOnClickListenerC2111gW A0j() {
        return this.A0A.getCtaButton();
    }

    public final void A0k(C1252Hc c1252Hc, A7 a7, C10297t c10297t, C1141Cv c1141Cv, String str) {
        int A02 = c1252Hc.A02();
        this.A0A.setTag(-1593835536, Integer.valueOf(A02));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.A04, -2);
        int rightMargin = A02 == 0 ? this.A05 : this.A06;
        int position = this.A07;
        marginLayoutParams.setMargins(rightMargin, 0, A02 >= position + (-1) ? this.A05 : this.A06, 0);
        String imageUrl = c1252Hc.A03().A0F().A08();
        String A09 = c1252Hc.A03().A0F().A09();
        this.A0A.setIsVideo(!TextUtils.isEmpty(A09));
        if (this.A0A.A1F()) {
            this.A0A.setVideoPlaceholderUrl(imageUrl);
            this.A0A.setVideoUrl(c10297t.A0S(A09));
        } else {
            this.A0A.setImageUrl(imageUrl);
        }
        this.A0A.setLayoutParams(marginLayoutParams);
        this.A0A.setAdTitleAndDescription(c1252Hc.A03().A0G().A0F(), c1252Hc.A03().A0G().A04());
        this.A0A.setCTAInfo(c1252Hc.A03().A0H(), c1252Hc.A04());
        this.A0A.A1I(c1252Hc.A04());
        A0A(a7, c1141Cv, str, c1252Hc);
    }

    @Override // com.facebook.ads.redexgen.core.DY
    public final void AIL() {
        this.A0A.A1A();
    }
}
