package com.facebook.ads.redexgen.core;

import android.util.Pair;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Collections;

/* renamed from: com.facebook.ads.redexgen.X.Sv, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1541Sv implements Y7 {
    public static byte[] A0G;
    public static String[] A0H = {"NmTziwrBEeleI2zcDKgDjvA7qUw", "SekJReECHdWpHb6NQB3EQL2vetQgAEWA", "BOC6ZGrpYygESGmRPyhfDjH29NzWYoEz", "2gzrqHGB1xRLBwX4mZ1qcNgV5nulxwl4", "012keUBfh6BlFxDypCEXCalykyNE0ou0", "k3zjsf7yfJHE9mBrKaEHeQpEMH63VrpT", "MFzo5Fk0RO4wlGv3ISCdCJALs2z6bwtA", "Am35bXZOBd5vSoFaqvbJwRpc9RqFsHNr"};
    public static final double[] A0I;
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public InterfaceC1580Uo A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final Y8 A0B;
    public final YG A0C;
    public final YV A0D;
    public final C2070fq A0E;
    public final boolean[] A0F;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<ZM, Long> A00(Y8 y8, String str) {
        byte[] copyOf = Arrays.copyOf(y8.A02, y8.A00);
        int i = copyOf[4] & 255;
        int i2 = copyOf[5] & 255;
        int i3 = (i << 4) | (i2 >> 4);
        int i4 = ((i2 & 15) << 8) | (copyOf[6] & 255);
        float f = 1.0f;
        switch ((copyOf[7] & 240) >> 4) {
            case 2:
                float f2 = i4 * 4;
                float f3 = i3 * 3;
                if (A0H[0].length() == 12) {
                    throw new RuntimeException();
                }
                A0H[4] = "4nBX7WDv7j39O8wBvqnc7m1";
                f = f2 / f3;
                break;
            case 3:
                f = (i4 * 16) / (i3 * 9);
                break;
            case 4:
                f = (i4 * 121) / (i3 * 100);
                break;
        }
        ZM A14 = new P5().A0y(str).A11(A01(0, 11, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE)).A0r(i3).A0f(i4).A0Y(f).A12(Collections.singletonList(copyOf)).A14();
        long j = 0;
        int i5 = (copyOf[7] & 15) - 1;
        if (i5 >= 0 && i5 < A0I.length) {
            double d = A0I[i5];
            int i6 = y8.A01;
            int i7 = (copyOf[i6 + 9] & 96) >> 5;
            if (i7 != (copyOf[i6 + 9] & 31)) {
                d *= (i7 + 1.0d) / (r4 + 1);
            }
            j = (long) (1000000.0d / d);
        }
        return Pair.create(A14, Long.valueOf(j));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 57);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A0G = new byte[]{37, 58, 55, 54, 60, 124, 62, 35, 54, 52, 97};
    }

    static {
        A02();
        A0I = new double[]{23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    }

    public C1541Sv() {
        this(null);
    }

    public C1541Sv(YV yv) {
        this.A0D = yv;
        this.A0F = new boolean[4];
        this.A0B = new Y8(128);
        if (yv != null) {
            this.A0C = new YG(178, 128);
            this.A0E = new C2070fq();
        } else {
            this.A0C = null;
            this.A0E = null;
        }
        this.A01 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0092, code lost:
    
        if (r6.A02(r7, r13) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0094, code lost:
    
        r6 = A00(r20.A0B, (java.lang.String) com.facebook.ads.redexgen.core.AbstractC2011es.A01(r20.A06));
        r20.A05.A6U((com.facebook.ads.redexgen.core.ZM) r6.first);
        r20.A00 = ((java.lang.Long) r6.second).longValue();
        r20.A07 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x01b6, code lost:
    
        if (r6.A02(r7, r13) != false) goto L24;
     */
    @Override // com.facebook.ads.redexgen.core.Y7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A50(com.facebook.ads.redexgen.core.C2070fq r21) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1541Sv.A50(com.facebook.ads.redexgen.X.fq):void");
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void A5S(UL ul, YS ys) {
        ys.A05();
        this.A06 = ys.A04();
        this.A05 = ul.AJX(ys.A03(), 2);
        if (this.A0D != null) {
            this.A0D.A03(ul, ys);
        }
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AFx() {
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AFy(long j, int i) {
        this.A01 = j;
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AIB() {
        AbstractC1572Ud.A0H(this.A0F);
        this.A0B.A00();
        if (this.A0C != null) {
            this.A0C.A00();
        }
        this.A04 = 0L;
        this.A0A = false;
        this.A01 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }
}
