package com.facebook.ads.redexgen.core;

import java.io.IOException;
import java.io.InterruptedIOException;

/* renamed from: com.facebook.ads.redexgen.X.eg, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1999eg {
    public static String[] A0A = {"6B", "ySsToJh", "gjMzoL5y", "gT80lVbo5RiDcz", "oA", "n8VZaE361wmLLsjg2P6wYWgdgyasV8np", "VCCtscDKaLvPPTi2grdYO25lcVCozFPY", "35Ux3uQ1Klf8"};
    public long A00;
    public long A01;
    public long A02;
    public final C1941dj A03;
    public final InterfaceC1984eR A04;
    public final C09394e A05;
    public final InterfaceC1998ef A06;
    public final String A07;
    public final byte[] A08;
    public volatile boolean A09;

    public C1999eg(C09394e c09394e, C1941dj c1941dj, byte[] bArr, InterfaceC1998ef interfaceC1998ef) {
        this.A05 = c09394e;
        this.A04 = c09394e.A0E();
        this.A03 = c1941dj;
        this.A08 = bArr == null ? new byte[131072] : bArr;
        this.A06 = interfaceC1998ef;
        this.A07 = c09394e.A0F().A4b(c1941dj);
        this.A02 = c1941dj.A04;
    }

    private long A00() {
        if (this.A01 == -1) {
            return -1L;
        }
        long j = this.A01;
        String[] strArr = A0A;
        if (strArr[4].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[5] = "6kjMmuQG1TkfolJ9wIVDKFIuhn9BLl6o";
        strArr2[6] = "Y8rjEIQQi1XOje2kOw1KRI0QX9VHUB9u";
        return j - this.A03.A04;
    }

    private long A01(long j, long j2) throws IOException {
        boolean z = j + j2 == this.A01 || j2 == -1;
        long j3 = -1;
        boolean z2 = false;
        if (j2 != -1) {
            try {
                j3 = this.A05.AFq(this.A03.A04().A04(j).A03(j2).A09());
                z2 = true;
            } catch (IOException unused) {
                AbstractC1936de.A00(this.A05);
            }
        }
        if (!z2) {
            A02();
            try {
                j3 = this.A05.AFq(this.A03.A04().A04(j).A03(-1L).A09());
            } catch (IOException e) {
                AbstractC1936de.A00(this.A05);
                throw e;
            }
        }
        int i = 0;
        if (z && j3 != -1) {
            try {
                A04(j + j3);
            } catch (IOException e2) {
                AbstractC1936de.A00(this.A05);
                throw e2;
            }
        }
        int i2 = 0;
        while (i2 != -1) {
            A02();
            i2 = this.A05.read(this.A08, 0, this.A08.length);
            if (i2 != -1) {
                A03(i2);
                i += i2;
            }
        }
        if (z) {
            A04(i + j);
        }
        this.A05.close();
        return i;
    }

    private void A02() throws InterruptedIOException {
        if (!this.A09) {
        } else {
            throw new InterruptedIOException();
        }
    }

    private void A03(long j) {
        this.A00 += j;
        if (this.A06 != null) {
            this.A06.AEi(A00(), this.A00, j);
        }
    }

    private void A04(long j) {
        if (this.A01 == j) {
            return;
        }
        this.A01 = j;
        if (this.A06 != null) {
            this.A06.AEi(A00(), this.A00, 0L);
        }
    }

    public final void A05() throws IOException {
        long nextRequestLength;
        A02();
        this.A00 = this.A04.A71(this.A07, this.A03.A04, this.A03.A03);
        if (this.A03.A03 != -1) {
            this.A01 = this.A03.A04 + this.A03.A03;
        } else {
            long A00 = AbstractC2004el.A00(this.A04.A7I(this.A07));
            if (A00 == -1) {
                A00 = -1;
            }
            this.A01 = A00;
        }
        if (this.A06 != null) {
            this.A06.AEi(A00(), this.A00, 0L);
        }
        while (true) {
            if (this.A01 == -1 || this.A02 < this.A01) {
                A02();
                if (this.A01 == -1) {
                    nextRequestLength = Long.MAX_VALUE;
                } else {
                    long nextRequestLength2 = this.A01;
                    long blockLength = this.A02;
                    nextRequestLength = nextRequestLength2 - blockLength;
                }
                long A72 = this.A04.A72(this.A07, this.A02, nextRequestLength);
                if (A72 > 0) {
                    long blockLength2 = this.A02;
                    this.A02 = blockLength2 + A72;
                } else {
                    long nextRequestLength3 = -A72;
                    if (nextRequestLength3 == Long.MAX_VALUE) {
                        nextRequestLength3 = -1;
                    }
                    long j = this.A02;
                    long blockLength3 = this.A02;
                    this.A02 = j + A01(blockLength3, nextRequestLength3);
                }
            } else {
                return;
            }
        }
    }

    public final void A06() {
        this.A09 = true;
    }
}
