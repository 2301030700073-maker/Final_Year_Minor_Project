package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class W1 {
    public static byte[] A03;
    public static final long[] A04;
    public int A00;
    public int A01;
    public final byte[] A02 = new byte[8];

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{68, 101, 42, 124, 107, 102, 99, 110, 42, 124, 107, 120, 99, 100, 126, 42, 102, 111, 100, 109, 126, 98, 42, 103, 107, 121, 97, 42, 108, 101, Byte.MAX_VALUE, 100, 110};
    }

    static {
        A03();
        A04 = new long[]{128, 64, 32, 16, 8, 4, 2, 1};
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A00(int r7) {
        /*
            r6 = -1
            r5 = 0
        L2:
            long[] r0 = com.facebook.ads.redexgen.core.W1.A04
            int r0 = r0.length
            if (r5 >= r0) goto L15
            long[] r0 = com.facebook.ads.redexgen.core.W1.A04
            r3 = r0[r5]
            long r0 = (long) r7
            long r3 = r3 & r0
            r1 = 0
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 == 0) goto L16
            int r6 = r5 + 1
        L15:
            return r6
        L16:
            int r5 = r5 + 1
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.W1.A00(int):int");
    }

    public static long A01(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            long varint = ~A04[i - 1];
            j &= varint;
        }
        for (int i2 = 1; i2 < i; i2++) {
            long varint2 = bArr[i2];
            j = (j << 8) | (varint2 & 255);
        }
        return j;
    }

    public final int A04() {
        return this.A00;
    }

    public final long A05(WJ wj, boolean z, boolean z2, int i) throws IOException {
        if (this.A01 == 0) {
            if (!wj.AGZ(this.A02, 0, 1, z)) {
                return -1L;
            }
            int firstByte = this.A02[0] & 255;
            this.A00 = A00(firstByte);
            if (this.A00 != -1) {
                this.A01 = 1;
            } else {
                throw new IllegalStateException(A02(0, 33, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD));
            }
        }
        int firstByte2 = this.A00;
        if (firstByte2 > i) {
            this.A01 = 0;
            return -2L;
        }
        if (this.A00 != 1) {
            wj.readFully(this.A02, 1, this.A00 - 1);
        }
        this.A01 = 0;
        return A01(this.A02, this.A00, z2);
    }

    public final void A06() {
        this.A01 = 0;
        this.A00 = 0;
    }
}
