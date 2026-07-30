package com.facebook.ads.redexgen.core;

import com.google.android.gms.common.api.Api;
import java.util.Collections;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class QN extends AbstractC1897d1<QN> implements Comparable<QN> {
    public static String[] A0I = {"oAw7EOk8LxirhsuMH4obyEeoWZy5IFRn", "vcyRganIlaiMVhNuds7mGdI90mZVu3NA", "5YZeVHK79K0wQm9Vf", "asZs0y1pCjnB3FyLQ1", "OxHrpq7nJKQohiaCdR", "sbhzoPka74", "9rlCTY1eQKrv2gum0kQuDOznhW4nV4", "WhbW8DWUolPaZGRRoAmIfShF"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final C09795v A0A;
    public final String A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final boolean A0E;
    public final boolean A0F;
    public final boolean A0G;
    public final boolean A0H;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public QN(int i, C1669Yc c1669Yc, int i2, C09795v c09795v, int i3, boolean z, InterfaceC2213iE<ZM> interfaceC2213iE) {
        super(i, c1669Yc, i2);
        int A00;
        this.A0A = c09795v;
        this.A0B = C09785u.A0K(super.A02.A0V);
        this.A0F = C09785u.A0S(i3, false);
        int i4 = 0;
        int i5 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i6 = 0;
        while (true) {
            if (i6 >= c09795v.A0I.size()) {
                break;
            }
            int A02 = C09785u.A02(super.A02, c09795v.A0I.get(i6), false);
            if (A02 > 0) {
                i5 = i6;
                i4 = A02;
                break;
            }
            i6++;
        }
        this.A04 = i5;
        this.A05 = i4;
        A00 = C09785u.A00(super.A02.A0E, ((YN) c09795v).A0B);
        this.A07 = A00;
        this.A0C = super.A02.A0E == 0 || (super.A02.A0E & 1) != 0;
        this.A0D = (super.A02.A0H & 1) != 0;
        this.A01 = super.A02.A06;
        this.A08 = super.A02.A0G;
        this.A00 = super.A02.A05;
        this.A0E = (super.A02.A05 == -1 || super.A02.A05 <= ((YN) c09795v).A01) && (super.A02.A06 == -1 || super.A02.A06 <= ((YN) c09795v).A02) && interfaceC2213iE.A42(super.A02);
        String[] A1L = AbstractC2094gE.A1L();
        int i7 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            if (i9 >= A1L.length) {
                break;
            }
            int A022 = C09785u.A02(super.A02, A1L[i9], false);
            if (A022 > 0) {
                i7 = i9;
                i8 = A022;
                break;
            }
            i9++;
        }
        this.A02 = i7;
        this.A03 = i8;
        int i10 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i11 = 0;
        while (true) {
            if (i11 < c09795v.A0J.size()) {
                if (super.A02.A0W != null && super.A02.A0W.equals(c09795v.A0J.get(i11))) {
                    i10 = i11;
                    break;
                }
                i11++;
            } else {
                break;
            }
        }
        this.A06 = i10;
        this.A0H = AbstractC1470Qb.A02(i3) == 128;
        this.A0G = AbstractC1470Qb.A04(i3) == 64;
        this.A09 = A00(i3, z);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A02(List<QN> list, List<QN> list2) {
        return ((QN) Collections.max(list)).compareTo((QN) Collections.max(list2));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static OI<QN> A03(int i, C1669Yc c1669Yc, C09795v c09795v, int[] iArr, boolean z, InterfaceC2213iE<ZM> interfaceC2213iE) {
        C4T A01 = OI.A01();
        for (int i2 = 0; i2 < c1669Yc.A01; i2++) {
            A01.A04(new QN(i, c1669Yc, i2, c09795v, iArr[i2], z, interfaceC2213iE));
        }
        return A01.A05();
    }

    private int A00(int i, boolean z) {
        if (!C09785u.A0S(i, this.A0A.A0B)) {
            return 0;
        }
        if (!this.A0E) {
            C09795v c09795v = this.A0A;
            if (A0I[7].length() == 1) {
                throw new RuntimeException();
            }
            A0I[7] = "L8ddb";
            if (!c09795v.A09) {
                return 0;
            }
        }
        if (C09785u.A0S(i, false) && this.A0E && super.A02.A05 != -1 && !this.A0A.A0N && !this.A0A.A0O && (this.A0A.A04 || !z)) {
            return 2;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nY != com.google.common.collect.Ordering<java.lang.Integer> */
    @Override // java.lang.Comparable
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final int compareTo(QN qn) {
        AbstractC2535nY abstractC2535nY;
        AbstractC2535nY A06;
        AbstractC2535nY abstractC2535nY2;
        AbstractC2535nY abstractC2535nY3;
        if (!this.A0E || !this.A0F) {
            abstractC2535nY = C09785u.A09;
            A06 = abstractC2535nY.A06();
        } else {
            A06 = C09785u.A09;
        }
        AbstractC2389l7 A08 = AbstractC2389l7.A01().A09(this.A0F, qn.A0F).A08(Integer.valueOf(this.A04), Integer.valueOf(qn.A04), AbstractC2535nY.A03().A06()).A06(this.A05, qn.A05).A06(this.A07, qn.A07).A09(this.A0D, qn.A0D).A09(this.A0C, qn.A0C).A08(Integer.valueOf(this.A02), Integer.valueOf(qn.A02), AbstractC2535nY.A03().A06()).A06(this.A03, qn.A03).A09(this.A0E, qn.A0E).A08(Integer.valueOf(this.A06), Integer.valueOf(qn.A06), AbstractC2535nY.A03().A06());
        Integer valueOf = Integer.valueOf(this.A00);
        Integer valueOf2 = Integer.valueOf(qn.A00);
        if (this.A0A.A0O) {
            abstractC2535nY3 = C09785u.A09;
            abstractC2535nY2 = abstractC2535nY3.A06();
        } else {
            abstractC2535nY2 = C09785u.A0A;
        }
        AbstractC2389l7 A082 = A08.A08(valueOf, valueOf2, abstractC2535nY2).A09(this.A0H, qn.A0H).A09(this.A0G, qn.A0G).A08(Integer.valueOf(this.A01), Integer.valueOf(qn.A01), A06).A08(Integer.valueOf(this.A08), Integer.valueOf(qn.A08), A06);
        Integer valueOf3 = Integer.valueOf(this.A00);
        Integer valueOf4 = Integer.valueOf(qn.A00);
        if (!AbstractC2094gE.A1E(this.A0B, qn.A0B)) {
            A06 = C09785u.A0A;
        }
        return A082.A08(valueOf3, valueOf4, A06).A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
    
        if (r5.A02.A0G == ((com.facebook.ads.redexgen.core.AbstractC1897d1) r6).A02.A0G) goto L22;
     */
    @Override // com.facebook.ads.redexgen.core.AbstractC1897d1
    /* renamed from: A04, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A09(com.facebook.ads.redexgen.core.QN r6) {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.5v r0 = r5.A0A
            boolean r0 = r0.A00
            r4 = -1
            if (r0 != 0) goto L17
            com.facebook.ads.redexgen.X.ZM r0 = r5.A02
            int r0 = r0.A06
            if (r0 == r4) goto L86
            com.facebook.ads.redexgen.X.ZM r0 = r5.A02
            int r1 = r0.A06
            com.facebook.ads.redexgen.X.ZM r0 = r6.A02
            int r0 = r0.A06
            if (r1 != r0) goto L86
        L17:
            com.facebook.ads.redexgen.X.5v r0 = r5.A0A
            boolean r0 = r0.A02
            if (r0 != 0) goto L31
            com.facebook.ads.redexgen.X.ZM r0 = r5.A02
            java.lang.String r0 = r0.A0W
            if (r0 == 0) goto L86
            com.facebook.ads.redexgen.X.ZM r0 = r5.A02
            java.lang.String r1 = r0.A0W
            com.facebook.ads.redexgen.X.ZM r0 = r6.A02
            java.lang.String r0 = r0.A0W
            boolean r0 = android.text.TextUtils.equals(r1, r0)
            if (r0 == 0) goto L86
        L31:
            com.facebook.ads.redexgen.X.5v r0 = r5.A0A
            boolean r0 = r0.A03
            if (r0 != 0) goto L5a
            com.facebook.ads.redexgen.X.ZM r0 = r5.A02
            int r3 = r0.A0G
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.QN.A0I
            r0 = 7
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 1
            if (r1 == r0) goto L88
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.QN.A0I
            java.lang.String r1 = "mRXMNxFunMjm1MynMm1HvBx6RXkDa"
            r0 = 6
            r2[r0] = r1
            if (r3 == r4) goto L86
            com.facebook.ads.redexgen.X.ZM r0 = r5.A02
            int r1 = r0.A0G
            com.facebook.ads.redexgen.X.ZM r0 = r6.A02
            int r0 = r0.A0G
            if (r1 != r0) goto L86
        L5a:
            com.facebook.ads.redexgen.X.5v r0 = r5.A0A
            boolean r0 = r0.A01
            if (r0 != 0) goto L84
            boolean r1 = r5.A0H
            boolean r0 = r6.A0H
            if (r1 != r0) goto L86
            boolean r3 = r5.A0G
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.QN.A0I
            r0 = 7
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 1
            if (r1 == r0) goto L88
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.QN.A0I
            java.lang.String r1 = "56qH6gxk7yd0c8ZnXu"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "AAQMuhNNXcozHmi4np"
            r0 = 4
            r2[r0] = r1
            boolean r0 = r6.A0G
            if (r3 != r0) goto L86
        L84:
            r0 = 1
        L85:
            return r0
        L86:
            r0 = 0
            goto L85
        L88:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.QN.A09(com.facebook.ads.redexgen.X.QN):boolean");
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1897d1
    public final int A08() {
        return this.A09;
    }
}
