package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.dC, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1908dC extends JK {
    public final /* synthetic */ A7 A00;
    public final /* synthetic */ C1141Cv A01;
    public final /* synthetic */ C1252Hc A02;
    public final /* synthetic */ C1905d9 A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ Map A05;

    public C1908dC(C1905d9 c1905d9, String str, C1252Hc c1252Hc, A7 a7, Map map, C1141Cv c1141Cv) {
        this.A03 = c1905d9;
        this.A04 = str;
        this.A02 = c1252Hc;
        this.A00 = a7;
        this.A05 = map;
        this.A01 = c1141Cv;
    }

    @Override // com.facebook.ads.redexgen.core.JK
    public final void A03() {
        JL jl;
        SparseBooleanArray sparseBooleanArray;
        JL jl2;
        C08902h c08902h;
        C2322k1 c2322k1;
        SparseBooleanArray sparseBooleanArray2;
        jl = this.A03.A02;
        if (!jl.A0Z() && !TextUtils.isEmpty(this.A04)) {
            sparseBooleanArray = this.A03.A05;
            if (!sparseBooleanArray.get(this.A02.A02())) {
                A7 a7 = this.A00;
                String str = this.A04;
                FB fb = new FB(this.A05);
                jl2 = this.A03.A03;
                a7.AB0(str, fb.A03(jl2).A02(this.A01).A05());
                c08902h = this.A03.A00;
                c2322k1 = this.A03.A06;
                C08902h.A07(c08902h, c2322k1);
                sparseBooleanArray2 = this.A03.A05;
                sparseBooleanArray2.put(this.A02.A02(), true);
            }
        }
    }
}
