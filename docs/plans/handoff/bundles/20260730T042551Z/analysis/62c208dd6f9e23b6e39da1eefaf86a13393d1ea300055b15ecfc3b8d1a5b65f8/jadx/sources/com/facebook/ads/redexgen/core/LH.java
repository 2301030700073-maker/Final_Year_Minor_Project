package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import org.json.JSONObject;

/* loaded from: assets/audience_network.dex */
public class LH extends AbstractC1827bt {
    public static byte[] A01;
    public final /* synthetic */ C1233Gj A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 124);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{53, 55, 42, 53, 38, 55, 42, 41};
    }

    public LH(C1233Gj c1233Gj) {
        this.A00 = c1233Gj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(C1828bu c1828bu) {
        InterfaceC1232Gi interfaceC1232Gi;
        JSONObject A03;
        this.A00.A03 = true;
        interfaceC1232Gi = this.A00.A0B;
        A03 = this.A00.A03();
        interfaceC1232Gi.AFZ(A00(0, 8, 73), A03);
    }
}
