package com.facebook.ads.redexgen.core;

import android.util.SparseArray;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class YE {
    public static String[] A0I = {"fyMCesn94ZUaX1", "xXHQkaDx7xTG2skhDWNaR7J9v1Ihzxpo", "7Oq", "kTtuH2eqfZJTb6bh0egtONV7U1bP5J07", "s1a1xO39uTTuSTjW0X6bCmtUL1vt7rUE", "YPZNwn", "K3ka9u", "uQ65ovfoFxKalB"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final InterfaceC1580Uo A0F;
    public final boolean A0G;
    public final boolean A0H;
    public final SparseArray<C1571Uc> A0D = new SparseArray<>();
    public final SparseArray<Ub> A0C = new SparseArray<>();
    public YD A06 = new YD();
    public YD A07 = new YD();
    public byte[] A0B = new byte[128];
    public final C1574Uf A0E = new C1574Uf(this.A0B, 0, 0);

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 24 out of bounds for length 23
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public final void A05(byte[] bArr, int i, int i2) {
        if (this.A08) {
            int i3 = i2 - i;
            if (this.A0B.length < this.A00 + i3) {
                this.A0B = Arrays.copyOf(this.A0B, (this.A00 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.A0B, this.A00, i3);
            this.A00 += i3;
            this.A0E.A08(this.A0B, 0, this.A00);
            if (this.A0E.A0B(8)) {
                this.A0E.A06();
                C1574Uf c1574Uf = this.A0E;
                String[] strArr = A0I;
                if (strArr[5].length() != strArr[6].length()) {
                    throw new RuntimeException();
                }
                A0I[2] = "9KPlmBkoYjXxqFD0euMsIYvX5khbM4E1";
                int A05 = c1574Uf.A05(2);
                this.A0E.A07(5);
                if (this.A0E.A09()) {
                    this.A0E.A04();
                    if (this.A0E.A09()) {
                        int A04 = this.A0E.A04();
                        if (!this.A0H) {
                            this.A08 = false;
                            this.A07.A03(A04);
                            return;
                        }
                        if (this.A0E.A09()) {
                            int A042 = this.A0E.A04();
                            if (this.A0C.indexOfKey(A042) < 0) {
                                this.A08 = false;
                                return;
                            }
                            Ub ub = this.A0C.get(A042);
                            C1571Uc c1571Uc = this.A0D.get(ub.A01);
                            if (c1571Uc.A0D) {
                                if (!this.A0E.A0B(2)) {
                                    return;
                                } else {
                                    this.A0E.A07(2);
                                }
                            }
                            if (this.A0E.A0B(c1571Uc.A02)) {
                                boolean z = false;
                                boolean z2 = false;
                                boolean z3 = false;
                                int A052 = this.A0E.A05(c1571Uc.A02);
                                if (!c1571Uc.A0C) {
                                    if (!this.A0E.A0B(1)) {
                                        return;
                                    }
                                    z = this.A0E.A0A();
                                    if (z) {
                                        if (!this.A0E.A0B(1)) {
                                            return;
                                        }
                                        z3 = this.A0E.A0A();
                                        z2 = true;
                                    }
                                }
                                boolean z4 = this.A01 == 5;
                                int i4 = 0;
                                if (z4) {
                                    if (!this.A0E.A09()) {
                                        return;
                                    } else {
                                        i4 = this.A0E.A04();
                                    }
                                }
                                int i5 = 0;
                                int i6 = 0;
                                int i7 = 0;
                                int i8 = 0;
                                if (c1571Uc.A07 == 0) {
                                    if (!this.A0E.A0B(c1571Uc.A06)) {
                                        return;
                                    }
                                    i5 = this.A0E.A05(c1571Uc.A06);
                                    if (ub.A02 && !z) {
                                        if (!this.A0E.A09()) {
                                            return;
                                        } else {
                                            i6 = this.A0E.A03();
                                        }
                                    }
                                } else if (c1571Uc.A07 == 1 && !c1571Uc.A0B) {
                                    if (!this.A0E.A09()) {
                                        return;
                                    }
                                    i7 = this.A0E.A03();
                                    if (ub.A02 && !z) {
                                        if (!this.A0E.A09()) {
                                            return;
                                        }
                                        i8 = this.A0E.A03();
                                        if (A0I[2].length() != 28) {
                                            String[] strArr2 = A0I;
                                            strArr2[0] = "8C9SB7EBPHdh7G";
                                            strArr2[7] = "0JTjfVSC1SUZ1y";
                                        }
                                    }
                                }
                                this.A07.A04(c1571Uc, A05, A04, A052, A042, z, z2, z3, z4, i4, i5, i6, i7, i8);
                                this.A08 = false;
                            }
                        }
                    }
                }
            }
        }
    }

    public YE(InterfaceC1580Uo interfaceC1580Uo, boolean z, boolean z2) {
        this.A0F = interfaceC1580Uo;
        this.A0G = z;
        this.A0H = z2;
        A01();
    }

    private void A00(int i) {
        if (this.A05 == -9223372036854775807L) {
            return;
        }
        boolean z = this.A0A;
        this.A0F.AI0(this.A05, z ? 1 : 0, (int) (this.A02 - this.A04), i, null);
    }

    public final void A01() {
        this.A08 = false;
        this.A09 = false;
        this.A07.A02();
    }

    public final void A02(long j, int i, long j2) {
        this.A01 = i;
        this.A03 = j2;
        this.A02 = j;
        if (!this.A0G || this.A01 != 1) {
            if (!this.A0H) {
                return;
            }
            if (this.A01 != 5) {
                int i2 = this.A01;
                String[] strArr = A0I;
                if (strArr[5].length() != strArr[6].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0I;
                strArr2[3] = "20AQDGM3v0DzgNmDy140SjPPODR7VcFg";
                strArr2[1] = "caozRXSQlqOd7OxP2wl31YaipgOeDhZb";
                if (i2 != 1 && this.A01 != 2) {
                    return;
                }
            }
        }
        YD yd = this.A06;
        YD newSliceHeader = this.A07;
        this.A06 = newSliceHeader;
        this.A07 = yd;
        YD newSliceHeader2 = this.A07;
        newSliceHeader2.A02();
        this.A00 = 0;
        this.A08 = true;
    }

    public final void A03(Ub ub) {
        this.A0C.append(ub.A00, ub);
    }

    public final void A04(C1571Uc c1571Uc) {
        this.A0D.append(c1571Uc.A09, c1571Uc);
    }

    public final boolean A06() {
        return this.A0H;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if (r0 != false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A07(long r6, int r8, boolean r9, boolean r10) {
        /*
            r5 = this;
            int r1 = r5.A01
            r0 = 9
            r4 = 0
            r3 = 1
            if (r1 == r0) goto L16
            boolean r0 = r5.A0H
            if (r0 == 0) goto L30
            com.facebook.ads.redexgen.X.YD r1 = r5.A07
            com.facebook.ads.redexgen.X.YD r0 = r5.A06
            boolean r0 = com.facebook.ads.redexgen.core.YD.A01(r1, r0)
            if (r0 == 0) goto L30
        L16:
            if (r9 == 0) goto L24
            boolean r0 = r5.A09
            if (r0 == 0) goto L24
            long r0 = r5.A02
            long r6 = r6 - r0
            int r0 = (int) r6
            int r8 = r8 + r0
            r5.A00(r8)
        L24:
            long r0 = r5.A02
            r5.A04 = r0
            long r0 = r5.A03
            r5.A05 = r0
            r5.A0A = r4
            r5.A09 = r3
        L30:
            boolean r0 = r5.A0G
            if (r0 == 0) goto L3a
            com.facebook.ads.redexgen.X.YD r0 = r5.A07
            boolean r10 = r0.A05()
        L3a:
            boolean r2 = r5.A0A
            int r1 = r5.A01
            r0 = 5
            if (r1 == r0) goto L47
            if (r10 == 0) goto L48
            int r0 = r5.A01
            if (r0 != r3) goto L48
        L47:
            r4 = 1
        L48:
            r2 = r2 | r4
            r5.A0A = r2
            boolean r0 = r5.A0A
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.YE.A07(long, int, boolean, boolean):boolean");
    }
}
