package com.facebook.ads.redexgen.core;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import javax.annotation.CheckForNull;

/* renamed from: com.facebook.ads.redexgen.X.Oq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1435Oq<T> implements InterfaceC2213iE<T>, Serializable {
    public static byte[] A01;
    public static final long serialVersionUID = 0;
    public final List<? extends InterfaceC2213iE<? super T>> A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 99);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{52, 65, 55};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Oq != com.google.common.base.Predicates$AndPredicate<T> */
    public C1435Oq(List<? extends InterfaceC2213iE<? super T>> components) {
        this.A00 = components;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Oq != com.google.common.base.Predicates$AndPredicate<T> */
    /* JADX WARN: Incorrect condition in loop: B:3:0x0007 */
    @Override // com.facebook.ads.redexgen.core.InterfaceC2213iE
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A42(@com.google.common.base.ParametricNullness T r3) {
        /*
            r2 = this;
            r1 = 0
        L1:
            java.util.List<? extends com.facebook.ads.redexgen.X.iE<? super T>> r0 = r2.A00
            int r0 = r0.size()
            if (r1 >= r0) goto L1c
            java.util.List<? extends com.facebook.ads.redexgen.X.iE<? super T>> r0 = r2.A00
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.iE r0 = (com.facebook.ads.redexgen.core.InterfaceC2213iE) r0
            boolean r0 = r0.A42(r3)
            if (r0 != 0) goto L19
            r0 = 0
            return r0
        L19:
            int r1 = r1 + 1
            goto L1
        L1c:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1435Oq.A42(java.lang.Object):boolean");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Oq != com.google.common.base.Predicates$AndPredicate<?> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Oq != com.google.common.base.Predicates$AndPredicate<T> */
    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof C1435Oq) {
            return this.A00.equals(((C1435Oq) obj).A00);
        }
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Oq != com.google.common.base.Predicates$AndPredicate<T> */
    public final int hashCode() {
        return this.A00.hashCode() + 306654252;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Oq != com.google.common.base.Predicates$AndPredicate<T> */
    public final String toString() {
        String A02;
        A02 = AbstractC2215iG.A02(A00(0, 3, 112), this.A00);
        return A02;
    }
}
