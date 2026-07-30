package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Ql, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1480Ql {
    public static final C1480Ql A01 = new C1480Ql(false);
    public final boolean A00;

    public C1480Ql(boolean z) {
        this.A00 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.A00 == ((C1480Ql) obj).A00;
    }

    public final int hashCode() {
        return !this.A00 ? 1 : 0;
    }
}
