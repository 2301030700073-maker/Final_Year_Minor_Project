package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: assets/audience_network.dex */
public final class T0 implements UK {
    public static byte[] A0C;
    public static String[] A0D = {"cgFenzwDW5KqcG", "Ec", "vVHSxJjqeSREjo7F022y1r5oD8PWH0Xg", "x76UAYGklYukrRCESs63QXBLPT5V7IGo", "UQ5JyBbvoDZayl", "ilFZSXQCeq61y12", "wyRrrqqdz7Pkdmn3kQgUDLsZGAplu5cK", "qYTY3RjP5zhXG2SSI8LioXR4R26oJPDS"};
    public static final UO A0E;
    public int A00;
    public long A01;
    public long A02;
    public UL A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final int A07;
    public final C1545Sz A08;
    public final C2069fp A09;
    public final C2070fq A0A;
    public final C2070fq A0B;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{95, 115, 126, 116, 125, 96, Byte.MAX_VALUE, 119, 118, 50, 83, 86, 70, 65, 50, 97, 102, 96, 119, 115, Byte.MAX_VALUE};
    }

    static {
        A04();
        A0E = new UO() { // from class: com.facebook.ads.redexgen.X.T1
            @Override // com.facebook.ads.redexgen.core.UO
            public final UK[] A5D() {
                return T0.A07();
            }

            @Override // com.facebook.ads.redexgen.core.UO
            public final /* synthetic */ UK[] A5E(Uri uri, Map map) {
                return UN.A01(this, uri, map);
            }
        };
    }

    public T0() {
        this(0);
    }

    public T0(int i) {
        this.A07 = (i & 2) != 0 ? i | 1 : i;
        this.A08 = new C1545Sz(true);
        this.A0A = new C2070fq(2048);
        this.A00 = -1;
        this.A01 = -1L;
        this.A0B = new C2070fq(10);
        this.A09 = new C2069fp(this.A0B.A0l());
    }

    public static int A00(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    private int A01(WJ wj) throws IOException {
        int i = 0;
        while (true) {
            wj.AG1(this.A0B.A0l(), 0, 10);
            this.A0B.A0f(0);
            int A0K = this.A0B.A0K();
            String[] strArr = A0D;
            String str = strArr[4];
            String str2 = strArr[0];
            int length = str.length();
            int firstFramePosition = str2.length();
            if (length != firstFramePosition) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[4] = "wP00ATDHt4wP9R";
            strArr2[0] = "ejQ9Of1kEavypa";
            if (A0K != 4801587) {
                wj.AHr();
                wj.A3x(i);
                if (this.A01 == -1) {
                    this.A01 = i;
                }
                return i;
            }
            C2070fq c2070fq = this.A0B;
            String[] strArr3 = A0D;
            String str3 = strArr3[7];
            String str4 = strArr3[3];
            int charAt = str3.charAt(21);
            int firstFramePosition2 = str4.charAt(21);
            if (charAt != firstFramePosition2) {
                c2070fq.A0g(3);
                int length2 = this.A0B.A0H();
                int firstFramePosition3 = length2 + 10;
                i += firstFramePosition3;
                wj.A3x(length2);
            } else {
                A0D[2] = "h9F4Q195dJ4ftkf4KGDaWoWkGct7LrBx";
                c2070fq.A0g(3);
                int length3 = this.A0B.A0H();
                int firstFramePosition4 = length3 + 10;
                i += firstFramePosition4;
                wj.A3x(length3);
            }
        }
    }

    private WV A02(long j, boolean z) {
        return new WV(j, this.A01, A00(this.A00, this.A08.A0J()), this.A00, z);
    }

    @RequiresNonNull({"extractorOutput"})
    private void A05(long j, boolean z) {
        if (this.A05) {
            return;
        }
        boolean z2 = (this.A07 & 1) != 0 && this.A00 > 0;
        if (z2 && this.A08.A0J() == -9223372036854775807L && !z) {
            return;
        }
        if (!z2 || this.A08.A0J() == -9223372036854775807L) {
            this.A03.AID(new C1614Vy(-9223372036854775807L));
        } else {
            this.A03.AID(A02(j, (this.A07 & 2) != 0));
        }
        this.A05 = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c0, code lost:
    
        if (r6 > 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        r10.A00 = (int) (r3 / r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d4, code lost:
    
        r10.A00 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d1, code lost:
    
        if (r6 > 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e0, code lost:
    
        r10.A04 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f0, code lost:
    
        throw com.facebook.ads.redexgen.core.Q6.A01(A03(0, 21, 123), null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A06(com.facebook.ads.redexgen.core.WJ r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.T0.A06(com.facebook.ads.redexgen.X.WJ):void");
    }

    public static /* synthetic */ UK[] A07() {
        return new UK[]{new T0()};
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final void AA0(UL ul) {
        this.A03 = ul;
        this.A08.A5S(ul, new YS(0, 1));
        ul.A6E();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
    
        if (r1 != (-1)) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    @Override // com.facebook.ads.redexgen.core.UK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int AGT(com.facebook.ads.redexgen.core.WJ r10, com.facebook.ads.redexgen.core.C1575Ug r11) throws java.io.IOException {
        /*
            r9 = this;
            com.facebook.ads.redexgen.X.UL r0 = r9.A03
            com.facebook.ads.redexgen.core.AbstractC2011es.A02(r0)
            long r1 = r10.A8E()
            int r0 = r9.A07
            r0 = r0 & 2
            r6 = 1
            r5 = 0
            if (r0 != 0) goto L42
            int r0 = r9.A07
            r0 = r0 & r6
            if (r0 == 0) goto L60
            r7 = -1
            java.lang.String[] r4 = com.facebook.ads.redexgen.core.T0.A0D
            r0 = 7
            r3 = r4[r0]
            r0 = 3
            r4 = r4[r0]
            r0 = 21
            char r3 = r3.charAt(r0)
            char r0 = r4.charAt(r0)
            if (r3 == r0) goto L32
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L32:
            java.lang.String[] r4 = com.facebook.ads.redexgen.core.T0.A0D
            java.lang.String r3 = "OE1NfJIxS5SHcv1aN31TwXwGA5ejZFvk"
            r0 = 7
            r4[r0] = r3
            java.lang.String r3 = "uRSs1jsQWOPkb5tmplkhyX6U4DWChd5h"
            r0 = 3
            r4[r0] = r3
            int r0 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r0 == 0) goto L60
        L42:
            r0 = 1
        L43:
            if (r0 == 0) goto L48
            r9.A06(r10)
        L48:
            com.facebook.ads.redexgen.X.fq r0 = r9.A0A
            byte[] r3 = r0.A0l()
            r0 = 2048(0x800, float:2.87E-42)
            int r4 = r10.read(r3, r5, r0)
            r3 = -1
            if (r4 != r3) goto L5e
            r0 = 1
        L58:
            r9.A05(r1, r0)
            if (r0 == 0) goto L62
            return r3
        L5e:
            r0 = 0
            goto L58
        L60:
            r0 = 0
            goto L43
        L62:
            com.facebook.ads.redexgen.X.fq r0 = r9.A0A
            r0.A0f(r5)
            com.facebook.ads.redexgen.X.fq r0 = r9.A0A
            r0.A0e(r4)
            boolean r0 = r9.A06
            if (r0 != 0) goto L7a
            com.facebook.ads.redexgen.X.Sz r3 = r9.A08
            long r1 = r9.A02
            r0 = 4
            r3.AFy(r1, r0)
            r9.A06 = r6
        L7a:
            com.facebook.ads.redexgen.X.Sz r1 = r9.A08
            com.facebook.ads.redexgen.X.fq r0 = r9.A0A
            r1.A50(r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.T0.AGT(com.facebook.ads.redexgen.X.WJ, com.facebook.ads.redexgen.X.Ug):int");
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final void AGj() {
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final void AIC(long j, long j2) {
        this.A06 = false;
        this.A08.AIB();
        this.A02 = j2;
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final boolean AJB(WJ wj) throws IOException {
        int A01 = A01(wj);
        int i = A01;
        int frameSize = 0;
        int syncBytes = 0;
        do {
            wj.AG1(this.A0B.A0l(), 0, 2);
            this.A0B.A0f(0);
            int startPosition = this.A0B.A0M();
            if (!C1545Sz.A0F(startPosition)) {
                syncBytes = 0;
                frameSize = 0;
                i++;
                wj.AHr();
                wj.A3x(i);
            } else {
                syncBytes++;
                if (syncBytes >= 4 && frameSize > 188) {
                    return true;
                }
                wj.AG1(this.A0B.A0l(), 0, 4);
                this.A09.A08(14);
                int headerPosition = this.A09.A04(13);
                if (headerPosition <= 6) {
                    syncBytes = 0;
                    frameSize = 0;
                    i++;
                    String[] strArr = A0D;
                    String str = strArr[4];
                    String str2 = strArr[0];
                    int headerPosition2 = str.length();
                    int startPosition2 = str2.length();
                    if (headerPosition2 != startPosition2) {
                        throw new RuntimeException();
                    }
                    A0D[2] = "rGwe6hw4R5Xd7NHfbMgWBrUiWSTU8lSN";
                    wj.AHr();
                    wj.A3x(i);
                } else {
                    int startPosition3 = headerPosition - 6;
                    wj.A3x(startPosition3);
                    frameSize += headerPosition;
                }
            }
        } while (i - A01 < 8192);
        return false;
    }
}
