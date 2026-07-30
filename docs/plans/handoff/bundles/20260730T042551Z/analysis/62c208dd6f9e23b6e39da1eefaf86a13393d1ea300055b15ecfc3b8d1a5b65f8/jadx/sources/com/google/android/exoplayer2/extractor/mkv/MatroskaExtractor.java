package com.google.android.exoplayer2.extractor.mkv;

import android.net.Uri;
import android.util.SparseArray;
import com.facebook.ads.AdError;
import com.facebook.ads.redexgen.core.AbstractC1572Ud;
import com.facebook.ads.redexgen.core.AbstractC2011es;
import com.facebook.ads.redexgen.core.AbstractC2055fb;
import com.facebook.ads.redexgen.core.AbstractC2094gE;
import com.facebook.ads.redexgen.core.C1562Ts;
import com.facebook.ads.redexgen.core.C1566Tw;
import com.facebook.ads.redexgen.core.C1575Ug;
import com.facebook.ads.redexgen.core.C1614Vy;
import com.facebook.ads.redexgen.core.C1615Vz;
import com.facebook.ads.redexgen.core.C2056fc;
import com.facebook.ads.redexgen.core.C2070fq;
import com.facebook.ads.redexgen.core.InterfaceC1580Uo;
import com.facebook.ads.redexgen.core.InterfaceC1612Vw;
import com.facebook.ads.redexgen.core.Q6;
import com.facebook.ads.redexgen.core.UK;
import com.facebook.ads.redexgen.core.UL;
import com.facebook.ads.redexgen.core.UO;
import com.facebook.ads.redexgen.core.Uj;
import com.facebook.ads.redexgen.core.W0;
import com.facebook.ads.redexgen.core.W1;
import com.facebook.ads.redexgen.core.WJ;
import com.facebook.ads.redexgen.core.WY;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.exoplayer2.ColorInfo;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: assets/audience_network.dex */
public final class MatroskaExtractor implements UK {
    public static byte[] A0t;
    public static String[] A0u = {"hvJsNyYp3v3a4C8A8LwOC4mgkuvCVXoh", "3ANqqpKHoM9q2pU5yvcC4TIXXl4OB4", "W4fcrFg9mIAIMJnn3ruN8Pp1p", "kBvi78HnY0B5pFf5ZLsioHHyWxztsmRs", "nMOCvaqUX6ANdIUM2nc6uVaFYW8fhdLw", "NaaBlhh1gleR9PSnSSlJga6sCsJWQtGN", "vbtih1VRjprWkk0rxsNMjhqVp2JrwXtO", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED};
    public static final UO A0v;
    public static final Map<String, Integer> A0w;
    public static final UUID A0x;
    public static final byte[] A0y;
    public static final byte[] A0z;
    public static final byte[] A10;
    public static final byte[] A11;
    public byte A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public long A0D;
    public long A0E;
    public long A0F;
    public long A0G;
    public long A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public long A0N;
    public long A0O;

    @MetaExoPlayerCustomization("Removed the final from the member variable")
    public SparseArray<C1615Vz> A0P;
    public UL A0Q;
    public C1615Vz A0R;
    public C2056fc A0S;
    public C2056fc A0T;

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "AR/VC customizations")
    public String A0U;
    public ByteBuffer A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;
    public int[] A0f;
    public final InterfaceC1612Vw A0g;
    public final W1 A0h;
    public final C2070fq A0i;
    public final C2070fq A0j;
    public final C2070fq A0k;
    public final C2070fq A0l;
    public final C2070fq A0m;
    public final C2070fq A0n;
    public final C2070fq A0o;
    public final C2070fq A0p;
    public final C2070fq A0q;
    public final C2070fq A0r;
    public final boolean A0s;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @RequiresNonNull({"#2.output"})
    private int A02(WJ wj, C1615Vz c1615Vz, int i, boolean z) throws IOException {
        int i2;
        int i3;
        if (A06(1012, 11, 79).equals(c1615Vz.A0d)) {
            A0F(wj, A10, i);
            return A00();
        }
        boolean equals = A06(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 10, 36).equals(c1615Vz.A0d);
        String[] strArr = A0u;
        if (strArr[1].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0u;
        strArr2[1] = "VeNawnzVnUoeQbv5dbPntIzy1QeUIs";
        strArr2[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (equals) {
            A0F(wj, A0z, i);
            String[] strArr3 = A0u;
            if (strArr3[1].length() == strArr3[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr4 = A0u;
            strArr4[3] = "xvOGB0nkBw8ypQOxOB86OzNoUEqCHeQo";
            strArr4[5] = "9ya9RNQvGPORZirlZGnzoNeBDQHCmHaH";
            return A00();
        }
        if (A06(1023, 13, 34).equals(c1615Vz.A0d)) {
            A0F(wj, A11, i);
            return A00();
        }
        InterfaceC1580Uo interfaceC1580Uo = c1615Vz.A0b;
        if (!this.A0Y) {
            if (c1615Vz.A0i) {
                this.A02 &= -1073741825;
                if (!this.A0b) {
                    wj.readFully(this.A0n.A0l(), 0, 1);
                    this.A08++;
                    if ((this.A0n.A0l()[0] & 128) == 128) {
                        throw Q6.A01(A06(694, 35, 18), null);
                    }
                    this.A00 = this.A0n.A0l()[0];
                    this.A0b = true;
                }
                if ((this.A00 & 1) == 1) {
                    boolean z2 = (this.A00 & 2) == 2;
                    this.A02 |= 1073741824;
                    if (!this.A0Z) {
                        wj.readFully(this.A0i.A0l(), 0, 8);
                        this.A08 += 8;
                        this.A0Z = true;
                        this.A0n.A0l()[0] = (byte) ((z2 ? 128 : 0) | 8);
                        this.A0n.A0f(0);
                        interfaceC1580Uo.AHy(this.A0n, 1, 1);
                        this.A09++;
                        this.A0i.A0f(0);
                        interfaceC1580Uo.AHy(this.A0i, 8, 1);
                        this.A09 += 8;
                    }
                    if (z2) {
                        if (!this.A0a) {
                            wj.readFully(this.A0n.A0l(), 0, 1);
                            this.A08++;
                            this.A0n.A0f(0);
                            this.A0B = this.A0n.A0I();
                            this.A0a = true;
                        }
                        int i4 = this.A0B * 4;
                        this.A0n.A0d(i4);
                        wj.readFully(this.A0n.A0l(), 0, i4);
                        this.A08 += i4;
                        short s = (short) ((this.A0B / 2) + 1);
                        int i5 = (s * 6) + 2;
                        if (this.A0V == null || this.A0V.capacity() < i5) {
                            this.A0V = ByteBuffer.allocate(i5);
                        }
                        this.A0V.position(0);
                        String[] strArr5 = A0u;
                        if (strArr5[3].charAt(31) != strArr5[5].charAt(31)) {
                            String[] strArr6 = A0u;
                            strArr6[3] = "XsyONaQoXb0KRGR9GBMCqS74AjhcnCna";
                            strArr6[5] = "Km2zYEf5FuXm3vuJIjLoXkc44n6BHKFj";
                            this.A0V.putShort(s);
                            i2 = 0;
                            i3 = 0;
                        } else {
                            A0u[6] = "1a1cgBQUUVYd773oCiMoc5ncpb4sV2rG";
                            this.A0V.putShort(s);
                            i2 = 0;
                            i3 = 0;
                        }
                        while (i3 < this.A0B) {
                            int i6 = i2;
                            i2 = this.A0n.A0L();
                            if (i3 % 2 == 0) {
                                this.A0V.putShort((short) (i2 - i6));
                            } else {
                                this.A0V.putInt(i2 - i6);
                            }
                            i3++;
                        }
                        int i7 = (i - this.A08) - i2;
                        if (this.A0B % 2 == 1) {
                            this.A0V.putInt(i7);
                        } else {
                            this.A0V.putShort((short) i7);
                            this.A0V.putInt(0);
                        }
                        C2070fq c2070fq = this.A0j;
                        byte[] array = this.A0V.array();
                        String[] strArr7 = A0u;
                        if (strArr7[1].length() != strArr7[7].length()) {
                            String[] strArr8 = A0u;
                            strArr8[3] = "OVXM98q5Whv6Ovenvj8Rl8RTqDNSVL0c";
                            strArr8[5] = "Pcui2Gkgol7vWOk20ujxNfcUqWQWrCa7";
                            c2070fq.A0j(array, i5);
                            interfaceC1580Uo.AHy(this.A0j, i5, 1);
                            this.A09 += i5;
                        } else {
                            String[] strArr9 = A0u;
                            strArr9[4] = "w5EeB6QB3VoUfhBDA6Ca0eRezxaYRFVP";
                            strArr9[0] = "3JNEEZKOGCdM5xkGIjn8mvQrr3ZCFSrs";
                            c2070fq.A0j(array, i5);
                            interfaceC1580Uo.AHy(this.A0j, i5, 0);
                            this.A09 += i5;
                        }
                    }
                }
            } else if (c1615Vz.A0m != null) {
                this.A0m.A0j(c1615Vz.A0m, c1615Vz.A0m.length);
            }
            if (c1615Vz.A0B(z)) {
                this.A02 |= 268435456;
                this.A0q.A0d(0);
                int A0A = (this.A0m.A0A() + i) - this.A08;
                this.A0n.A0d(4);
                this.A0n.A0l()[0] = (byte) ((A0A >> 24) & 255);
                this.A0n.A0l()[1] = (byte) ((A0A >> 16) & 255);
                this.A0n.A0l()[2] = (byte) ((A0A >> 8) & 255);
                this.A0n.A0l()[3] = (byte) (A0A & 255);
                interfaceC1580Uo.AHy(this.A0n, 4, 2);
                this.A09 += 4;
            }
            this.A0Y = true;
        }
        int A0A2 = i + this.A0m.A0A();
        if (A06(1207, 15, 19).equals(c1615Vz.A0d) || A06(1236, 16, 87).equals(c1615Vz.A0d)) {
            byte[] A0l = this.A0k.A0l();
            A0l[0] = 0;
            A0l[1] = 0;
            A0l[2] = 0;
            int i8 = c1615Vz.A0Q;
            int i9 = 4 - c1615Vz.A0Q;
            while (this.A08 < A0A2) {
                if (this.A0A == 0) {
                    A0G(wj, A0l, i9, i8);
                    this.A08 += i8;
                    this.A0k.A0f(0);
                    this.A0A = this.A0k.A0L();
                    this.A0l.A0f(0);
                    interfaceC1580Uo.AHx(this.A0l, 4);
                    this.A09 += 4;
                } else {
                    int A01 = A01(wj, interfaceC1580Uo, this.A0A);
                    this.A08 += A01;
                    this.A09 += A01;
                    this.A0A -= A01;
                }
            }
        } else {
            if (c1615Vz.A0c != null) {
                AbstractC2011es.A08(this.A0m.A0A() == 0);
                c1615Vz.A0c.A03(wj);
            }
            while (this.A08 < A0A2) {
                int A012 = A01(wj, interfaceC1580Uo, A0A2 - this.A08);
                this.A08 += A012;
                this.A09 += A012;
            }
        }
        if (A06(271, 8, 29).equals(c1615Vz.A0d)) {
            this.A0r.A0f(0);
            interfaceC1580Uo.AHx(this.A0r, 4);
            this.A09 += 4;
        }
        return A00();
    }

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0t, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 59);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A0t = new byte[]{Byte.MAX_VALUE, 50, 42, 44, 43, Byte.MAX_VALUE, 61, 58, Byte.MAX_VALUE, 54, 49, Byte.MAX_VALUE, 62, Byte.MAX_VALUE, 28, 42, 58, 44, 98, 47, 55, 49, 54, 98, 32, 39, 98, 43, 44, 98, 35, 98, 22, 48, 35, 33, 41, 7, 44, 54, 48, 59, 0, 78, 79, 84, 0, 83, 85, 80, 80, 79, 82, 84, 69, 68, 29, 8, 9, 92, 2, 29, 8, 10, 92, 2, 29, 8, 10, 92, 2, 29, 8, 10, 92, 38, 51, 49, 103, 57, 38, 51, 49, 103, 57, 38, 51, 49, 103, 47, 38, 51, 48, 103, 42, 63, 61, 107, 53, 42, 63, 61, 107, 53, 42, 63, 61, 107, 33, 42, 63, 60, 107, 101, 97, 119, 119, 65, 80, 80, 77, 74, 67, 87, 103, 77, 84, 76, 65, 86, 105, 75, 64, 65, 4, 61, 35, 61, 61, 63, 64, 94, 64, 66, 50, 27, 5, 30, 14, 9, 31, 1, 26, 10, 13, 113, 27, 6, 14, 12, 27, 13, 13, 81, 79, 84, 68, 67, 63, 92, 95, 67, 67, 92, 85, 67, 67, 36, 58, 32, 36, 38, 86, 76, 82, 75, 65, 76, 78, 58, 36, 54, 43, 62, 60, 84, 55, 73, 28, 2, 16, 13, 24, 26, 114, 17, 110, 73, 87, 69, 91, 39, 73, 75, 69, 118, 104, 120, 103, 98, 100, 96, 126, 113, 98, 108, 14, 103, 109, 110, 96, 117, 14, 104, 100, 100, 100, 69, 91, 84, 71, 73, 43, 77, 74, 80, 43, 70, 77, 67, 73, 87, 88, 75, 69, 39, 65, 70, 92, 39, 68, 65, 92, 5, 27, 16, 22, 17, 1, 12, 0, 103, 121, 112, 105, 116, 100, 111, 117, 44, 14, 1, 72, 27, 79, 28, 12, 14, 3, 10, 79, 27, 6, 2, 10, 12, 0, 11, 10, 79, 31, 29, 6, 0, 29, 79, 27, 0, 79, 27, 6, 2, 10, 12, 0, 11, 10, 60, 12, 14, 3, 10, 79, 13, 10, 6, 1, 8, 79, 28, 10, 27, 65, 9, 37, 46, 47, 41, 3, 46, 106, 35, 57, 106, 39, 35, 57, 57, 35, 36, 45, 106, 35, 36, 106, 30, 56, 43, 41, 33, 15, 36, 62, 56, 51, 106, 47, 38, 47, 39, 47, 36, 62, 46, 2, 0, 15, 4, 3, 4, 3, 10, 77, 8, 3, 14, 31, 20, 29, 25, 4, 2, 3, 77, 12, 3, 9, 77, 14, 2, 0, 29, 31, 8, 30, 30, 4, 2, 3, 77, 4, 30, 77, 3, 2, 25, 77, 30, 24, 29, 29, 2, 31, 25, 8, 9, 96, 76, 77, 87, 70, 77, 87, 96, 76, 78, 83, 98, 79, 68, 76, 3, 116, 88, 89, 67, 82, 89, 67, 114, 89, 84, 118, 91, 80, 88, 23, 65, 109, 108, 118, 103, 108, 118, 71, 108, 97, 109, 102, 107, 108, 101, 77, 112, 102, 103, 112, 34, 92, 112, 113, 107, 122, 113, 107, 90, 113, 124, 112, 123, 118, 113, 120, 76, 124, 112, 111, 122, 63, 11, 38, 60, 44, 46, 61, 43, 38, 33, 40, 111, 35, 46, 60, 59, 111, 44, 58, 42, 111, 63, 32, 38, 33, 59, 111, 56, 38, 59, 39, 111, 58, 33, 42, 55, 63, 42, 44, 59, 42, 43, 111, 43, 58, 61, 46, 59, 38, 32, 33, 117, 111, 33, 10, 6, 49, 28, 21, 0, 69, 94, 117, 121, 78, 99, 106, Byte.MAX_VALUE, 72, Byte.MAX_VALUE, 123, 126, 76, Byte.MAX_VALUE, 104, 105, 115, 117, 116, 58, 56, 63, 48, 49, 93, 17, 28, 30, 20, 19, 26, 93, 14, 28, 16, 13, 17, 24, 93, 14, 20, 7, 24, 93, 18, 8, 9, 93, 18, 27, 93, 15, 28, 19, 26, 24, 83, 116, 115, 124, 125, 99, 84, 80, 85, 103, 84, 67, 66, 88, 94, 95, 17, 105, 64, 73, 65, 73, 66, 88, 12, 89, 114, Byte.MAX_VALUE, 110, 101, 108, 104, 121, 120, 60, 72, 110, 125, Byte.MAX_VALUE, 119, 60, 122, 115, 105, 114, 120, 60, 126, 105, 104, 60, 95, 115, 114, 104, 121, 114, 104, 89, 114, Byte.MAX_VALUE, 87, 121, 101, 85, 88, 60, 107, 125, 111, 60, 114, 115, 104, 60, 122, 115, 105, 114, 120, 108, 81, 93, 76, 71, 90, 64, 70, 71, 9, 75, 64, 93, 9, 64, 90, 9, 90, 76, 93, 9, 64, 71, 9, 90, 64, 78, 71, 72, 69, 9, 75, 80, 93, 76, 99, 74, 87, 72, 68, 81, 31, 5, 118, 81, 68, 87, 81, 9, 5, 96, 75, 65, 9, 5, 119, 64, 68, 65, 106, 87, 65, 64, 87, 9, 5, 105, 68, 92, 64, 87, 9, 5, 118, 81, 92, 73, 64, 9, 5, 107, 68, 72, 64, 9, 5, 104, 68, 87, 66, 76, 75, 105, 9, 5, 104, 68, 87, 66, 76, 75, 119, 9, 5, 104, 68, 87, 66, 76, 75, 115, 9, 5, 96, 67, 67, 64, 70, 81, 9, 5, 113, 64, 93, 81, 96, 76, 67, 73, 76, 89, 66, 95, 84, 13, 72, 65, 72, 64, 72, 67, 89, 13, 126, 72, 72, 70, 100, 105, 13, 66, 95, 13, 126, 72, 72, 70, 125, 66, 94, 68, 89, 68, 66, 67, 13, 67, 66, 89, 13, 75, 66, 88, 67, 73, 116, 88, 77, 75, 86, 74, 82, 88, 124, 65, 77, 75, 88, 90, 77, 86, 75, 7, 63, 38, 62, 35, 58, 38, 47, 106, 25, 47, 45, 39, 47, 36, 62, 106, 47, 38, 47, 39, 47, 36, 62, 57, 106, 36, 37, 62, 106, 57, 63, 58, 58, 37, 56, 62, 47, 46, 19, 50, 125, 43, 60, 49, 52, 57, 125, 41, 47, 60, 62, 54, 46, 125, 42, 56, 47, 56, 125, 59, 50, 40, 51, 57, 115, 82, 29, 75, 92, 81, 84, 89, 29, 75, 92, 79, 84, 83, 73, 29, 81, 88, 83, 90, 73, 85, 29, 80, 92, 78, 86, 29, 91, 82, 72, 83, 89, 16, 28, 7, 21, 1, 16, 22, 1, 55, 59, 44, 32, 41, 50, 75, 52, 
        35, 55, 76, 64, 75, 90, 71, 75, 48, 94, 76, 76, 39, 43, 32, 49, 44, 32, 91, 33, 32, 50, 76, 74, 70, 77, 92, 65, 77, 54, 78, 92, 91, 79, 77, 77, 8, 4, 13, 20, 25, 8, 14, 25, 79, 119, 117, 108, 108, 117, 114, 123, 60, 111, 105, 126, 104, 117, 104, 112, 121, 60, 111, 125, 113, 108, 112, 121, 60, 117, 114, 60, 112, 125, Byte.MAX_VALUE, 121, 120, 60, 126, 112, 115, Byte.MAX_VALUE, 119, 50, 1, 57, 59, 34, 34, 59, 60, 53, 114, 33, 39, 48, 38, 59, 38, 62, 55, 114, 33, 51, 63, 34, 62, 55, 114, 37, 59, 38, 58, 114, 60, 61, 114, 54, 39, 32, 51, 38, 59, 61, 60, 124, 69, 126, 117, 104, 96, 117, 115, 100, 117, 116, 48, 121, 116, 42, 48, 73, 114, 121, 100, 108, 121, Byte.MAX_VALUE, 104, 121, 120, 60, 112, 125, Byte.MAX_VALUE, 117, 114, 123, 60, 106, 125, 112, 105, 121, 38, 60, 56, 49, 47, 56, 95, 87, 94, 76, 81, 68, 70, 51, 70, 79, 93, 64, 85, 87, 36, 63, 89, 67, 95, 63, 81, 64, 20, 29, 15, 18, 7, 5, 118, 109, 11, 17, 13, 109, 3, 17, 18, 126, 119, 101, 120, 109, 111, 28, 7, 97, 123, 103, 7, 105, 126, 107, 91, 82, 64, 93, 72, 74, 57, 34, 68, 94, 66, 34, 94, 93, 58, 51, 33, 60, 41, 43, 36, 67, 37, 63, 35, 67, 36, 41, 58, 47, 17, 24, 10, 20, 104, 17, 1, 16, 104, 1, 8, 18, 21, 4, 4, 79, 70, 77, 81, 92, 86, 75, 88, 94, 87, 94, 88, 48, 110, 103, 110, 104, 1, 42, 54, 33, 29, 52, 43, 38, 39, 45, 29, 48, 45, 54, 3, 111, 114, 114, 114, 80, 76, 91, 103, 78, 81, 92, 93, 87, 103, 74, 87, 76, 121, 21, 8, 1, 8, 119, 107, 124, 64, 105, 118, 123, 122, 112, 64, 109, 112, 107, 94, 50, 46, 39, 47, 23, 11, 28, 32, 9, 22, 27, 26, 16, 32, 13, 16, 11, 62, 82, 77, 72, 79, 26, 22, 3, 5, 24, 4, 28, 22, 69, 90, 87, 86, 92, 28, 68, 86, 81, 94, 6, 20, 19, 28};
    }

    static {
        A0B();
        A0v = new UO() { // from class: com.facebook.ads.redexgen.X.Tu
            @Override // com.facebook.ads.redexgen.core.UO
            public final UK[] A5D() {
                return MatroskaExtractor.A0Q();
            }

            @Override // com.facebook.ads.redexgen.core.UO
            public final /* synthetic */ UK[] A5E(Uri uri, Map map) {
                return UN.A01(this, uri, map);
            }
        };
        A10 = new byte[]{49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
        A0y = AbstractC2094gE.A1G(A06(729, 90, 30));
        A0z = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        A11 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        A0x = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap hashMap = new HashMap();
        hashMap.put(A06(1285, 18, 121), 0);
        hashMap.put(A06(1303, 18, 3), 90);
        hashMap.put(A06(1321, 18, 36), 180);
        hashMap.put(A06(1339, 18, 68), 270);
        Map<String, Integer> trackNameToRotationDegrees = Collections.unmodifiableMap(hashMap);
        A0w = trackNameToRotationDegrees;
    }

    public MatroskaExtractor() {
        this(0);
    }

    public MatroskaExtractor(int i) {
        this(new C1566Tw(), i);
    }

    public MatroskaExtractor(InterfaceC1612Vw interfaceC1612Vw, int i) {
        this.A0M = -1L;
        this.A0O = -9223372036854775807L;
        this.A0I = -9223372036854775807L;
        this.A0J = -9223372036854775807L;
        this.A0H = -1L;
        this.A0L = -1L;
        this.A0G = -9223372036854775807L;
        this.A0g = interfaceC1612Vw;
        this.A0g.AA1(new C1562Ts(this));
        this.A0s = (i & 1) == 0;
        this.A0h = new W1();
        this.A0P = new SparseArray<>();
        this.A0n = new C2070fq(4);
        this.A0r = new C2070fq(ByteBuffer.allocate(4).putInt(-1).array());
        this.A0o = new C2070fq(4);
        this.A0l = new C2070fq(AbstractC1572Ud.A03);
        this.A0k = new C2070fq(4);
        this.A0m = new C2070fq();
        this.A0p = new C2070fq();
        this.A0i = new C2070fq(8);
        this.A0j = new C2070fq();
        this.A0q = new C2070fq();
        this.A0f = new int[1];
    }

    private int A00() {
        int sampleSize = this.A09;
        A0A();
        return sampleSize;
    }

    private int A01(WJ wj, InterfaceC1580Uo interfaceC1580Uo, int i) throws IOException {
        int strippedBytesLeft = this.A0m.A07();
        if (strippedBytesLeft > 0) {
            int bytesWritten = Math.min(i, strippedBytesLeft);
            interfaceC1580Uo.AHx(this.A0m, bytesWritten);
            return bytesWritten;
        }
        String[] strArr = A0u;
        if (strArr[4].charAt(26) == strArr[0].charAt(26)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0u;
        strArr2[1] = "0YdUuctU2QhpAt9U3DDz8MmnF4Qdx3";
        strArr2[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        return interfaceC1580Uo.AHv(wj, i, false);
    }

    private long A03(long j) throws Q6 {
        if (this.A0O != -9223372036854775807L) {
            return AbstractC2094gE.A0U(j, this.A0O, 1000L);
        }
        throw Q6.A01(A06(279, 54, 84), null);
    }

    @MetaExoPlayerCustomization("Adding support AR/VR eventListener")
    private Uj A04(C2056fc c2056fc, C2056fc c2056fc2) {
        if (this.A0M == -1 || this.A0J == -9223372036854775807L || c2056fc == null || c2056fc.A02() == 0 || c2056fc2 == null || c2056fc2.A02() != c2056fc.A02()) {
            return new C1614Vy(this.A0J);
        }
        int A02 = c2056fc.A02();
        int[] iArr = new int[A02];
        long[] timesUs = new long[A02];
        String[] strArr = A0u;
        String str = strArr[1];
        String str2 = strArr[7];
        int length = str.length();
        int cuePointsSize = str2.length();
        if (length == cuePointsSize) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0u;
        strArr2[3] = "gVrzOIrGkpMKHCJql84VffjdelF7f3Qa";
        strArr2[5] = "ETJTZkcPi6sBc1BE7EkTzZvXvhAqJcHT";
        long[] jArr = new long[A02];
        long[] jArr2 = new long[A02];
        for (int i = 0; i < A02; i++) {
            jArr2[i] = c2056fc.A03(i);
            timesUs[i] = this.A0M + c2056fc2.A03(i);
        }
        for (int i2 = 0; i2 < A02 - 1; i2++) {
            iArr[i2] = (int) (timesUs[i2 + 1] - timesUs[i2]);
            jArr[i2] = jArr2[i2 + 1] - jArr2[i2];
        }
        iArr[A02 - 1] = (int) ((this.A0M + this.A0N) - timesUs[A02 - 1]);
        jArr[A02 - 1] = this.A0J - jArr2[A02 - 1];
        long j = jArr[A02 - 1];
        if (j <= 0) {
            AbstractC2055fb.A07(A06(869, 17, 2), A06(499, 52, 116) + j);
            iArr = Arrays.copyOf(iArr, iArr.length - 1);
            timesUs = Arrays.copyOf(timesUs, timesUs.length - 1);
            jArr = Arrays.copyOf(jArr, jArr.length - 1);
            jArr2 = Arrays.copyOf(jArr2, jArr2.length - 1);
        }
        return new WY(iArr, timesUs, jArr, jArr2);
    }

    private final C1615Vz A05(int i) throws Q6 {
        A0D(i);
        return this.A0R;
    }

    @EnsuresNonNull({"extractorOutput"})
    private void A09() {
        AbstractC2011es.A02(this.A0Q);
    }

    private void A0A() {
        this.A08 = 0;
        this.A09 = 0;
        this.A0A = 0;
        this.A0Y = false;
        this.A0b = false;
        this.A0a = false;
        this.A0B = 0;
        this.A00 = (byte) 0;
        this.A0Z = false;
        this.A0m.A0d(0);
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    private void A0C(int i) throws Q6 {
        if (this.A0T != null && this.A0S != null) {
        } else {
            throw Q6.A01(A06(631, 8, 23) + i + A06(0, 18, 100), null);
        }
    }

    @EnsuresNonNull({"currentTrack"})
    private void A0D(int i) throws Q6 {
        if (this.A0R != null) {
        } else {
            throw Q6.A01(A06(631, 8, 23) + i + A06(18, 24, 121), null);
        }
    }

    private void A0E(WJ wj, int i) throws IOException {
        if (this.A0n.A0A() >= i) {
            return;
        }
        if (this.A0n.A08() < i) {
            this.A0n.A0c(Math.max(this.A0n.A08() * 2, i));
        }
        wj.readFully(this.A0n.A0l(), this.A0n.A0A(), i - this.A0n.A0A());
        this.A0n.A0e(i);
    }

    private void A0F(WJ wj, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        int sizeWithPrefix = this.A0p.A08();
        if (sizeWithPrefix < length) {
            int sizeWithPrefix2 = length + i;
            this.A0p.A0i(Arrays.copyOf(bArr, sizeWithPrefix2));
        } else {
            byte[] A0l = this.A0p.A0l();
            int sizeWithPrefix3 = bArr.length;
            System.arraycopy(bArr, 0, A0l, 0, sizeWithPrefix3);
        }
        byte[] A0l2 = this.A0p.A0l();
        int sizeWithPrefix4 = bArr.length;
        wj.readFully(A0l2, sizeWithPrefix4, i);
        this.A0p.A0f(0);
        C2070fq c2070fq = this.A0p;
        String[] strArr = A0u;
        String str = strArr[3];
        String str2 = strArr[5];
        int charAt = str.charAt(31);
        int sizeWithPrefix5 = str2.charAt(31);
        if (charAt == sizeWithPrefix5) {
            throw new RuntimeException();
        }
        A0u[2] = "OLEoajv0A5hAFn";
        c2070fq.A0e(length);
    }

    private void A0G(WJ wj, byte[] bArr, int i, int i2) throws IOException {
        int min = Math.min(i2, this.A0m.A07());
        int pendingStrippedBytes = i + min;
        wj.readFully(bArr, pendingStrippedBytes, i2 - min);
        if (min > 0) {
            this.A0m.A0k(bArr, i, min);
        }
    }

    private final void A0H(C1615Vz c1615Vz, int i, WJ wj, int i2) throws IOException {
        if (i == 4) {
            if (A06(1280, 5, 3).equals(c1615Vz.A0d)) {
                this.A0q.A0d(i2);
                wj.readFully(this.A0q.A0l(), 0, i2);
                return;
            }
        }
        wj.AJ9(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0051, code lost:
    
        if (A06(1023, 13, 34).equals(r17.A0d) != false) goto L13;
     */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#1.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0I(com.facebook.ads.redexgen.core.C1615Vz r17, long r18, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0I(com.facebook.ads.redexgen.X.Vz, long, int, int, int):void");
    }

    private final void A0J(C1615Vz c1615Vz, WJ wj, int i) throws IOException {
        if (c1615Vz.A0n == 1685485123 || c1615Vz.A0n == 1685480259) {
            c1615Vz.A0k = new byte[i];
            wj.readFully(c1615Vz.A0k, 0, i);
        } else {
            wj.AJ9(i);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0K(java.lang.String r7, long r8, byte[] r10) {
        /*
            int r0 = r7.hashCode()
            r4 = 0
            switch(r0) {
                case 738597099: goto L58;
                case 1045209816: goto L46;
                case 1422270023: goto L34;
                default: goto L8;
            }
        L8:
            r6 = -1
        L9:
            r2 = 1000(0x3e8, double:4.94E-321)
            java.lang.String[] r5 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0u
            r0 = 3
            r1 = r5[r0]
            r0 = 5
            r5 = r5[r0]
            r0 = 31
            char r1 = r1.charAt(r0)
            char r0 = r5.charAt(r0)
            if (r1 == r0) goto Lb8
            java.lang.String[] r5 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0u
            java.lang.String r1 = "omptfwud1uZfxkRy7EoFVt5BBy6X4sdY"
            r0 = 3
            r5[r0] = r1
            java.lang.String r1 = "9NnrcsgcwKRVNKlpkbx1c9FxUfNErco3"
            r0 = 5
            r5[r0] = r1
            switch(r6) {
                case 0: goto La3;
                case 1: goto L91;
                case 2: goto L80;
                default: goto L2e;
            }
        L2e:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>()
            throw r0
        L34:
            r2 = 1012(0x3f4, float:1.418E-42)
            r1 = 11
            r0 = 79
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L8
            r6 = 0
            goto L9
        L46:
            r2 = 1023(0x3ff, float:1.434E-42)
            r1 = 13
            r0 = 34
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L8
            r6 = 2
            goto L9
        L58:
            r6 = 1002(0x3ea, float:1.404E-42)
            r5 = 10
            r3 = 36
            java.lang.String[] r1 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0u
            r0 = 6
            r1 = r1[r0]
            r0 = 12
            char r1 = r1.charAt(r0)
            r0 = 81
            if (r1 == r0) goto Lbe
            java.lang.String[] r2 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0u
            java.lang.String r1 = "Ms6DDOdJ87XoRGxXo"
            r0 = 2
            r2[r0] = r1
            java.lang.String r0 = A06(r6, r5, r3)
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L8
            r6 = 1
            goto L9
        L80:
            r5 = 94
            r1 = 19
            r0 = 52
            java.lang.String r0 = A06(r5, r1, r0)
            byte[] r2 = A0O(r8, r0, r2)
            r1 = 25
            goto Lb3
        L91:
            r2 = 56
            r1 = 19
            r0 = 3
            java.lang.String r2 = A06(r2, r1, r0)
            r0 = 10000(0x2710, double:4.9407E-320)
            byte[] r2 = A0O(r8, r2, r0)
            r1 = 21
            goto Lb3
        La3:
            r5 = 75
            r1 = 19
            r0 = 56
            java.lang.String r0 = A06(r5, r1, r0)
            byte[] r2 = A0O(r8, r0, r2)
            r1 = 19
        Lb3:
            int r0 = r2.length
            java.lang.System.arraycopy(r2, r4, r10, r1, r0)
            return
        Lb8:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        Lbe:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0K(java.lang.String, long, byte[]):void");
    }

    private boolean A0L(C1575Ug c1575Ug, long j) {
        if (this.A0c) {
            this.A0L = j;
            c1575Ug.A00 = this.A0H;
            this.A0c = false;
            return true;
        }
        if (!this.A0e || this.A0L == -1) {
            return false;
        }
        c1575Ug.A00 = this.A0L;
        this.A0L = -1L;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x029f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0M(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0M(java.lang.String):boolean");
    }

    public static byte[] A0O(long j, String str, long j2) {
        AbstractC2011es.A07(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        int minutes = (int) ((j4 - (i3 * 1000000)) / j2);
        return AbstractC2094gE.A1G(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(minutes)));
    }

    public static int[] A0P(int[] iArr, int i) {
        if (iArr == null) {
            int[] iArr2 = new int[i];
            String[] strArr = A0u;
            if (strArr[3].charAt(31) == strArr[5].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0u;
            strArr2[1] = "0ba4GojJLJm7uxnaPSAOLd77fYTidr";
            strArr2[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            return iArr2;
        }
        if (iArr.length >= i) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i)];
    }

    public static /* synthetic */ UK[] A0Q() {
        return new UK[]{new MatroskaExtractor()};
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "Adding support for AR/VR TAGs")
    public final int A0R(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 26568:
            case 28032:
            case 29555:
            case 30113:
            case 30320:
            case 290298740:
            case 307544935:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            case 17543:
            case 17827:
                return 6;
            default:
                String[] strArr = A0u;
                if (strArr[1].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0u;
                strArr2[1] = "A2FH5DOh7IT2snIry1cKkBkzyzULmN";
                strArr2[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                return 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00db, code lost:
    
        if (r4 != (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e2, code lost:
    
        if (r14.A0C != 475249515) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e4, code lost:
    
        r14.A0H = r14.A0K;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f3, code lost:
    
        if (r4 != (-1)) goto L36;
     */
    /* JADX WARN: Incorrect condition in loop: B:81:0x0183 */
    /* JADX WARN: Incorrect condition in loop: B:86:0x0190 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0S(int r15) throws com.facebook.ads.redexgen.core.Q6 {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0S(int):void");
    }

    public final void A0T(int i, double d) throws Q6 {
        switch (i) {
            case 181:
                A05(i).A0T = (int) d;
                return;
            case 17545:
                this.A0I = (long) d;
                return;
            case 21969:
                A05(i).A06 = (float) d;
                return;
            case 21970:
                A05(i).A07 = (float) d;
                return;
            case 21971:
                A05(i).A04 = (float) d;
                return;
            case 21972:
                A05(i).A05 = (float) d;
                return;
            case 21973:
                A05(i).A02 = (float) d;
                return;
            case 21974:
                A05(i).A03 = (float) d;
                return;
            case 21975:
                C1615Vz A05 = A05(i);
                float f = (float) d;
                String[] strArr = A0u;
                if (strArr[4].charAt(26) != strArr[0].charAt(26)) {
                    A0u[6] = "GpGoD1bpW9Cr16bouccvZy2hl3WrTyfc";
                    A05.A0B = f;
                    return;
                }
                throw new RuntimeException();
            case 21976:
                A05(i).A0C = (float) d;
                return;
            case 21977:
                A05(i).A00 = (float) d;
                return;
            case 21978:
                A05(i).A01 = (float) d;
                return;
            case 30323:
                A05(i).A0A = (float) d;
                return;
            case 30324:
                A05(i).A08 = (float) d;
                return;
            case 30325:
                A05(i).A09 = (float) d;
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:123:0x0186 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0U(int r19, int r20, com.facebook.ads.redexgen.core.WJ r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 948
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0U(int, int, com.facebook.ads.redexgen.X.WJ):void");
    }

    public final void A0V(int i, long j) throws Q6 {
        String A06 = A06(42, 14, 27);
        switch (i) {
            case 131:
                A05(i).A0V = (int) j;
                return;
            case 136:
                A05(i).A0f = j == 1;
                return;
            case 155:
                this.A0D = A03(j);
                return;
            case 159:
                A05(i).A0E = (int) j;
                return;
            case 176:
                A05(i).A0W = (int) j;
                return;
            case 179:
                A0C(i);
                this.A0T.A04(A03(j));
                return;
            case 186:
                A05(i).A0M = (int) j;
                return;
            case 215:
                A05(i).A0R = (int) j;
                return;
            case 231:
                long A03 = A03(j);
                String[] strArr = A0u;
                if (strArr[4].charAt(26) != strArr[0].charAt(26)) {
                    String[] strArr2 = A0u;
                    strArr2[1] = "N4wUezsqKMvSsh09xrDROdih0el4rf";
                    strArr2[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    this.A0G = A03;
                    return;
                }
                A0u[6] = "gZA18wlZqGkVKVcbkcwQH6O765N5iGrw";
                this.A0G = A03;
                return;
            case 238:
                this.A01 = (int) j;
                return;
            case 241:
                boolean z = this.A0d;
                String[] strArr3 = A0u;
                if (strArr3[4].charAt(26) != strArr3[0].charAt(26)) {
                    String[] strArr4 = A0u;
                    strArr4[3] = "Io3F5GpcwGeLsvVnH4RNXQOeF3DOTVj0";
                    strArr4[5] = "reFWPNfDPDIen75T2OsnmI6Hn5ySsbxR";
                    if (z) {
                        return;
                    }
                    A0C(i);
                    this.A0S.A04(j);
                    this.A0d = true;
                    return;
                }
                break;
            case 251:
                this.A0W = true;
                return;
            case 16871:
                A05(i).A0n = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                } else {
                    throw Q6.A01(A06(426, 16, 24) + j + A06, null);
                }
            case 17029:
                if (j >= 1 && j <= 2) {
                    return;
                } else {
                    throw Q6.A01(A06(559, 19, 33) + j + A06, null);
                }
            case 17143:
                if (j == 1) {
                    return;
                } else {
                    throw Q6.A01(A06(615, 16, 10) + j + A06, null);
                }
            case 18401:
                if (j == 5) {
                    return;
                } else {
                    throw Q6.A01(A06(442, 15, 12) + j + A06, null);
                }
            case 18408:
                if (j == 1) {
                    return;
                } else {
                    throw Q6.A01(A06(113, 22, 31) + j + A06, null);
                }
            case 20529:
                if (j == 0) {
                    return;
                } else {
                    throw Q6.A01(A06(457, 21, 57) + j + A06, null);
                }
            case 20530:
                if (j != 1) {
                    throw Q6.A01(A06(478, 21, 36) + j + A06, null);
                }
                return;
            case 21420:
                this.A0K = this.A0M + j;
                return;
            case 21432:
                int i2 = (int) j;
                A0D(i);
                switch (i2) {
                    case 0:
                        this.A0R.A0U = 0;
                        return;
                    case 1:
                        this.A0R.A0U = 2;
                        return;
                    case 3:
                        this.A0R.A0U = 1;
                        return;
                    case 15:
                        this.A0R.A0U = 3;
                        return;
                    default:
                        return;
                }
            case 21680:
                A05(i).A0L = (int) j;
                return;
            case 21682:
                A05(i).A0K = (int) j;
                return;
            case 21690:
                C1615Vz A05 = A05(i);
                String[] strArr5 = A0u;
                if (strArr5[1].length() != strArr5[7].length()) {
                    String[] strArr6 = A0u;
                    strArr6[3] = "a4JWGbvcHBxEuqFTNJyjkKzLLBks8zxi";
                    strArr6[5] = "V653rOPNcZ8n6p2drhLFQbJ4jSAS100h";
                    A05.A0J = (int) j;
                    return;
                }
                String[] strArr7 = A0u;
                strArr7[1] = "SFiKSoumrDWrN654gSJjTAdOE1goia";
                strArr7[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                A05.A0J = (int) j;
                return;
            case 21930:
                A05(i).A0g = j == 1;
                return;
            case 21945:
                A0D(i);
                switch ((int) j) {
                    case 1:
                        this.A0R.A0F = 2;
                        return;
                    case 2:
                        this.A0R.A0F = 1;
                        return;
                    default:
                        return;
                }
            case 21946:
                A0D(i);
                int A01 = ColorInfo.A01((int) j);
                if (A01 == -1) {
                    return;
                }
                this.A0R.A0H = A01;
                return;
            case 21947:
                A0D(i);
                this.A0R.A0h = true;
                int A00 = ColorInfo.A00((int) j);
                if (A00 == -1) {
                    return;
                }
                this.A0R.A0G = A00;
                return;
            case 21948:
                A05(i).A0O = (int) j;
                return;
            case 21949:
                C1615Vz A052 = A05(i);
                String[] strArr8 = A0u;
                if (strArr8[4].charAt(26) != strArr8[0].charAt(26)) {
                    String[] strArr9 = A0u;
                    strArr9[3] = "T0WP6ZFXgE6s8V8heT9wtEkD8f9NdjCM";
                    strArr9[5] = "7XePdUxt4aUcyCfjxSClX0QS1zLuSosx";
                    A052.A0P = (int) j;
                    return;
                }
                throw new RuntimeException();
            case 21998:
                A05(i).A0N = (int) j;
                return;
            case 22186:
                A05(i).A0X = j;
                return;
            case 22203:
                A05(i).A0Y = j;
                return;
            case 25188:
                C1615Vz A053 = A05(i);
                String[] strArr10 = A0u;
                if (strArr10[3].charAt(31) != strArr10[5].charAt(31)) {
                    String[] strArr11 = A0u;
                    strArr11[1] = "Cu1zz2XfEKQYvl96Y2e5xfLC0ajo7s";
                    strArr11[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    A053.A0D = (int) j;
                    return;
                }
                break;
            case 30114:
                this.A0E = j;
                return;
            case 30321:
                A0D(i);
                switch ((int) j) {
                    case 0:
                        this.A0R.A0S = 0;
                        return;
                    case 1:
                        this.A0R.A0S = 1;
                        return;
                    case 2:
                        this.A0R.A0S = 2;
                        return;
                    case 3:
                        this.A0R.A0S = 3;
                        return;
                    default:
                        return;
                }
            case 2352003:
                A05(i).A0I = (int) j;
                return;
            case 2807729:
                this.A0O = j;
                return;
            default:
                return;
        }
        throw new RuntimeException();
    }

    public final void A0W(int i, long j, long j2) throws Q6 {
        A09();
        switch (i) {
            case 160:
                this.A0W = false;
                this.A0E = 0L;
                return;
            case 174:
                this.A0R = new C1615Vz();
                return;
            case 187:
                this.A0d = false;
                return;
            case 19899:
                this.A0C = -1;
                this.A0K = -1L;
                return;
            case 20533:
                A05(i).A0i = true;
                return;
            case 21968:
                A05(i).A0h = true;
                return;
            case 25152:
            default:
                return;
            case 408125543:
                if (this.A0M == -1 || this.A0M == j) {
                    this.A0M = j;
                    this.A0N = j2;
                    return;
                }
                throw Q6.A01(A06(886, 39, 113), null);
            case 475249515:
                this.A0T = new C2056fc();
                this.A0S = new C2056fc();
                return;
            case 524531317:
                if (this.A0e) {
                    return;
                }
                if (this.A0s && this.A0H != -1) {
                    this.A0c = true;
                    return;
                } else {
                    this.A0Q.AID(new C1614Vy(this.A0J));
                    this.A0e = true;
                    return;
                }
        }
    }

    @MetaExoPlayerCustomization("Adding support for AR/VR TAGs")
    public final void A0X(int i, String str) throws Q6 {
        switch (i) {
            case 134:
                A05(i).A0d = str;
                return;
            case 17026:
                String A06 = A06(1375, 4, 74);
                String[] strArr = A0u;
                if (strArr[3].charAt(31) == strArr[5].charAt(31)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0u;
                strArr2[1] = "ZpQtQwhf10lxVfkk9mMvWEAcwosY1p";
                strArr2[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                if (A06.equals(str)) {
                    return;
                }
                String[] strArr3 = A0u;
                if (strArr3[3].charAt(31) == strArr3[5].charAt(31)) {
                    throw new RuntimeException();
                }
                A0u[2] = "ErKYIjeg";
                if (A06(1357, 8, 76).equals(str)) {
                    return;
                } else {
                    throw Q6.A01(A06(551, 8, 94) + str + A06(42, 14, 27), null);
                }
            case 17827:
                this.A0U = str;
                return;
            case 21358:
                A05(i).A0e = str;
                return;
            case 2274716:
                A05(i).A0o = str;
                return;
            default:
                return;
        }
    }

    public final boolean A0Y(int i) {
        if (i != 357149030) {
            String[] strArr = A0u;
            if (strArr[1].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0u;
            strArr2[1] = "BSEqXCtR2L3q8w452lR0fLhAQtFc8c";
            strArr2[7] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (i != 524531317 && i != 475249515 && i != 374648427) {
                return false;
            }
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final void AA0(UL ul) {
        this.A0Q = ul;
    }

    /* JADX WARN: Incorrect condition in loop: B:22:0x004d */
    @Override // com.facebook.ads.redexgen.core.UK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int AGT(com.facebook.ads.redexgen.core.WJ r7, com.facebook.ads.redexgen.core.C1575Ug r8) throws java.io.IOException {
        /*
            r6 = this;
            r3 = 0
            r6.A0X = r3
            r5 = 1
        L4:
            if (r5 == 0) goto L44
            boolean r4 = r6.A0X
            java.lang.String[] r2 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0u
            r0 = 3
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 31
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L3e
            java.lang.String[] r2 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.A0u
            java.lang.String r1 = "Z1NgeQgdiHJR50jbQsNezzrBQqlcsU"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = ""
            r0 = 7
            r2[r0] = r1
            if (r4 != 0) goto L44
            com.facebook.ads.redexgen.X.Vw r0 = r6.A0g
            boolean r5 = r0.AGW(r7)
            if (r5 == 0) goto L4
            long r0 = r7.A8d()
            boolean r0 = r6.A0L(r8, r0)
            if (r0 == 0) goto L4
            r0 = 1
            return r0
        L3e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L44:
            if (r5 != 0) goto L62
            r1 = 0
        L47:
            android.util.SparseArray<com.facebook.ads.redexgen.X.Vz> r0 = r6.A0P
            int r0 = r0.size()
            if (r1 >= r0) goto L60
            android.util.SparseArray<com.facebook.ads.redexgen.X.Vz> r0 = r6.A0P
            java.lang.Object r0 = r0.valueAt(r1)
            com.facebook.ads.redexgen.X.Vz r0 = (com.facebook.ads.redexgen.core.C1615Vz) r0
            com.facebook.ads.redexgen.core.C1615Vz.A08(r0)
            r0.A0E()
            int r1 = r1 + 1
            goto L47
        L60:
            r0 = -1
            return r0
        L62:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.AGT(com.facebook.ads.redexgen.X.WJ, com.facebook.ads.redexgen.X.Ug):int");
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final void AGj() {
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x001e */
    @Override // com.facebook.ads.redexgen.core.UK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AIC(long r3, long r5) {
        /*
            r2 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r2.A0G = r0
            r0 = 0
            r2.A05 = r0
            com.facebook.ads.redexgen.X.Vw r0 = r2.A0g
            r0.reset()
            com.facebook.ads.redexgen.X.W1 r0 = r2.A0h
            r0.A06()
            r2.A0A()
            r1 = 0
        L18:
            android.util.SparseArray<com.facebook.ads.redexgen.X.Vz> r0 = r2.A0P
            int r0 = r0.size()
            if (r1 >= r0) goto L2e
            android.util.SparseArray<com.facebook.ads.redexgen.X.Vz> r0 = r2.A0P
            java.lang.Object r0 = r0.valueAt(r1)
            com.facebook.ads.redexgen.X.Vz r0 = (com.facebook.ads.redexgen.core.C1615Vz) r0
            r0.A0F()
            int r1 = r1 + 1
            goto L18
        L2e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.AIC(long, long):void");
    }

    @Override // com.facebook.ads.redexgen.core.UK
    public final boolean AJB(WJ wj) throws IOException {
        return new W0().A01(wj);
    }
}
