package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.fc, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2056fc {
    public static byte[] A02;
    public static String[] A03 = {"f3nlwPlzCxddnxVlGVaLXVCuNYcQpPrJ", "yUHFn50QSsJzCb2qaxEfPEdUaOjzjFYh", "5zK0Z9Wax96R7Dd", "watMdMsZ9Vk8Ns9Tv5i2G", "EsLiaHJjtBW9cr1dLTwWXWvON2jPJSL3", "fmlFJJ7DMEtfBTvliklSiSiXlZl", "qMmyltOakV3fdJiKTEitFjBL6rcLFOpx", "h5JdlRRIyBbU2rX"};
    public int A00;
    public long[] A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 52);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-37, -49, 34, 24, 41, 20, -49, 24, 34, -49, -97, -60, -52, -73, -62, -65, -70, 118, -65, -60, -70, -69, -50, 118};
    }

    static {
        A01();
    }

    public C2056fc() {
        this(32);
    }

    public C2056fc(int i) {
        this.A01 = new long[i];
    }

    public final int A02() {
        return this.A00;
    }

    public final long A03(int i) {
        if (i >= 0 && i < this.A00) {
            long j = this.A01[i];
            if (A03[3].length() != 21) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[6] = "qXhUw0ve85DrTv8RmxDFc58lKLfNdt32";
            strArr[0] = "64qOvkrltGcOrnRk0o1sUajnJGxJnpeP";
            return j;
        }
        throw new IndexOutOfBoundsException(A00(10, 14, 34) + i + A00(0, 10, 123) + this.A00);
    }

    public final void A04(long j) {
        if (this.A00 == this.A01.length) {
            this.A01 = Arrays.copyOf(this.A01, this.A00 * 2);
        }
        long[] jArr = this.A01;
        int i = this.A00;
        this.A00 = i + 1;
        jArr[i] = j;
    }

    public final long[] A05() {
        return Arrays.copyOf(this.A01, this.A00);
    }
}
