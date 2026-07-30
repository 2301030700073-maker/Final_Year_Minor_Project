package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.7i, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C10187i {
    public static boolean A04;
    public static byte[] A05;
    public static final String A06;
    public final C10197j A00;
    public final C10207k A01;
    public final C2321k0 A02;
    public final InterfaceC1318Jq A03;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 31);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{122, 108, 71, 125, 96, 108, 106, 121, 107};
    }

    static {
        A01();
        A06 = C10187i.class.getSimpleName();
    }

    public C10187i(C2321k0 c2321k0, InterfaceC1730aF interfaceC1730aF, C10197j c10197j, C10207k c10207k) {
        this.A02 = c2321k0;
        this.A03 = interfaceC1730aF.A5K(EnumC1319Jr.A06);
        this.A00 = c10197j;
        this.A01 = c10207k;
        this.A03.A3r(new C2330k9(this));
        A02();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A02() {
        if (BQ.A02(this)) {
            return;
        }
        try {
            if (!this.A03.AAT()) {
                this.A02.A05().AAD();
                return;
            }
            String btExtras = this.A03.A7Y().optString(A00(0, 9, 7));
            if (!TextUtils.isEmpty(btExtras)) {
                this.A00.A04(this.A02, btExtras);
                if (!A04 || C10729m.A0i(this.A02)) {
                    A04 = true;
                    this.A01.A07();
                }
            }
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
