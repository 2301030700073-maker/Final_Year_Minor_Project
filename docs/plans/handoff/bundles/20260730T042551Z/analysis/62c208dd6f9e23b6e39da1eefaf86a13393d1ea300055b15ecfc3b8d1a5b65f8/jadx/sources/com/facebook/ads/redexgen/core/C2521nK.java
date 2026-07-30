package com.facebook.ads.redexgen.core;

import java.util.Collection;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.nK, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2521nK implements InterfaceC08811y {
    public final /* synthetic */ C2322k1 A00;
    public final /* synthetic */ String A01;
    public final /* synthetic */ JSONObject A02;

    public C2521nK(JSONObject jSONObject, C2322k1 c2322k1, String str) {
        this.A02 = jSONObject;
        this.A00 = c2322k1;
        this.A01 = str;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC08811y
    public final String A7E() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC08811y
    public final Collection<String> A7f() {
        return AbstractC08821z.A03(this.A00, this.A02);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC08811y
    public final EnumC08801x A8A() {
        return AbstractC08821z.A00(this.A02);
    }
}
