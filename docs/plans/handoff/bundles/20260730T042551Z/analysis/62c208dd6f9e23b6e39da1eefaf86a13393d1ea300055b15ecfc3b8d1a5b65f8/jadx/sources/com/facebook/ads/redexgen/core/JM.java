package com.facebook.ads.redexgen.core;

import java.util.HashMap;
import java.util.Map;

/* loaded from: assets/audience_network.dex */
public final class JM {
    public float A00;
    public EnumC08601d A01;
    public Map<String, String> A02;

    public JM(EnumC08601d enumC08601d) {
        this(enumC08601d, 0.0f);
    }

    public JM(EnumC08601d enumC08601d, float f) {
        this(enumC08601d, f, null);
    }

    public JM(EnumC08601d enumC08601d, float f, Map<String, String> windowParams) {
        this.A01 = enumC08601d;
        this.A00 = f;
        if (windowParams != null) {
            this.A02 = windowParams;
        } else {
            this.A02 = new HashMap();
        }
    }

    public final float A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01.A03();
    }

    public final EnumC08601d A02() {
        return this.A01;
    }

    public final Map<String, String> A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A01 == EnumC08601d.A0I;
    }
}
