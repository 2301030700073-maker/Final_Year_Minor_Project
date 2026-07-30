package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.9V, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C9V implements InterfaceC1558Tn {
    public static byte[] A06;
    public static String[] A07 = {"yMDohKHGc01a8Mouj", "VYM3", "NjB1rd5eng", "A0MgTqcY4eQRXRFiVgfCfb", "JfGh6zGouJ6JL", "EiGCjZr9v1cNihi0jXDNNL", "hBVWWyV9viaSIEWHVtwPcSPFWF19KpwR", "cxblfdldHc2W7"};
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long[] A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C9V A01(long j, long j2, UY uy, C2070fq c2070fq) {
        int A0L;
        int i = uy.A04;
        int i2 = uy.A03;
        int A0C = c2070fq.A0C();
        if ((A0C & 1) != 1 || (A0L = c2070fq.A0L()) == 0) {
            String[] strArr = A07;
            if (strArr[0].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A07[5] = "VGQbUcHSTKZxn9MjDRfNVjMpBA9e";
            return null;
        }
        long A0U = AbstractC2094gE.A0U(A0L, i * 1000000, i2);
        if ((A0C & 6) != 6) {
            return new C9V(j2, uy.A02, A0U);
        }
        long A0Q = c2070fq.A0Q();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = c2070fq.A0I();
        }
        if (j != -1 && j != j2 + A0Q) {
            AbstractC2055fb.A07(A02(27, 10, 71), A02(2, 25, 55) + j + A02(0, 2, 35) + (j2 + A0Q));
        }
        return new C9V(j2, uy.A02, A0U, A0Q, jArr);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A06 = new byte[]{55, 59, 87, 70, 65, 72, 47, 107, 110, 123, 110, 47, 124, 102, 117, 106, 47, 98, 102, 124, 98, 110, 123, 108, 103, 53, 47, 39, 22, 17, 24, 44, 26, 26, 20, 26, 13};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.core.Uj
    public final C1576Ui A8r(long j) {
        double d;
        if (!AAY()) {
            return new C1576Ui(new C1577Uk(0L, this.A03 + this.A00));
        }
        long A0T = AbstractC2094gE.A0T(j, 0L, this.A04);
        double d2 = (A0T * 100.0d) / this.A04;
        if (d2 <= 0.0d) {
            d = 0.0d;
        } else if (d2 >= 100.0d) {
            d = 256.0d;
        } else {
            int i = (int) d2;
            double d3 = ((long[]) AbstractC2011es.A02(this.A05))[i];
            d = (((i == 99 ? 256.0d : r9[i + 1]) - d3) * (d2 - i)) + d3;
        }
        return new C1576Ui(new C1577Uk(A0T, this.A03 + AbstractC2094gE.A0T(Math.round((d / 256.0d) * this.A02), this.A00, this.A02 - 1)));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 15 out of bounds for length 15
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1558Tn
    public final long A97(long j) {
        long j2 = j - this.A03;
        if (!AAY() || j2 <= this.A00) {
            return 0L;
        }
        long[] jArr = (long[]) AbstractC2011es.A02(this.A05);
        double d = (j2 * 256.0d) / this.A02;
        int A0L = AbstractC2094gE.A0L(jArr, (long) d, true, true);
        long A00 = A00(A0L);
        long j3 = jArr[A0L];
        long A002 = A00(A0L + 1);
        return Math.round((A002 - A00) * (j3 == (A0L == 99 ? 256L : jArr[A0L + 1]) ? 0.0d : (d - j3) / (r6 - j3))) + A00;
    }

    static {
        A03();
    }

    public C9V(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public C9V(long j, int i, long j2, long j3, long[] jArr) {
        this.A03 = j;
        this.A00 = i;
        this.A04 = j2;
        this.A05 = jArr;
        this.A02 = j3;
        this.A01 = j3 != -1 ? j + j3 : -1L;
    }

    private long A00(int i) {
        return (this.A04 * i) / 100;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1558Tn
    public final long A7Z() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final long A7j() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.core.Uj
    public final boolean AAY() {
        return this.A05 != null;
    }
}
