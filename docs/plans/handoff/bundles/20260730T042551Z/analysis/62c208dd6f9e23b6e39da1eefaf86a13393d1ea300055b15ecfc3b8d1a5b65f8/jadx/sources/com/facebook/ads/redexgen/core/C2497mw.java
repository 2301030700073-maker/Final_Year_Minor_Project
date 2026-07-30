package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.mw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2497mw extends BY {
    public final /* synthetic */ C2496mv A00;
    public final /* synthetic */ Map A01;
    public final /* synthetic */ Map A02;

    public C2497mw(C2496mv c2496mv, Map map, Map map2) {
        this.A00 = c2496mv;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C2483mi c2483mi;
        C2322k1 c2322k1;
        C2483mi c2483mi2;
        c2483mi = this.A00.A01;
        if (!TextUtils.isEmpty(c2483mi.A7E())) {
            HashMap hashMap = new HashMap();
            Map<String, String> extraData = this.A02;
            hashMap.putAll(extraData);
            Map<String, String> extraData2 = this.A01;
            hashMap.putAll(extraData2);
            c2322k1 = this.A00.A0A;
            A7 A0A = c2322k1.A0A();
            c2483mi2 = this.A00.A01;
            A0A.ABO(c2483mi2.A7E(), hashMap);
        }
    }
}
