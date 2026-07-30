package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.me, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2479me extends AbstractC09745q<C2192hr> {
    public static String[] A05 = {"BofGdT", "Cb8B81bPHxSAbCDzy4", "tLXqRIVVg6Ax3ByQPtTHAjuCLXMkMIv2", "Awqy8gsEnlsE3SarczMGKLCzZdtyeG5w", "c95zYEegXXkMe1M4f4KrlDKZ96YYHdKl", "dzB1VPy83al1mBxHBTo", "7fXNgxpNBgLKECdM7L4CyN3WmxsqHAeT", "HUwJOtf8ZOX36MmDYBkOhN0MiSikj2Pg"};
    public static final int A06 = (int) (CP.A02 * 4.0f);
    public C2O A00;
    public final List<C2238ie> A01;
    public final int A02;
    public final C2322k1 A03;
    public final JK A04 = new C2481mg(this);

    public AbstractC2479me(C0X c0x, List<C2238ie> list, C2322k1 c2322k1) {
        this.A03 = c2322k1;
        this.A02 = c0x.getChildSpacing();
        this.A01 = list;
    }

    private ViewGroup.MarginLayoutParams A02(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i2 = this.A02;
        if (i == 0) {
            i2 *= 2;
        }
        int size = this.A01.size() - 1;
        String[] strArr = A05;
        if (strArr[3].charAt(2) == strArr[4].charAt(2)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[7] = "KlchvvVcsY9zV3e8wqzNtTZQscUuxnqD";
        strArr2[1] = "gQBYn2ao1l5plthpQQ";
        marginLayoutParams.setMargins(i2, 0, i >= size ? this.A02 * 2 : this.A02, 0);
        return marginLayoutParams;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC09745q
    public final int A0C() {
        return this.A01.size();
    }

    public final void A0G(ImageView imageView, int i) {
        C2238ie c2238ie = this.A01.get(i);
        AU adCoverImage = c2238ie.getAdCoverImage();
        if (adCoverImage != null) {
            AsyncTaskC2117gc A04 = new AsyncTaskC2117gc(imageView, this.A03).A04();
            A04.A06(new C2480mf(this, i, c2238ie));
            A04.A07(adCoverImage.getUrl());
        }
    }

    public final void A0H(C2O c2o) {
        this.A00 = c2o;
    }

    public void A0I(C2192hr c2192hr, int i) {
        c2192hr.A0j().setLayoutParams(A02(i));
    }
}
