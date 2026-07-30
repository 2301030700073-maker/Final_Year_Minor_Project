package com.facebook.ads.redexgen.core;

import android.content.SharedPreferences;

/* renamed from: com.facebook.ads.redexgen.X.lZ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2414lZ implements InterfaceC09213m {
    public final SharedPreferences A00;

    public C2414lZ(SharedPreferences sharedPreferences) {
        this.A00 = sharedPreferences;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09213m
    public final C2415la A68() {
        return new C2415la(this.A00.edit());
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09213m
    public final long A8G(String str, long j) {
        return this.A00.getLong(str, j);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09213m
    public final String A94(String str, String str2) {
        return this.A00.getString(str, str2);
    }
}
