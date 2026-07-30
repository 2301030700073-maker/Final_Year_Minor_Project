package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: assets/audience_network.dex */
public final class V9 extends V5 {
    public static byte[] A03;
    public static String[] A04 = {"V82MeCyFK9EUzOcQv3aCHkcB5YGijFM0", "yRWTEy", "XXPNUk1p2fLnq6rVD1k8lFaa1VRn1Yuh", "cNGjD0ozRjs1pNHnGnCLhsBvQfkYvlwl", "KGWkiuPyqvtOX7EuFRSvOvrEFI4aP547", "9CnEkbJJ1mvqN35zkBKUphM32xCtiaaX", "CNkTVaXxwtTEhPjH9BmaKJQvNACCVyBM", "24i3lXOCXpDwGQjkfmGy0ndEt5hgSpnW"};
    public long A00;
    public long[] A01;
    public long[] A02;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 96);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        byte[] bArr = {124, 109, 106, 121, 108, 113, 119, 118, 92, 83, 86, 95, 74, 85, 73, 83, 78, 83, 85, 84, 73, 29, 19, 15, 16, 4, 23, 27, 19, 5, 123, 122, 89, 113, 96, 117, 80, 117, 96, 117, 106, 119, 115, 123, 109};
        if (A04[1].length() == 31) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[3] = "Y9iGrVu1LEiCE4YnE2lzq2bhBIFDqOkp";
        strArr[2] = "BW1TYfDIqaPoIIG9WB4E7s95ePhS2It5";
        A03 = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 15 out of bounds for length 15
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override // com.facebook.ads.redexgen.core.V5
    public final boolean A0C(C2070fq c2070fq, long j) {
        if (A00(c2070fq) != 2) {
            return false;
        }
        if (!A04(30, 10, 116).equals(A05(c2070fq)) || c2070fq.A07() == 0 || A00(c2070fq) != 8) {
            return false;
        }
        HashMap<String, Object> A08 = A08(c2070fq);
        Object obj = A08.get(A04(0, 8, 120));
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (doubleValue > 0.0d) {
                this.A00 = (long) (doubleValue * 1000000.0d);
            }
        }
        Object obj2 = A08.get(A04(21, 9, 22));
        if (!(obj2 instanceof Map)) {
            return false;
        }
        Map map = (Map) obj2;
        Object obj3 = map.get(A04(8, 13, 90));
        Object obj4 = map.get(A04(40, 5, 126));
        if (!(obj3 instanceof List)) {
            return false;
        }
        boolean z = obj4 instanceof List;
        String[] strArr = A04;
        if (strArr[3].charAt(2) == strArr[2].charAt(2)) {
            throw new RuntimeException();
        }
        A04[1] = "TGROKAxMffc6qRBtmf";
        if (!z) {
            return false;
        }
        List list = (List) obj3;
        List list2 = (List) obj4;
        int size = list2.size();
        this.A02 = new long[size];
        this.A01 = new long[size];
        for (int i = 0; i < size; i++) {
            Object obj5 = list.get(i);
            Object obj6 = list2.get(i);
            if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                this.A02 = new long[0];
                this.A01 = new long[0];
                return false;
            }
            this.A02[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
            this.A01[i] = ((Double) obj5).longValue();
        }
        return false;
    }

    static {
        A0A();
    }

    public V9() {
        super(new WN());
        this.A00 = -9223372036854775807L;
        this.A02 = new long[0];
        this.A01 = new long[0];
    }

    public static int A00(C2070fq c2070fq) {
        return c2070fq.A0I();
    }

    public static Boolean A01(C2070fq c2070fq) {
        return Boolean.valueOf(c2070fq.A0I() == 1);
    }

    public static Double A02(C2070fq c2070fq) {
        return Double.valueOf(Double.longBitsToDouble(c2070fq.A0P()));
    }

    public static Object A03(C2070fq c2070fq, int i) {
        switch (i) {
            case 0:
                return A02(c2070fq);
            case 1:
                return A01(c2070fq);
            case 2:
                return A05(c2070fq);
            case 3:
                return A09(c2070fq);
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            default:
                if (A04[1].length() == 31) {
                    throw new RuntimeException();
                }
                String[] strArr = A04;
                strArr[0] = "FWcNTHb92xG2foGl8xEkp8XRdtuKcwkx";
                strArr[4] = "TpEVGstNvjQP5kRCNVcSZBXLTNWEPf2a";
                return null;
            case 8:
                return A08(c2070fq);
            case 10:
                return A06(c2070fq);
            case 11:
                return A07(c2070fq);
        }
    }

    public static String A05(C2070fq c2070fq) {
        int A0M = c2070fq.A0M();
        int A09 = c2070fq.A09();
        c2070fq.A0g(A0M);
        return new String(c2070fq.A0l(), A09, A0M);
    }

    public static ArrayList<Object> A06(C2070fq c2070fq) {
        int A0L = c2070fq.A0L();
        ArrayList<Object> arrayList = new ArrayList<>(A0L);
        for (int i = 0; i < A0L; i++) {
            int count = A00(c2070fq);
            Object A032 = A03(c2070fq, count);
            if (A032 != null) {
                arrayList.add(A032);
            }
        }
        return arrayList;
    }

    public static Date A07(C2070fq c2070fq) {
        Date date = new Date((long) A02(c2070fq).doubleValue());
        c2070fq.A0g(2);
        return date;
    }

    public static HashMap<String, Object> A08(C2070fq c2070fq) {
        int A0L = c2070fq.A0L();
        HashMap<String, Object> hashMap = new HashMap<>(A0L);
        for (int i = 0; i < A0L; i++) {
            String A05 = A05(c2070fq);
            int count = A00(c2070fq);
            Object A032 = A03(c2070fq, count);
            if (A032 != null) {
                hashMap.put(A05, A032);
            }
        }
        return hashMap;
    }

    public static HashMap<String, Object> A09(C2070fq c2070fq) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String A05 = A05(c2070fq);
            int A00 = A00(c2070fq);
            if (A00 == 9) {
                return hashMap;
            }
            Object A032 = A03(c2070fq, A00);
            if (A032 != null) {
                hashMap.put(A05, A032);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.V5
    public final boolean A0B(C2070fq c2070fq) {
        return true;
    }

    public final long A0D() {
        return this.A00;
    }

    public final long[] A0E() {
        return this.A01;
    }

    public final long[] A0F() {
        return this.A02;
    }
}
