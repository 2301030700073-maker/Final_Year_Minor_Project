package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import org.json.JSONObject;

/* loaded from: assets/audience_network.dex */
public class LD extends AbstractC1837c3 {
    public static byte[] A01;
    public final /* synthetic */ C1233Gj A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{107, 103, 101, 120, 100, 109, 124, 109, 108};
    }

    public LD(C1233Gj c1233Gj) {
        this.A00 = c1233Gj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(C1328Ka c1328Ka) {
        InterfaceC1232Gi interfaceC1232Gi;
        C1855cL c1855cL;
        JSONObject A04;
        this.A00.A07();
        interfaceC1232Gi = this.A00.A0B;
        C1233Gj c1233Gj = this.A00;
        c1855cL = this.A00.A0D;
        A04 = c1233Gj.A04(c1855cL.getDuration());
        interfaceC1232Gi.AFZ(A00(0, 9, 87), A04);
    }
}
