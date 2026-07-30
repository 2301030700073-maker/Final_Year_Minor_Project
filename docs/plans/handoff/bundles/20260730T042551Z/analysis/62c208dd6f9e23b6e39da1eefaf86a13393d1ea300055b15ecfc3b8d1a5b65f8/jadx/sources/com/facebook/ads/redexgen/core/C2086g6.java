package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.g6, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2086g6 implements InterfaceC1193Ev {
    public static byte[] A01;
    public final /* synthetic */ C2074fu A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 104);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{73, 71, 57, 70, 51, 66, 53, 74, 61, 59, 53, 72, 61, 67, 66, 51, 61, 53, 54};
    }

    public C2086g6(C2074fu c2074fu) {
        this.A00 = c2074fu;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEM(String str) {
        C1185En c1185En;
        C1185En c1185En2;
        AbstractC2478md abstractC2478md;
        C2150h9 c2150h9;
        AbstractC2478md abstractC2478md2;
        C2150h9 c2150h92;
        this.A00.A0W = false;
        c1185En = this.A00.A0J;
        c1185En.setProgress(100);
        c1185En2 = this.A00.A0J;
        D3.A0L(c1185En2, 8);
        abstractC2478md = this.A00.A0G;
        if (abstractC2478md.A1J()) {
            c2150h9 = this.A00.A0K;
            if (c2150h9 != null) {
                abstractC2478md2 = this.A00.A0G;
                String A0l = abstractC2478md2.A0l();
                if (!TextUtils.isEmpty(A0l)) {
                    c2150h92 = this.A00.A0K;
                    c2150h92.loadUrl(A0l);
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEO(String str) {
        C1185En c1185En;
        C1184Em c1184Em;
        boolean z;
        int i;
        this.A00.A0W = true;
        c1185En = this.A00.A0J;
        D3.A0L(c1185En, 0);
        c1184Em = this.A00.A0I;
        c1184Em.setUrl(str);
        z = this.A00.A0U;
        if (!z) {
            i = this.A00.A01;
            if (i > 1) {
                this.A00.A0U = true;
                this.A00.A0h(A00(0, 19, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
            }
        }
        C2074fu.A03(this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEj(int i) {
        boolean z;
        C1185En c1185En;
        z = this.A00.A0W;
        if (z) {
            c1185En = this.A00.A0J;
            c1185En.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEl(String str) {
        C1184Em c1184Em;
        c1184Em = this.A00.A0I;
        c1184Em.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1193Ev
    public final void AEo() {
        C1221Fx c1221Fx;
        c1221Fx = this.A00.A0M;
        c1221Fx.A0C().ACY(14);
    }
}
