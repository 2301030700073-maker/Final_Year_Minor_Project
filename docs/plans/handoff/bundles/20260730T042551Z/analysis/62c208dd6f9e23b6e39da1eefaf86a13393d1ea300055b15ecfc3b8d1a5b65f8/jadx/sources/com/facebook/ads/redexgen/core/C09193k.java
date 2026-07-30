package com.facebook.ads.redexgen.core;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.3k, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09193k implements Serializable {
    public static final long serialVersionUID = -3209129042070173126L;
    public C09193k A00;
    public final int A01;
    public final String A02;
    public final String A03;
    public final List<C09193k> A04;

    public C09193k(int i, String str, String str2) {
        this.A04 = new ArrayList();
        this.A01 = i;
        this.A03 = str;
        this.A02 = str2;
    }

    public C09193k(String str) {
        this(0, null, str);
    }

    private void A00(C09193k c09193k) {
        this.A00 = c09193k;
    }

    public final int A01() {
        return this.A01;
    }

    public final C09193k A02() {
        return this.A00;
    }

    public final String A03() {
        return this.A02;
    }

    public final String A04() {
        return this.A03;
    }

    public final List<C09193k> A05() {
        return this.A04;
    }

    public final void A06(C09193k c09193k) {
        c09193k.A00(this);
        this.A04.add(c09193k);
    }
}
