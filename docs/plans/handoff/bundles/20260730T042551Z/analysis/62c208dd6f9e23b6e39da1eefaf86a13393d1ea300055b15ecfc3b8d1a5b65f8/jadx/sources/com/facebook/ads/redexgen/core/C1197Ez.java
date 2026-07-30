package com.facebook.ads.redexgen.core;

import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Ez, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1197Ez extends RelativeLayout {
    public static DR A05;
    public static byte[] A06;
    public static final int A07;
    public static final int A08;
    public static final int A09;
    public AbstractC2369km A00;
    public C2322k1 A01;
    public C0W A02;
    public C2144h3 A03;
    public C1202Fe A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 60);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{2, 32, 51, 46, 52, 50, 36, 45, 97, 15, 32, 53, 40, 55, 36, 97, 55, 40, 36, 54, 97, 32, 37, 36, 49, 53, 36, 51, 97, 40, 50, 47, 102, 53, 97, 34, 51, 36, 32, 53, 36, 37, 97, 49, 51, 46, 49, 36, 51, 45, 56, 67, 65, 74, 65, 86, 77, 71};
    }

    static {
        A02();
        A08 = (int) (CP.A02 * 8.0f);
        A07 = A08 * 10;
        A09 = (int) (CP.A02 * 15.0f);
        A05 = new C2137gw();
    }

    public C1197Ez(C2322k1 c2322k1) {
        super(c2322k1);
        this.A01 = c2322k1;
        this.A02 = new C0W(c2322k1);
        D3.A0I(this.A02);
        this.A00 = new MK();
        this.A00.A0G(this.A02);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.A02, layoutParams);
    }

    private ArrayList<C1252Hc> A01(AbstractC2478md abstractC2478md) {
        if (abstractC2478md == null) {
            return new ArrayList<>();
        }
        List<C2T> A1i = abstractC2478md.A1i();
        ArrayList<C1252Hc> arrayList = new ArrayList<>(A1i.size());
        for (int i = 0; i < A1i.size(); i++) {
            arrayList.add(new C1252Hc(i, A1i.size(), A1i.get(i)));
        }
        return arrayList;
    }

    public final void A04() {
        this.A02.setAdapter(null);
    }

    public final void A05(C2238ie c2238ie, int i) {
        ArrayList<C1252Hc> A01 = A01(c2238ie.A10());
        this.A02.setCardsInfo(A01);
        this.A03 = new C2144h3(this.A01, A01, c2238ie.A10(), this.A01.A02().A0A(), c2238ie, A05, c2238ie.A10().A1g(), this.A02.getCarouselCardBehaviorHelper(), null);
        this.A02.setAdapter(this.A03);
        if (i == 0) {
            i = CP.A04.widthPixels;
        }
        this.A03.A0G(i - A07, 16, 0);
        this.A03.A06();
        setupDotsLayout(c2238ie, A01);
    }

    public final void A06(JL jl) {
        if (this.A03 != null) {
            this.A03.A0H(jl);
        } else {
            this.A01.A08().AAu(A00(51, 7, 24), AbstractC10358a.A1v, new C10368b(A00(0, 51, 125)));
        }
        this.A02.A20(jl);
    }

    public static DR getDummyListener() {
        return A05;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z && this.A03 != null) {
            this.A03.A0G((i3 - i) - A07, 16, 0);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpLayoutForCardAtIndex(int i) {
        if (this.A04 != null) {
            this.A04.A00(i);
        }
    }

    private void setupDotsLayout(C2238ie c2238ie, ArrayList<C1252Hc> arrayList) {
        this.A02.getCarouselCardBehaviorHelper().A0Y(new C2134gt(this));
        this.A04 = new C1202Fe(this.A01, c2238ie.A10().A1a().A01(), arrayList.size());
        D3.A0I(this.A04);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, this.A02.getId());
        layoutParams.setMargins(0, A09, 0, 0);
        addView(this.A04, layoutParams);
    }
}
