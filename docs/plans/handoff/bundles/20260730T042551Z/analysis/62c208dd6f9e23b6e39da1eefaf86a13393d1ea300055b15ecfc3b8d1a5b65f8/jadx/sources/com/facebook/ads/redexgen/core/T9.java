package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class T9 implements InterfaceC1636Wv {
    public final List<C1658Xr> A00;
    public final long[] A01;
    public final long[] A02;

    /* JADX WARN: Incorrect condition in loop: B:3:0x001d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T9(java.util.List<com.facebook.ads.redexgen.core.C1658Xr> r8) {
        /*
            r7 = this;
            r7.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r8)
            java.util.List r0 = java.util.Collections.unmodifiableList(r0)
            r7.A00 = r0
            int r0 = r8.size()
            int r0 = r0 * 2
            long[] r0 = new long[r0]
            r7.A01 = r0
            r6 = 0
        L19:
            int r0 = r8.size()
            if (r6 >= r0) goto L38
            java.lang.Object r5 = r8.get(r6)
            com.facebook.ads.redexgen.X.Xr r5 = (com.facebook.ads.redexgen.core.C1658Xr) r5
            int r4 = r6 * 2
            long[] r2 = r7.A01
            long r0 = r5.A01
            r2[r4] = r0
            long[] r3 = r7.A01
            int r2 = r4 + 1
            long r0 = r5.A00
            r3[r2] = r0
            int r6 = r6 + 1
            goto L19
        L38:
            long[] r1 = r7.A01
            long[] r0 = r7.A01
            int r0 = r0.length
            long[] r0 = java.util.Arrays.copyOf(r1, r0)
            r7.A02 = r0
            long[] r0 = r7.A02
            java.util.Arrays.sort(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.T9.<init>(java.util.List):void");
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final List<C1476Qh> A7N(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.A00.size(); i++) {
            if (this.A01[i * 2] <= j && j < this.A01[(i * 2) + 1]) {
                C1658Xr c1658Xr = this.A00.get(i);
                if (c1658Xr.A02.A01 == -3.4028235E38f) {
                    arrayList2.add(c1658Xr);
                } else {
                    arrayList.add(c1658Xr.A02);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: com.facebook.ads.redexgen.X.Y1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare;
                compare = Long.compare(((C1658Xr) obj).A01, ((C1658Xr) obj2).A01);
                return compare;
            }
        });
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            arrayList.add(((C1658Xr) arrayList2.get(i2)).A02.A02().A07((-1) - i2, 1).A0H());
        }
        return arrayList;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final long A7t(int i) {
        boolean z = true;
        AbstractC2011es.A07(i >= 0);
        if (i >= this.A02.length) {
            z = false;
        }
        AbstractC2011es.A07(z);
        return this.A02[i];
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final int A7u() {
        return this.A02.length;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1636Wv
    public final int A8Q(long j) {
        int A0K = AbstractC2094gE.A0K(this.A02, j, false, false);
        int index = this.A02.length;
        if (A0K < index) {
            return A0K;
        }
        return -1;
    }
}
