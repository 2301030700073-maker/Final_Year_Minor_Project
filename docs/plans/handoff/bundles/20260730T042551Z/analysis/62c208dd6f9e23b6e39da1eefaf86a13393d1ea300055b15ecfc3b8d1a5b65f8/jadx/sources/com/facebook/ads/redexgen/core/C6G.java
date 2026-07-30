package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.google.android.exoplayer2.Timeline;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.6G, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C6G extends Timeline {
    public static byte[] A0D;
    public static String[] A0E = {"n9EQjbFg8mTuDvDDqdhWCAEHcMcePN4k", "SEIBxE4JogulETZcKTVpBS0TAAN90RVU", "Yd216mtnxzyrsUAPcp1DduXzG00", "8diAkAnih3VjXIAVYsXFJ9mTleg", "IJZ6HNstyIjgoBNQe70Ce2gU3juh9v0z", "S0X1GoqZNnP5IeEY5CwVC1chYztCM03y", "rhy9g9h1ZNMs4PzP5troDjMTurDk5C8M", "m70qW9TsYCOzb5MK21UKYts9wKkbs0tZ"};
    public static final ZE A0F;
    public static final Object A0G;
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final ZG A07;
    public final ZE A08;
    public final Object A09;
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 59);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A0D = new byte[]{-72, -50, -45, -52, -47, -54, -75, -54, -41, -50, -44, -55, -71, -50, -46, -54, -47, -50, -45, -54};
    }

    static {
        A01();
        A0G = new Object();
        A0F = new PH().A03(A00(0, 20, 42)).A00(Uri.EMPTY).A05();
    }

    public C6G(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, ZE ze, ZG zg) {
        this.A02 = j;
        this.A06 = j2;
        this.A00 = j3;
        this.A01 = j4;
        this.A04 = j5;
        this.A05 = j6;
        this.A03 = j7;
        this.A0B = z;
        this.A0A = z2;
        this.A0C = z3;
        this.A09 = obj;
        this.A08 = (ZE) AbstractC2011es.A01(ze);
        this.A07 = zg;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6G(long r24, long r26, long r28, long r30, boolean r32, boolean r33, boolean r34, java.lang.Object r35, com.facebook.ads.redexgen.core.ZE r36) {
        /*
            r23 = this;
            r1 = r36
            if (r34 == 0) goto L2f
            com.facebook.ads.redexgen.X.ZG r0 = r1.A02
        L6:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r19 = 0
            r2 = r23
            r18 = r33
            r17 = r32
            r13 = r28
            r11 = r26
            r15 = r30
            r20 = r35
            r9 = r24
            r21 = r1
            r22 = r0
            r2.<init>(r3, r5, r7, r9, r11, r13, r15, r17, r18, r19, r20, r21, r22)
            return
        L2f:
            r0 = 0
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C6G.<init>(long, long, long, long, boolean, boolean, boolean, java.lang.Object, com.facebook.ads.redexgen.X.ZE):void");
    }

    public C6G(long j, boolean z, boolean z2, boolean z3, Object obj, ZE ze) {
        this(j, j, 0L, 0L, z, z2, z3, obj, ze);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A06() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A07() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final int A0A(Object obj) {
        return A0G.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final C1673Yh A0I(int i, C1673Yh c1673Yh, boolean z) {
        AbstractC2011es.A00(i, 0, 1);
        return c1673Yh.A0F(null, z ? A0G : null, 0, this.A01, -this.A05);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final C1671Yf A0L(int i, C1671Yf c1671Yf, long j) {
        AbstractC2011es.A00(i, 0, 1);
        long j2 = this.A03;
        if (this.A0A && !this.A0C && j != 0) {
            if (this.A04 == -9223372036854775807L) {
                j2 = -9223372036854775807L;
            } else {
                j2 += j;
                long j3 = this.A04;
                String[] strArr = A0E;
                if (strArr[1].charAt(21) == strArr[6].charAt(21)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[0] = "1GOjKl17n3gJgFiXiMoMJ61WAyz3Iqbp";
                strArr2[4] = "kPDNI8Vo3UYVzAty1sdqf3HBdKuG2frd";
                if (j2 > j3) {
                    j2 = -9223372036854775807L;
                }
            }
        }
        return c1671Yf.A07(C1671Yf.A0K, this.A08, this.A09, this.A02, this.A06, -9223372036854775807L, this.A0B, this.A0A, null, j2, this.A04, 0, 0, this.A05);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public final Object A0M(int i) {
        AbstractC2011es.A00(i, 0, 1);
        return A0G;
    }
}
