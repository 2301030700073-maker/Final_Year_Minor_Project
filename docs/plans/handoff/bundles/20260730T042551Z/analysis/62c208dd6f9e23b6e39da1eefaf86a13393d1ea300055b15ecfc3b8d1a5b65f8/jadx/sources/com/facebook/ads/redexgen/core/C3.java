package com.facebook.ads.redexgen.core;

import java.nio.ByteBuffer;

/* loaded from: assets/audience_network.dex */
public final class C3 extends XP {
    public static String[] A0C = {"pU2BOdhHAj4vVLk", "SqaJr7PvUJrWJiLtE8F2ELOrn9uRMJjH", "LPfymQVKtkvR", "LI2Kb", "vbebjuuQuEF8", "7Irzre7pNEC5qaLYBUNEICEmnGy", "ylZFgk3w832qBVGyZ2QCovgM192mvuV9", "k3sRMKXd7NEkS9VGFZj8LcPZ6ZYG0VBY"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public boolean A05;
    public boolean A06;
    public byte[] A07;
    public byte[] A08;
    public final long A09;
    public final long A0A;
    public final short A0B;

    public C3() {
        this(150000L, 20000L, (short) 1024);
    }

    public C3(long j, long j2, short s) {
        AbstractC2011es.A07(j2 <= j);
        this.A09 = j;
        this.A0A = j2;
        this.A0B = s;
        this.A07 = AbstractC2094gE.A07;
        this.A08 = AbstractC2094gE.A07;
    }

    private int A00(long j) {
        return (int) ((super.A05.A03 * j) / 1000000);
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x000a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int A01(java.nio.ByteBuffer r4) {
        /*
            r3 = this;
            int r0 = r4.limit()
            int r2 = r0 + (-2)
        L6:
            int r0 = r4.position()
            if (r2 < r0) goto L25
            short r0 = r4.getShort(r2)
            int r1 = java.lang.Math.abs(r0)
            short r0 = r3.A0B
            if (r1 <= r0) goto L22
            int r1 = r3.A00
            int r0 = r3.A00
            int r2 = r2 / r0
            int r1 = r1 * r2
            int r0 = r3.A00
            int r1 = r1 + r0
            return r1
        L22:
            int r2 = r2 + (-2)
            goto L6
        L25:
            int r0 = r4.position()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C3.A01(java.nio.ByteBuffer):int");
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int A02(java.nio.ByteBuffer r4) {
        /*
            r3 = this;
            int r2 = r4.position()
        L4:
            int r0 = r4.limit()
            if (r2 >= r0) goto L20
            short r0 = r4.getShort(r2)
            int r1 = java.lang.Math.abs(r0)
            short r0 = r3.A0B
            if (r1 <= r0) goto L1d
            int r1 = r3.A00
            int r0 = r3.A00
            int r2 = r2 / r0
            int r1 = r1 * r2
            return r1
        L1d:
            int r2 = r2 + 2
            goto L4
        L20:
            int r0 = r4.limit()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C3.A02(java.nio.ByteBuffer):int");
    }

    private void A03(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        A00(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.A06 = true;
        }
    }

    private void A04(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int maybeSilenceBufferRemaining = A02(byteBuffer);
        int limit2 = byteBuffer.position();
        int maybeSilenceInputSize = maybeSilenceBufferRemaining - limit2;
        int noisePosition = this.A07.length;
        int limit3 = this.A01;
        int noisePosition2 = noisePosition - limit3;
        if (maybeSilenceBufferRemaining < limit && maybeSilenceInputSize < noisePosition2) {
            byte[] bArr = this.A07;
            int limit4 = this.A01;
            A08(bArr, limit4);
            this.A01 = 0;
            this.A03 = 0;
            return;
        }
        int maybeSilenceInputSize2 = Math.min(maybeSilenceInputSize, noisePosition2);
        int limit5 = byteBuffer.position();
        byteBuffer.limit(limit5 + maybeSilenceInputSize2);
        byte[] bArr2 = this.A07;
        int limit6 = this.A01;
        byteBuffer.get(bArr2, limit6, maybeSilenceInputSize2);
        int limit7 = this.A01;
        this.A01 = limit7 + maybeSilenceInputSize2;
        int noisePosition3 = this.A01;
        int limit8 = this.A07.length;
        if (noisePosition3 == limit8) {
            if (this.A06) {
                byte[] bArr3 = this.A07;
                int limit9 = this.A02;
                A08(bArr3, limit9);
                long j = this.A04;
                int noisePosition4 = this.A01;
                int limit10 = this.A02;
                int noisePosition5 = noisePosition4 - (limit10 * 2);
                int limit11 = this.A00;
                this.A04 = j + (noisePosition5 / limit11);
            } else {
                long j2 = this.A04;
                int noisePosition6 = this.A01;
                int limit12 = this.A02;
                int noisePosition7 = noisePosition6 - limit12;
                int limit13 = this.A00;
                this.A04 = j2 + (noisePosition7 / limit13);
            }
            byte[] bArr4 = this.A07;
            int limit14 = this.A01;
            A07(byteBuffer, bArr4, limit14);
            this.A01 = 0;
            this.A03 = 2;
        }
        byteBuffer.limit(limit);
    }

    private void A05(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int limit2 = this.A07.length;
        byteBuffer.limit(Math.min(limit, position + limit2));
        int noiseLimit = A01(byteBuffer);
        int limit3 = byteBuffer.position();
        if (noiseLimit == limit3) {
            this.A03 = 1;
        } else {
            byteBuffer.limit(noiseLimit);
            A03(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    private void A06(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int A02 = A02(byteBuffer);
        byteBuffer.limit(A02);
        long j = this.A04;
        int noisyPosition = byteBuffer.remaining();
        int limit2 = this.A00;
        this.A04 = j + (noisyPosition / limit2);
        byte[] bArr = this.A08;
        int limit3 = this.A02;
        A07(byteBuffer, bArr, limit3);
        if (A02 < limit) {
            byte[] bArr2 = this.A08;
            int limit4 = this.A02;
            A08(bArr2, limit4);
            this.A03 = 0;
            byteBuffer.limit(limit);
        }
    }

    private void A07(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.A02);
        int i2 = this.A02 - min;
        System.arraycopy(bArr, i - i2, this.A08, 0, i2);
        int fromInputSize = byteBuffer.limit();
        byteBuffer.position(fromInputSize - min);
        byteBuffer.get(this.A08, i2, min);
    }

    private void A08(byte[] bArr, int i) {
        A00(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.A06 = true;
        }
    }

    @Override // com.facebook.ads.redexgen.core.XP
    public final RT A09(RT rt) throws RU {
        if (rt.A02 == 2) {
            return this.A05 ? rt : RT.A05;
        }
        throw new RU(rt);
    }

    @Override // com.facebook.ads.redexgen.core.XP
    public final void A0A() {
        if (this.A05) {
            this.A00 = super.A05.A00;
            int A00 = A00(this.A09) * this.A00;
            int maybeSilenceBufferSize = this.A07.length;
            if (maybeSilenceBufferSize != A00) {
                this.A07 = new byte[A00];
            }
            long j = this.A0A;
            String[] strArr = A0C;
            String str = strArr[6];
            String str2 = strArr[1];
            int charAt = str.charAt(29);
            int maybeSilenceBufferSize2 = str2.charAt(29);
            if (charAt == maybeSilenceBufferSize2) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[5] = "TZOI04JP3POno4pBuTGM9q62XWv";
            strArr2[3] = "wBzLD";
            int A002 = A00(j);
            int maybeSilenceBufferSize3 = this.A00;
            this.A02 = A002 * maybeSilenceBufferSize3;
            int length = this.A08.length;
            int maybeSilenceBufferSize4 = this.A02;
            if (length != maybeSilenceBufferSize4) {
                int maybeSilenceBufferSize5 = this.A02;
                this.A08 = new byte[maybeSilenceBufferSize5];
            }
        }
        this.A03 = 0;
        this.A04 = 0L;
        this.A01 = 0;
        this.A06 = false;
    }

    @Override // com.facebook.ads.redexgen.core.XP
    public final void A0B() {
        if (this.A01 > 0) {
            A08(this.A07, this.A01);
        }
        if (!this.A06) {
            this.A04 += this.A02 / this.A00;
        }
    }

    public final long A0C() {
        return this.A04;
    }

    public final void A0D(boolean z) {
        this.A05 = z;
    }

    @Override // com.facebook.ads.redexgen.core.XP, com.facebook.ads.redexgen.core.RV
    public final boolean AAA() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.core.RV
    public final void AGP(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !A01()) {
            switch (this.A03) {
                case 0:
                    A05(byteBuffer);
                    break;
                case 1:
                    A04(byteBuffer);
                    break;
                case 2:
                    A06(byteBuffer);
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }
}
