package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.NativeAdBase;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.kO, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2345kO implements C3B {
    public static byte[] A03;
    public static String[] A04 = {"2TNZv5rtJTplZyjTIrSAFwUR6QP", "UjegX20Mk8HUIHIT", "Ti96PrkTuXG6IMzmEs5GDJe0LgUxYJn1", "WKFIsio5", "sT4eIPa9", "0D70Whi8Ioa2N41OWBvmw3gUZoSjgMHO", "iH11Sl", "erLbaj7N4o7d5mJ3hEM6"};
    public AnonymousClass72 A00;
    public C2322k1 A01;
    public final NativeAdBase.MediaCacheFlag A02;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A04[6].length() == 1) {
                throw new RuntimeException();
            }
            A04[0] = "MdmGKNh4C3mG92xgGyorPLR3SXO";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 88);
            i4++;
        }
    }

    public static void A03() {
        A03 = new byte[]{-26, -39, -20, -31, -18, -35, -28, -35, -38, -35, -34, -26, -35};
    }

    static {
        A03();
    }

    public C2345kO(AnonymousClass72 anonymousClass72, C2322k1 c2322k1, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = anonymousClass72;
        this.A01 = c2322k1;
        this.A02 = mediaCacheFlag;
    }

    @Override // com.facebook.ads.redexgen.core.C3B
    public final void AD4(C1091Ag c1091Ag) {
        BP.A00(new C2348kR(this, c1091Ag));
    }

    @Override // com.facebook.ads.redexgen.core.C3B
    public final void AED(List<C2496mv> list) {
        C10297t manager = new C10297t(this.A01);
        String firstRequestId = A02(6, 7, 23);
        for (C2496mv c2496mv : list) {
            if (A02(6, 7, 23).equals(firstRequestId)) {
                firstRequestId = c2496mv.A0G();
            }
            if (this.A02.equals(NativeAdBase.MediaCacheFlag.ALL)) {
                if (c2496mv.A0E().A0F() != null) {
                    manager.A0b(new C10277r(c2496mv.A0E().A0F().getUrl(), c2496mv.A0E().A0F().getHeight(), c2496mv.A0E().A0F().getWidth(), c2496mv.A0G(), A02(0, 6, 32)));
                }
                if (c2496mv.A0E().A0E() != null) {
                    manager.A0b(new C10277r(c2496mv.A0E().A0E().getUrl(), c2496mv.A0E().A0E().getHeight(), c2496mv.A0E().A0E().getWidth(), c2496mv.A0G(), A02(0, 6, 32)));
                }
                if (!TextUtils.isEmpty(c2496mv.A0E().A0b())) {
                    manager.A0a(new C10257p(c2496mv.A0E().A0b(), c2496mv.A0G(), A02(0, 6, 32), c2496mv.A0E().A0A()));
                }
            }
        }
        manager.A0W(new C2346kP(this, list), new C10227m(firstRequestId, A02(0, 6, 32)));
    }
}
