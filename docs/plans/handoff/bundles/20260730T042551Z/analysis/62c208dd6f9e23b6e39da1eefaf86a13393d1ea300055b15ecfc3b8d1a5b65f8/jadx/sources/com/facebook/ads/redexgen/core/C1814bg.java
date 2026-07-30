package com.facebook.ads.redexgen.core;

import android.util.SparseArray;
import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.bg, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1814bg<V> {
    public static String[] A03 = {"rLSW2buOZNXNtwKZ8LLqG4k", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "HY0C8zXao6DDvDSJqr9fyECJ1DYaHW1G", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "FjTQGEoSfzmicptQ", "2vjRtV7KAdMNBRiXtca2zsNdxrjj9H3j", "kjlhOzcChYBWstEDMyVRgHZZ1PVWeDwQ", "Y7jooGhFWI1jixK8rYtezEfaFZw3Wo"};
    public int A00;
    public final SparseArray<V> A01;
    public final InterfaceC2022f3<V> A02;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    public C1814bg() {
        this(new InterfaceC2022f3() { // from class: com.facebook.ads.redexgen.X.Qu
            @Override // com.facebook.ads.redexgen.core.InterfaceC2022f3
            public final void A2z(Object obj) {
            }
        });
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.f3 != com.google.android.exoplayer2.util.Consumer<V> */
    public C1814bg(InterfaceC2022f3<V> interfaceC2022f3) {
        this.A01 = new SparseArray<>();
        this.A02 = interfaceC2022f3;
        this.A00 = -1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    public final V A00() {
        return this.A01.valueAt(this.A01.size() - 1);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    public final V A01(int i) {
        if (this.A00 == -1) {
            this.A00 = 0;
        }
        while (this.A00 > 0 && i < this.A01.keyAt(this.A00)) {
            this.A00--;
        }
        while (this.A00 < this.A01.size() - 1 && i >= this.A01.keyAt(this.A00 + 1)) {
            this.A00++;
        }
        return this.A01.valueAt(this.A00);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    /* JADX WARN: Incorrect condition in loop: B:3:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A02() {
        /*
            r6 = this;
            r4 = 0
        L1:
            android.util.SparseArray<V> r0 = r6.A01
            int r0 = r0.size()
            if (r4 >= r0) goto L3b
            com.facebook.ads.redexgen.X.f3<V> r3 = r6.A02
            android.util.SparseArray<V> r5 = r6.A01
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1814bg.A03
            r0 = 1
            r1 = r2[r0]
            r0 = 3
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L25
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L25:
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1814bg.A03
            java.lang.String r1 = ""
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = ""
            r0 = 3
            r2[r0] = r1
            java.lang.Object r0 = r5.valueAt(r4)
            r3.A2z(r0)
            int r4 = r4 + 1
            goto L1
        L3b:
            r0 = -1
            r6.A00 = r0
            android.util.SparseArray<V> r0 = r6.A01
            r0.clear()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1814bg.A02():void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    public final void A03(int i) {
        for (int size = this.A01.size() - 1; size >= 0 && i < this.A01.keyAt(size); size--) {
            this.A02.A2z(this.A01.valueAt(size));
            this.A01.removeAt(size);
        }
        this.A00 = this.A01.size() > 0 ? Math.min(this.A00, this.A01.size() - 1) : -1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    public final void A04(int i) {
        for (int i2 = 0; i2 < this.A01.size() - 1 && i >= this.A01.keyAt(i2 + 1); i2++) {
            this.A02.A2z(this.A01.valueAt(i2));
            this.A01.removeAt(i2);
            if (this.A00 > 0) {
                this.A00--;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    public final void A05(int i, V v) {
        if (this.A00 == -1) {
            AbstractC2011es.A08(this.A01.size() == 0);
            this.A00 = 0;
        }
        SparseArray<V> sparseArray = this.A01;
        if (A03[5].charAt(8) != 'A') {
            throw new RuntimeException();
        }
        String[] strArr = A03;
        strArr[1] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        strArr[3] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (sparseArray.size() > 0) {
            int keyAt = this.A01.keyAt(this.A01.size() - 1);
            AbstractC2011es.A07(i >= keyAt);
            if (keyAt == i) {
                this.A02.A2z(this.A01.valueAt(this.A01.size() - 1));
            }
        }
        this.A01.append(i, v);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.bg != com.google.android.exoplayer2.source.SpannedData<V> */
    public final boolean A06() {
        return this.A01.size() == 0;
    }
}
