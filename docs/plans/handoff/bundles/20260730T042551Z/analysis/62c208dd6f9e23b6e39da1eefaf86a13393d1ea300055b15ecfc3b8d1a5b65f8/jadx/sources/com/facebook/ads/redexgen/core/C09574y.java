package com.facebook.ads.redexgen.core;

import android.view.WindowInsets;

/* renamed from: com.facebook.ads.redexgen.X.4y, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09574y {
    public final Object A00;

    public C09574y(Object obj) {
        this.A00 = obj;
    }

    public static C09574y A00(Object obj) {
        if (obj == null) {
            return null;
        }
        return new C09574y(obj);
    }

    public static Object A01(C09574y c09574y) {
        if (c09574y == null) {
            return null;
        }
        return c09574y.A00;
    }

    public final int A02() {
        return ((WindowInsets) this.A00).getSystemWindowInsetBottom();
    }

    public final int A03() {
        return ((WindowInsets) this.A00).getSystemWindowInsetLeft();
    }

    public final int A04() {
        return ((WindowInsets) this.A00).getSystemWindowInsetRight();
    }

    public final int A05() {
        return ((WindowInsets) this.A00).getSystemWindowInsetTop();
    }

    public final C09574y A06(int i, int i2, int i3, int i4) {
        return new C09574y(((WindowInsets) this.A00).replaceSystemWindowInsets(i, i2, i3, i4));
    }

    public final boolean A07() {
        return ((WindowInsets) this.A00).isConsumed();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C09574y c09574y = (C09574y) obj;
        return this.A00 == null ? c09574y.A00 == null : this.A00.equals(c09574y.A00);
    }

    public final int hashCode() {
        if (this.A00 == null) {
            return 0;
        }
        return this.A00.hashCode();
    }
}
