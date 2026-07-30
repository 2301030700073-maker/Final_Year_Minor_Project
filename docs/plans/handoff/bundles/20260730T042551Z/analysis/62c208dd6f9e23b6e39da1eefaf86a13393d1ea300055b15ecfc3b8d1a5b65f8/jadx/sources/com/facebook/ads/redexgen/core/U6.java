package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class U6 {
    public static byte[] A06;
    public static String[] A07 = {"tdwCV", "CsHNQ", "LprjeldzzXrUjUCPTr90gimg9ZxWSalE", "sIWogN0x5RKOvGxiUfuEjzE8WeyVqqEU", "TzNkpNhi6gV5WnrFGvDc3O4IIUyPUNhJ", "3W5nyFVL5dECgpmHHkfZ8EmLFqVP9FZJ", "Pa3HX2rRihBuaWsXSuUsjIC6IF", "l34tEvAUNpO9kM24Tp8EFI3kk3"};
    public final float A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final String A04;
    public final List<byte[]> A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 10 out of bounds for length 10
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static U6 A00(C2070fq c2070fq) throws Q6 {
        try {
            c2070fq.A0g(4);
            int A0I = (c2070fq.A0I() & 3) + 1;
            if (A0I == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int A0I2 = c2070fq.A0I() & 31;
            String[] strArr = A07;
            if (strArr[1].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[6] = "dYfFF5wESFNhTGKHVrACzTmqap";
            strArr2[7] = "SP6cNON7mwmmNEsJfMC1ATt8uH";
            for (int i = 0; i < A0I2; i++) {
                arrayList.add(A03(c2070fq));
            }
            int A0I3 = c2070fq.A0I();
            for (int i2 = 0; i2 < A0I3; i2++) {
                arrayList.add(A03(c2070fq));
            }
            int i3 = -1;
            int i4 = -1;
            float f = 1.0f;
            String str = null;
            if (A0I2 > 0) {
                C1571Uc A09 = AbstractC1572Ud.A09((byte[]) arrayList.get(0), A0I, ((byte[]) arrayList.get(0)).length);
                i3 = A09.A0A;
                i4 = A09.A03;
                f = A09.A00;
                str = AbstractC2019f0.A01(A09.A08, A09.A01, A09.A04);
            }
            return new U6(arrayList, A0I, i3, i4, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw Q6.A01(A01(0, 24, 117), e);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 72);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{120, 79, 79, 82, 79, 29, 77, 92, 79, 78, 84, 83, 90, 29, 124, 107, 126, 29, 94, 82, 83, 91, 84, 90};
    }

    static {
        A02();
    }

    public U6(List<byte[]> initializationData, int i, int i2, int i3, float f, String str) {
        this.A05 = initializationData;
        this.A02 = i;
        this.A03 = i2;
        this.A01 = i3;
        this.A00 = f;
        this.A04 = str;
    }

    public static byte[] A03(C2070fq c2070fq) {
        int A0M = c2070fq.A0M();
        int offset = c2070fq.A09();
        c2070fq.A0g(A0M);
        return AbstractC2019f0.A07(c2070fq.A0l(), offset, A0M);
    }
}
