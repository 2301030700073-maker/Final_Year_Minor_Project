package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class UW {
    public static byte[] A09;
    public final float A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final String A07;
    public final List<byte[]> A08;

    static {
        A02();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 30 out of bounds for length 30
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static UW A00(C2070fq c2070fq) throws Q6 {
        try {
            c2070fq.A0g(21);
            int A0I = c2070fq.A0I() & 3;
            int A0I2 = c2070fq.A0I();
            int i = 0;
            int A092 = c2070fq.A09();
            for (int i2 = 0; i2 < A0I2; i2++) {
                c2070fq.A0g(1);
                int A0M = c2070fq.A0M();
                for (int i3 = 0; i3 < A0M; i3++) {
                    int A0M2 = c2070fq.A0M();
                    i += A0M2 + 4;
                    c2070fq.A0g(A0M2);
                }
            }
            c2070fq.A0f(A092);
            byte[] bArr = new byte[i];
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            int i9 = -1;
            float f = 1.0f;
            String str = null;
            for (int i10 = 0; i10 < A0I2; i10++) {
                int A0I3 = c2070fq.A0I() & 63;
                int A0M3 = c2070fq.A0M();
                for (int i11 = 0; i11 < A0M3; i11++) {
                    int A0M4 = c2070fq.A0M();
                    System.arraycopy(AbstractC1572Ud.A03, 0, bArr, i4, AbstractC1572Ud.A03.length);
                    int length = i4 + AbstractC1572Ud.A03.length;
                    System.arraycopy(c2070fq.A0l(), c2070fq.A09(), bArr, length, A0M4);
                    if (A0I3 == 33 && i11 == 0) {
                        C1570Ua A05 = AbstractC1572Ud.A05(bArr, length, length + A0M4);
                        i5 = A05.A0A;
                        i6 = A05.A08;
                        i7 = A05.A02;
                        i8 = A05.A01;
                        i9 = A05.A03;
                        f = A05.A00;
                        str = AbstractC2019f0.A03(A05.A07, A05.A0B, A05.A06, A05.A05, A05.A0C, A05.A04);
                    }
                    i4 = length + A0M4;
                    c2070fq.A0g(A0M4);
                }
            }
            return new UW(i == 0 ? Collections.emptyList() : Collections.singletonList(bArr), A0I + 1, i5, i6, f, str, i7, i8, i9);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw Q6.A01(A01(0, 25, 115), e);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 7);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A09 = new byte[]{-65, -20, -20, -23, -20, -102, -22, -37, -20, -19, -29, -24, -31, -102, -62, -65, -48, -67, -102, -35, -23, -24, -32, -29, -31};
    }

    public UW(List<byte[]> initializationData, int i, int i2, int i3, float f, String str, int i4, int i5, int i6) {
        this.A08 = initializationData;
        this.A05 = i;
        this.A06 = i2;
        this.A04 = i3;
        this.A00 = f;
        this.A07 = str;
        this.A02 = i4;
        this.A01 = i5;
        this.A03 = i6;
    }
}
