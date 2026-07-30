package com.facebook.ads.redexgen.core;

import android.media.AudioTrack;
import com.facebook.internal.security.OidcSecurityUtil;

/* loaded from: assets/audience_network.dex */
public final class S2 {
    public static String[] A06 = {"Aa9IxN3YmcaAKa8KvkWWJEFTItuWbAoE", "2I", "d56HhpxI3B7", "Wy07xXobcjFJI2B9BTs6ZnUl8H7Gqf", "48cAcMa10FsVtf4sYNdAKxd9qnL1UD3p", "K9pMHdZ5yyJYU1na1GQNE7giaFp", "jAko0cjmOobdJq7xOwmvuzpbQYhGu2", "7t4D3z4VkDG3S3wuQI01ZmjDDWu"};
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public final S0 A05;

    public S2(AudioTrack audioTrack) {
        if (AbstractC2094gE.A02 >= 19) {
            this.A05 = new S0(audioTrack);
            A05();
        } else {
            this.A05 = null;
            A00(3);
        }
    }

    private void A00(int i) {
        this.A00 = i;
        switch (i) {
            case 0:
                this.A03 = 0L;
                this.A01 = -1L;
                this.A02 = System.nanoTime() / 1000;
                this.A04 = OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS;
                return;
            case 1:
                this.A04 = OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS;
                return;
            case 2:
            case 3:
                this.A04 = 10000000L;
                return;
            case 4:
                this.A04 = 500000L;
                return;
            default:
                throw new IllegalStateException();
        }
    }

    public final long A01() {
        if (this.A05 != null) {
            return this.A05.A00();
        }
        return -1L;
    }

    public final long A02() {
        if (this.A05 != null) {
            return this.A05.A01();
        }
        return -9223372036854775807L;
    }

    public final void A03() {
        if (this.A00 == 4) {
            A05();
        }
    }

    public final void A04() {
        A00(4);
    }

    public final void A05() {
        if (this.A05 != null) {
            A00(0);
        }
    }

    public final boolean A06() {
        return this.A00 == 2;
    }

    public final boolean A07(long j) {
        if (this.A05 == null || j - this.A03 < this.A04) {
            if (A06[2].length() == 18) {
                throw new RuntimeException();
            }
            A06[2] = "8K00rKCtBz9qXYFA5TR4WPRY5ZI0z";
            return false;
        }
        this.A03 = j;
        boolean A02 = this.A05.A02();
        switch (this.A00) {
            case 0:
                if (!A02) {
                    if (j - this.A02 <= 500000) {
                        return A02;
                    }
                    A00(3);
                    return A02;
                }
                long A01 = this.A05.A01();
                long timestampPositionFrames = this.A02;
                if (A01 >= timestampPositionFrames) {
                    this.A01 = this.A05.A00();
                    A00(1);
                    return A02;
                }
                return false;
            case 1:
                if (A02) {
                    long A00 = this.A05.A00();
                    long timestampPositionFrames2 = this.A01;
                    if (A00 > timestampPositionFrames2) {
                        A00(2);
                        return A02;
                    }
                    return A02;
                }
                A05();
                return A02;
            case 2:
                if (!A02) {
                    A05();
                    return A02;
                }
                return A02;
            case 3:
                if (A02) {
                    A05();
                    return A02;
                }
                return A02;
            case 4:
                return A02;
            default:
                throw new IllegalStateException();
        }
    }
}
