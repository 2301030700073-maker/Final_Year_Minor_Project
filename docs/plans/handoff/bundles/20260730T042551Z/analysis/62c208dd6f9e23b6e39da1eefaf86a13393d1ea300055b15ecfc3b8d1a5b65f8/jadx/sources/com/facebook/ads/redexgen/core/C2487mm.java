package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.mm, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2487mm extends AnonymousClass25 {
    public static byte[] A06;
    public static final String A07;
    public C2489mo A00;
    public EnumC1093Aj A01;
    public boolean A02;
    public final C2322k1 A03;
    public final A7 A04;
    public final F1 A05;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 53);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A06 = new byte[]{-55, -56, -43, -43, -52, -39};
    }

    static {
        A05();
        A07 = C2487mm.class.getSimpleName();
    }

    public C2487mm(C2322k1 c2322k1, A7 a7, F1 f1, JL jl, AnonymousClass26 anonymousClass26, EnumC1093Aj enumC1093Aj) {
        super(c2322k1, anonymousClass26, jl);
        this.A04 = a7;
        this.A05 = f1;
        this.A03 = c2322k1;
        this.A01 = enumC1093Aj;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass25
    public final void A08(Map<String, String> map) {
        String adPlacementType;
        if (this.A00 != null && !TextUtils.isEmpty(this.A00.A7E())) {
            this.A03.A0F().A3B();
            AbstractC09093a.A02(this.A00.A05(), AbstractC1124Ce.A00(A04(0, 6, 50)));
            this.A04.AB0(this.A00.A7E(), map);
            if (C10729m.A18(this.A03)) {
                if (this.A01 == EnumC1093Aj.A09) {
                    adPlacementType = AdPlacementType.MEDIUM_RECTANGLE.toString();
                } else {
                    adPlacementType = AdPlacementType.BANNER.toString();
                }
                C1108Bh A00 = C1108Bh.A00(this.A03);
                String placementType = this.A00.A7E();
                A00.A0E(adPlacementType, placementType);
            }
        }
    }

    public final synchronized void A09() {
        if (!this.A02 && this.A00 != null) {
            this.A02 = true;
            if (!TextUtils.isEmpty(this.A00.A03())) {
                ExecutorC1143Cx.A00(new C2488mn(this));
            }
        }
    }

    public final void A0A(C2489mo c2489mo) {
        this.A00 = c2489mo;
    }
}
