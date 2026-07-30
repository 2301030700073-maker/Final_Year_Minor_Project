package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.jX, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2292jX implements C9A {
    public final /* synthetic */ String[] A00;

    public C2292jX(String[] strArr) {
        this.A00 = strArr;
    }

    @Override // com.facebook.ads.redexgen.core.C9A
    public final boolean A30(String str) {
        for (String str2 : this.A00) {
            if (str2.equals(str)) {
                return false;
            }
        }
        return true;
    }
}
