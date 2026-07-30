package com.facebook.ads.redexgen.core;

import java.util.Comparator;

/* renamed from: com.facebook.ads.redexgen.X.Xu, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1661Xu {
    public static final Comparator<C1661Xu> A02 = new Comparator() { // from class: com.facebook.ads.redexgen.X.Xt
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int compare;
            compare = Integer.compare(((C1661Xu) obj).A01.A00, ((C1661Xu) obj2).A01.A00);
            return compare;
        }
    };
    public final int A00;
    public final C1662Xv A01;

    public C1661Xu(C1662Xv c1662Xv, int i) {
        this.A01 = c1662Xv;
        this.A00 = i;
    }
}
