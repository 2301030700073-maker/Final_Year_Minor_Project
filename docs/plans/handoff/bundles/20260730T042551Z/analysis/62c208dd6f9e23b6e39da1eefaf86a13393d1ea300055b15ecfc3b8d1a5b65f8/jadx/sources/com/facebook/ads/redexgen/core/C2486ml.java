package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.ml, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2486ml extends AnonymousClass25 {
    public static byte[] A02;
    public final C2483mi A00;
    public final A7 A01;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 26);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{70, 69, 74, 74, 65, 86};
    }

    public C2486ml(C2322k1 c2322k1, AnonymousClass26 anonymousClass26, JL jl, A7 a7, C2483mi c2483mi) {
        super(c2322k1, anonymousClass26, jl);
        this.A01 = a7;
        this.A00 = c2483mi;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass25
    public final void A08(Map<String, String> map) {
        if (this.A00 != null && !TextUtils.isEmpty(this.A00.A7E())) {
            this.A02.A0F().A3B();
            AbstractC09093a.A02(this.A00.A0X(), AbstractC1124Ce.A00(A01(0, 6, 62)));
            this.A01.AB0(this.A00.A7E(), map);
            if (C10729m.A18(this.A02)) {
                String adPlacementType = AdPlacementType.MEDIUM_RECTANGLE.toString();
                C1108Bh A00 = C1108Bh.A00(this.A02);
                String placementType = this.A00.A7E();
                A00.A0E(adPlacementType, placementType);
            }
        }
    }
}
