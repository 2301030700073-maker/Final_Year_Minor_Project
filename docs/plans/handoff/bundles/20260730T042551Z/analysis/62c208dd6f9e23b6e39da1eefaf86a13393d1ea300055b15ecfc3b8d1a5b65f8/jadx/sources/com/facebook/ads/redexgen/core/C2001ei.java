package com.facebook.ads.redexgen.core;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.TreeSet;

/* renamed from: com.facebook.ads.redexgen.X.ei, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2001ei {
    public static byte[] A05;
    public static String[] A06 = {"PQN", "rvi0HDqeD27dLltkNV8pWF8D8yhHXAGn", "k9HiReTDqF8d2vgMQ23MBvGNMSBrPp2U", "balVL98UuV9X8b2pxkV4", "9HtgA35QevtFIzQfegYRYUlIVngdc188", "6anyohtDO1dX5oMknEch", "89IE2E79gzgtSzujSRc7HGaB2VtCDhAT", "lgy3ywEUrTDLZ1r0sC1NqKhzSva7sH2G"};
    public PO A00;
    public final int A01;
    public final String A02;
    public final ArrayList<C2000eh> A03;
    public final TreeSet<PJ> A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A06;
            if (strArr[0].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[0] = "WgM";
            strArr2[5] = "GP51nk0soX0B0w7ryf54";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 83);
            i4++;
        }
    }

    public static void A01() {
        A05 = new byte[]{8, 92, 71, 8, 12, 46, 44, 39, 42, 43, 12, 32, 33, 59, 42, 33, 59, 18, 53, 61, 56, 49, 48, 116, 32, 59, 116, 38, 49, 58, 53, 57, 49, 116};
    }

    static {
        A01();
    }

    public C2001ei(int i, String str) {
        this(i, str, PO.A03);
    }

    public C2001ei(int i, String str, PO po) {
        this.A01 = i;
        this.A02 = str;
        this.A00 = po;
        this.A04 = new TreeSet<>();
        this.A03 = new ArrayList<>();
    }

    public final long A02(long j, long j2) {
        boolean z = true;
        AbstractC2011es.A07(j >= 0);
        if (j2 < 0) {
            z = false;
        }
        AbstractC2011es.A07(z);
        PJ A04 = A04(j, j2);
        if (A04.A0B()) {
            return -Math.min(A04.A0C() ? Long.MAX_VALUE : A04.A01, j2);
        }
        long j3 = j + j2;
        if (j3 < 0) {
            j3 = Long.MAX_VALUE;
        }
        long j4 = A04.A02 + A04.A01;
        if (j4 < j3) {
            for (PJ pj : this.A04.tailSet(A04, false)) {
                if (pj.A02 > j4) {
                    break;
                }
                j4 = Math.max(j4, pj.A02 + pj.A01);
                if (j4 >= j3) {
                    break;
                }
            }
        }
        return Math.min(j4 - j, j2);
    }

    public final PO A03() {
        return this.A00;
    }

    public final PJ A04(long j, long j2) {
        PJ A02 = PJ.A02(this.A02, j);
        PJ floor = this.A04.floor(A02);
        if (floor != null && floor.A02 + floor.A01 > j) {
            return floor;
        }
        PJ lookupSpan = this.A04.ceiling(A02);
        if (lookupSpan != null) {
            long j3 = lookupSpan.A02 - j;
            if (j2 != -1) {
                j3 = Math.min(j3, j2);
            }
            j2 = j3;
        }
        return PJ.A03(this.A02, j, j2);
    }

    public final PJ A05(PJ pj, long position, boolean z) {
        AbstractC2011es.A08(this.A04.remove(pj));
        File newFile = (File) AbstractC2011es.A01(pj.A03);
        if (z) {
            File file = newFile.getParentFile();
            File file2 = (File) AbstractC2011es.A01(file);
            long j = pj.A02;
            int i = this.A01;
            String[] strArr = A06;
            if (strArr[0].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[4] = "W9qX6oGtgS8AkfLQ5DDfOrEowvCsJPhb";
            strArr2[1] = "equChBJrWYwSbab49up1wsUl0DzBtbw2";
            File directory = PJ.A04(file2, i, j, position);
            if (newFile.renameTo(directory)) {
                newFile = directory;
            } else {
                AbstractC2055fb.A07(A00(4, 13, 28), A00(17, 17, 7) + newFile + A00(0, 4, 123) + directory);
            }
        }
        PJ newCacheSpan = pj.A0D(newFile, position);
        this.A04.add(newCacheSpan);
        return newCacheSpan;
    }

    public final TreeSet<PJ> A06() {
        return this.A04;
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A07(long r5) {
        /*
            r4 = this;
            r3 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.eh> r0 = r4.A03
            int r0 = r0.size()
            if (r3 >= r0) goto L20
            java.util.ArrayList<com.facebook.ads.redexgen.X.eh> r0 = r4.A03
            java.lang.Object r0 = r0.get(r3)
            com.facebook.ads.redexgen.X.eh r0 = (com.facebook.ads.redexgen.core.C2000eh) r0
            long r1 = r0.A01
            int r0 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r0 != 0) goto L1d
            java.util.ArrayList<com.facebook.ads.redexgen.X.eh> r0 = r4.A03
            r0.remove(r3)
            return
        L1d:
            int r3 = r3 + 1
            goto L1
        L20:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C2001ei.A07(long):void");
    }

    public final void A08(PJ pj) {
        this.A04.add(pj);
    }

    public final boolean A09() {
        return this.A04.isEmpty();
    }

    public final boolean A0A() {
        return this.A03.isEmpty();
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A0B(long r3, long r5) {
        /*
            r2 = this;
            r1 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.eh> r0 = r2.A03
            int r0 = r0.size()
            if (r1 >= r0) goto L1c
            java.util.ArrayList<com.facebook.ads.redexgen.X.eh> r0 = r2.A03
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.eh r0 = (com.facebook.ads.redexgen.core.C2000eh) r0
            boolean r0 = r0.A00(r3, r5)
            if (r0 == 0) goto L19
            r0 = 1
            return r0
        L19:
            int r1 = r1 + 1
            goto L1
        L1c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C2001ei.A0B(long, long):boolean");
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A0C(long r3, long r5) {
        /*
            r2 = this;
            r1 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.eh> r0 = r2.A03
            int r0 = r0.size()
            if (r1 >= r0) goto L1c
            java.util.ArrayList<com.facebook.ads.redexgen.X.eh> r0 = r2.A03
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.eh r0 = (com.facebook.ads.redexgen.core.C2000eh) r0
            boolean r0 = r0.A01(r3, r5)
            if (r0 == 0) goto L19
            r0 = 0
            return r0
        L19:
            int r1 = r1 + 1
            goto L1
        L1c:
            java.util.ArrayList<com.facebook.ads.redexgen.X.eh> r1 = r2.A03
            com.facebook.ads.redexgen.X.eh r0 = new com.facebook.ads.redexgen.X.eh
            r0.<init>(r3, r5)
            r1.add(r0)
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C2001ei.A0C(long, long):boolean");
    }

    public final boolean A0D(C1994eb c1994eb) {
        if (this.A04.remove(c1994eb)) {
            if (c1994eb.A03 != null) {
                c1994eb.A03.delete();
                return true;
            }
            return true;
        }
        return false;
    }

    public final boolean A0E(C2006en c2006en) {
        PO po = this.A00;
        PO oldMetadata = this.A00;
        this.A00 = oldMetadata.A05(c2006en);
        PO oldMetadata2 = this.A00;
        return !oldMetadata2.equals(po);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2001ei c2001ei = (C2001ei) obj;
        if (this.A01 == c2001ei.A01) {
            boolean equals = this.A02.equals(c2001ei.A02);
            String[] strArr = A06;
            if (strArr[4].charAt(23) == strArr[1].charAt(23)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[4] = "tKTx9qLun5OTKe5ZkLeuR7e0ChTXVRpJ";
            strArr2[1] = "gUXLpi6r9nVu4Ye4HtwjMIzx8hkmmZd8";
            if (equals && this.A04.equals(c2001ei.A04) && this.A00.equals(c2001ei.A00)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A01;
        int i = result * 31;
        int result2 = this.A02.hashCode();
        return ((i + result2) * 31) + this.A00.hashCode();
    }
}
