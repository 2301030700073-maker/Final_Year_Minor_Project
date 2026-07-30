package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import org.json.JSONObject;

/* loaded from: assets/audience_network.dex */
public class LG extends AbstractC1829bv {
    public static byte[] A01;
    public final /* synthetic */ C1233Gj A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{112, 108, 97, 121};
    }

    public LG(C1233Gj c1233Gj) {
        this.A00 = c1233Gj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(C1830bw c1830bw) {
        InterfaceC1232Gi interfaceC1232Gi;
        JSONObject A03;
        this.A00.A04 = true;
        interfaceC1232Gi = this.A00.A0B;
        A03 = this.A00.A03();
        interfaceC1232Gi.AFZ(A00(0, 4, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), A03);
    }
}
