package com.facebook.ads.redexgen.core;

import android.view.View;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Dl, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1157Dl implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1159Dn A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{124, 120, 116, 114, 112};
    }

    public ViewOnClickListenerC1157Dl(C1159Dn c1159Dn) {
        this.A00 = c1159Dn;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C2183hg c2183hg;
        if (BQ.A02(this)) {
            return;
        }
        try {
            c2183hg = this.A00.A06;
            c2183hg.getCTAButton().A0A(A00(0, 5, 121));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
