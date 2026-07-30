package com.facebook.ads.redexgen.core;

import android.os.Bundle;

/* renamed from: com.facebook.ads.redexgen.X.Dw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1168Dw extends AbstractC1683Yr {
    public final boolean A00;
    public final boolean A01;
    public static String[] A02 = {"KvRsWQnCxzZs0XS", "1HWwvDCNAzdU2SlIb9", "mPN48Z3YXpSi45I4IprQsXBy2yWouHzS", "1Kslfp8e4lxmFF26GLpj1iDXpC", "jv2DZkWZDzNFk7YS1FZ9TOlayKriIsTk", "HoDcLp1db17Ys7H80pVsqVRDAZIzaFhx", "USA3", "H9Yw7mnPNvj0vX40QvFxmw6TBd9XPsGr"};
    public static final String A05 = AbstractC2094gE.A0h(1);
    public static final String A04 = AbstractC2094gE.A0h(2);
    public static final InterfaceC1397Na<C1168Dw> A03 = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.Yk
        @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
        public final InterfaceC1398Nb A6V(Bundle bundle) {
            C1168Dw A00;
            A00 = C1168Dw.A00(bundle);
            return A00;
        }
    };

    public C1168Dw() {
        this.A01 = false;
        this.A00 = false;
    }

    public C1168Dw(boolean z) {
        this.A01 = true;
        this.A00 = z;
    }

    public static C1168Dw A00(Bundle bundle) {
        boolean rated = bundle.getInt(AbstractC1683Yr.A02, -1) == 3;
        AbstractC2011es.A07(rated);
        boolean rated2 = bundle.getBoolean(A05, false);
        if (rated2) {
            return new C1168Dw(bundle.getBoolean(A04, false));
        }
        return new C1168Dw();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1168Dw)) {
            return false;
        }
        C1168Dw c1168Dw = (C1168Dw) obj;
        if (this.A00 != c1168Dw.A00) {
            return false;
        }
        boolean z = this.A01;
        boolean z2 = c1168Dw.A01;
        if (A02[6].length() != 4) {
            throw new RuntimeException();
        }
        A02[0] = "Q8dOHh8rsVu7EFBQiGuBH3fzgac";
        return z == z2;
    }

    public final int hashCode() {
        return AbstractC1436Or.A00(Boolean.valueOf(this.A01), Boolean.valueOf(this.A00));
    }
}
