package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;

@MetaExoPlayerCustomization("Using fbDataSpecExtension instead of Object")
/* renamed from: com.facebook.ads.redexgen.X.dg, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1938dg {
    public static byte[] A0A;
    public static String[] A0B = {"AbuNVUk0bcUyxMd6bcWnAlPBBDptN", "65X4WAto6ktlqnOUmL8T33iKyPfIn", "77wpsFkpVm2EdG", "m6tzrsCkVN5", "5EVBVlBJFqs", "jWBQ7N4VTzWzkq62I9I3jQAJKEu7cpGN", "pi0wjlJSnc8M3TTRLz2dlsQ0", "vzvSyfQUQYZxDQwq3Lcd7"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public Uri A05;
    public C1946dp A06;
    public String A07;
    public Map<String, String> A08;
    public byte[] A09;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = copyOfRange[i4];
            String[] strArr = A0B;
            if (strArr[0].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[2] = "R5NnbCttUUG2QR";
            strArr2[7] = "1us6eI87OiBUVUl4Cb3aJ";
            copyOfRange[i4] = (byte) ((b - i3) - 66);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A0A = new byte[]{-42, -22, -25, -94, -9, -12, -21, -94, -17, -9, -11, -10, -94, -28, -25, -94, -11, -25, -10, -80};
    }

    static {
        A01();
    }

    public C1938dg() {
        this.A01 = 1;
        this.A08 = Collections.emptyMap();
        this.A02 = -1L;
    }

    @MetaExoPlayerCustomization("Using fbDataSpecExtension instead of Object")
    public C1938dg(C1941dj c1941dj) {
        this.A05 = c1941dj.A06;
        this.A04 = c1941dj.A05;
        this.A01 = c1941dj.A01;
        this.A09 = c1941dj.A0A;
        this.A08 = c1941dj.A09;
        this.A03 = c1941dj.A04;
        this.A02 = c1941dj.A03;
        this.A07 = c1941dj.A08;
        this.A00 = c1941dj.A00;
        this.A06 = c1941dj.A07;
    }

    public final C1938dg A02(int i) {
        this.A00 = i;
        return this;
    }

    public final C1938dg A03(long j) {
        this.A02 = j;
        return this;
    }

    public final C1938dg A04(long j) {
        this.A03 = j;
        return this;
    }

    public final C1938dg A05(long j) {
        this.A04 = j;
        return this;
    }

    public final C1938dg A06(Uri uri) {
        this.A05 = uri;
        return this;
    }

    @MetaExoPlayerCustomization("Using fbDataSpecExtension instead of Object")
    public final C1938dg A07(C1946dp c1946dp) {
        this.A06 = c1946dp;
        return this;
    }

    public final C1938dg A08(String str) {
        this.A07 = str;
        return this;
    }

    @MetaExoPlayerCustomization("D50990955; Ensure that fbDataSpecExtension is not null")
    public final C1941dj A09() {
        C1946dp c1946dp;
        AbstractC2011es.A03(this.A05, A00(0, 20, 64));
        Uri uri = this.A05;
        long j = this.A04;
        int i = this.A01;
        byte[] bArr = this.A09;
        Map<String, String> map = this.A08;
        long j2 = this.A03;
        long j3 = this.A02;
        String str = this.A07;
        int i2 = this.A00;
        if (this.A06 != null) {
            c1946dp = this.A06;
        } else {
            c1946dp = new C1946dp();
        }
        return new C1941dj(uri, j, i, bArr, map, j2, j3, str, i2, c1946dp);
    }
}
