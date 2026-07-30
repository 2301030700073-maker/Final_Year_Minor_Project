package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.exoplayer2.Timeline;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Pa, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1445Pa {
    public static byte[] A0E;
    public static String[] A0F = {"K1cFtqvk4JWdFkB", "Ozphz5vH", "xTN64ZRgh1", "99O2iySzHHrdIRjI4gkuIzfLxszKvwXS", "00En2YYHTdTn9mG", "RZyqTmCXtNkcSOc8b9R3I8ppBcDmZpwC", "EM8PEvozxpK0IPSK0odQsfgZataeTbp", "3cP"};
    public C1447Pc A00;
    public boolean A01;
    public boolean A02;
    public long A03;
    public C1445Pa A04;
    public C1486Qs A05 = C1486Qs.A06;
    public C1913dH A06;
    public final R7 A07;
    public final Object A08;
    public final InterfaceC1803bV[] A09;
    public final PZ A0A;
    public final AbstractC1912dG A0B;
    public final InterfaceC1477Qi[] A0C;
    public final boolean[] A0D;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 16);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0E = new byte[]{108, 68, 69, 72, 64, 113, 68, 83, 72, 78, 69, 105, 78, 77, 69, 68, 83, 124, 73, 94, 69, 67, 72, 12, 94, 73, 64, 73, 77, 95, 73, 12, 74, 77, 69, 64, 73, 72, 2};
    }

    static {
        A04();
    }

    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Old exoplayer method. requires deleting")
    public C1445Pa(InterfaceC1477Qi[] interfaceC1477QiArr, long j, AbstractC1912dG abstractC1912dG, InterfaceC1918dM interfaceC1918dM, InterfaceC1774az interfaceC1774az, C1447Pc c1447Pc, C1913dH c1913dH) {
        this.A0C = interfaceC1477QiArr;
        this.A03 = j - c1447Pc.A03;
        this.A0B = abstractC1912dG;
        this.A08 = AbstractC2011es.A01(c1447Pc.A04.A04);
        this.A00 = c1447Pc;
        this.A06 = c1913dH;
        this.A09 = new InterfaceC1803bV[interfaceC1477QiArr.length];
        this.A0D = new boolean[interfaceC1477QiArr.length];
        this.A0A = new ZA(this, interfaceC1774az);
        this.A07 = A00(c1447Pc.A04, this.A0A, interfaceC1918dM, c1447Pc.A03, c1447Pc.A01);
    }

    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "MediaSourceList is temporarily changed to MediaSourceAdapter")
    public static R7 A00(R5 r5, PZ pz, InterfaceC1918dM interfaceC1918dM, long j, long j2) {
        R7 A5M = pz.A5M(r5, interfaceC1918dM, j);
        if (j2 != -9223372036854775807L) {
            return new C10478m(A5M, true, 0L, j2);
        }
        return A5M;
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x000c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A02() {
        /*
            r3 = this;
            boolean r0 = r3.A08()
            if (r0 != 0) goto L7
            return
        L7:
            r2 = 0
        L8:
            com.facebook.ads.redexgen.X.dH r0 = r3.A06
            int r0 = r0.A00
            if (r2 >= r0) goto L24
            com.facebook.ads.redexgen.X.dH r0 = r3.A06
            boolean r1 = r0.A00(r2)
            com.facebook.ads.redexgen.X.dH r0 = r3.A06
            com.facebook.ads.redexgen.X.QD[] r0 = r0.A04
            r0 = r0[r2]
            if (r1 == 0) goto L21
            if (r0 == 0) goto L21
            r0.A5n()
        L21:
            int r2 = r2 + 1
            goto L8
        L24:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1445Pa.A02():void");
    }

    private void A03() {
        if (!A08()) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = this.A06.A00;
            if (A0F[1].length() != 8) {
                throw new RuntimeException();
            }
            A0F[1] = "4oUgqrr8";
            if (i < i2) {
                boolean rendererEnabled = this.A06.A00(i);
                QD qd = this.A06.A04[i];
                if (rendererEnabled && qd != null) {
                    qd.A6A();
                }
                i++;
            } else {
                return;
            }
        }
    }

    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Temporary bridging of MediaSourceList with MediaSourceAdapter")
    public static void A05(PZ pz, R7 r7) {
        try {
            if (r7 instanceof C10478m) {
                pz.AGs(((C10478m) r7).A05);
            } else {
                pz.AGs(r7);
            }
        } catch (RuntimeException e) {
            AbstractC2055fb.A08(A01(0, 17, 49), A01(17, 22, 60), e);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A06(com.facebook.ads.redexgen.core.InterfaceC1803bV[] r4) {
        /*
            r3 = this;
            r2 = 0
        L1:
            com.facebook.ads.redexgen.X.Qi[] r0 = r3.A0C
            int r0 = r0.length
            if (r2 >= r0) goto L23
            com.facebook.ads.redexgen.X.Qi[] r0 = r3.A0C
            r0 = r0[r2]
            int r1 = r0.A9D()
            r0 = -2
            if (r1 != r0) goto L20
            com.facebook.ads.redexgen.X.dH r0 = r3.A06
            boolean r0 = r0.A00(r2)
            if (r0 == 0) goto L20
            com.facebook.ads.redexgen.X.R9 r0 = new com.facebook.ads.redexgen.X.R9
            r0.<init>()
            r4[r2] = r0
        L20:
            int r2 = r2 + 1
            goto L1
        L23:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1445Pa.A06(com.facebook.ads.redexgen.X.bV[]):void");
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A07(com.facebook.ads.redexgen.core.InterfaceC1803bV[] r4) {
        /*
            r3 = this;
            r2 = 0
        L1:
            com.facebook.ads.redexgen.X.Qi[] r0 = r3.A0C
            int r0 = r0.length
            if (r2 >= r0) goto L17
            com.facebook.ads.redexgen.X.Qi[] r0 = r3.A0C
            r0 = r0[r2]
            int r1 = r0.A9D()
            r0 = -2
            if (r1 != r0) goto L14
            r0 = 0
            r4[r2] = r0
        L14:
            int r2 = r2 + 1
            goto L1
        L17:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1445Pa.A07(com.facebook.ads.redexgen.X.bV[]):void");
    }

    private boolean A08() {
        return this.A04 == null;
    }

    public final long A09() {
        if (!this.A02) {
            return this.A00.A03;
        }
        long A6y = this.A01 ? this.A07.A6y() : Long.MIN_VALUE;
        return A6y == Long.MIN_VALUE ? this.A00.A00 : A6y;
    }

    public final long A0A() {
        if (this.A02) {
            return this.A07.A8R();
        }
        return 0L;
    }

    public final long A0B() {
        return this.A03;
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"})
    public final long A0C(long j) {
        return this.A07.A6w(j);
    }

    public final long A0D(long j) {
        return j - A0B();
    }

    public final long A0E(long j) {
        return A0B() + j;
    }

    public final long A0F(C1913dH c1913dH, long j, boolean z) {
        return A0G(c1913dH, j, z, new boolean[this.A0C.length]);
    }

    public final long A0G(C1913dH c1913dH, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = false;
            if (i >= c1913dH.A00) {
                break;
            }
            boolean[] zArr2 = this.A0D;
            if (!z && c1913dH.A01(this.A06, i)) {
                z2 = true;
            }
            zArr2[i] = z2;
            i++;
        }
        A07(this.A09);
        A02();
        this.A06 = c1913dH;
        A03();
        long AIF = this.A07.AIF(c1913dH.A04, this.A0D, this.A09, zArr, j);
        A06(this.A09);
        this.A01 = false;
        for (int i2 = 0; i2 < this.A09.length; i2++) {
            if (this.A09[i2] != null) {
                AbstractC2011es.A08(c1913dH.A00(i2));
                if (this.A0C[i2].A9D() != -2) {
                    this.A01 = true;
                }
            } else {
                AbstractC2011es.A08(c1913dH.A04[i2] == null);
            }
        }
        return AIF;
    }

    @MetaExoPlayerCustomization(type = {"TEMPORARY"})
    public final long A0H(boolean z) {
        if (!z) {
            return this.A03;
        }
        long j = this.A00.A03 + this.A03;
        if (A0F[6].length() != 31) {
            throw new RuntimeException();
        }
        A0F[7] = "9m";
        return j;
    }

    public final C1445Pa A0I() {
        return this.A04;
    }

    public final C1486Qs A0J() {
        return this.A05;
    }

    public final C1913dH A0K() {
        return this.A06;
    }

    public final C1913dH A0L(float f, Timeline timeline) throws EK {
        C1913dH A0b = this.A0B.A0b(this.A0C, A0J(), this.A00.A04, timeline);
        for (QD qd : A0b.A04) {
            if (qd != null) {
                qd.AEW(f);
            }
        }
        return A0b;
    }

    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "MediaSourceAdapter to be replaced with MediaSourceList")
    public final void A0M() {
        A02();
        A05(this.A0A, this.A07);
    }

    public final void A0N(float f, Timeline timeline) throws EK {
        this.A02 = true;
        this.A05 = this.A07.A9C();
        long A0F2 = A0F(A0L(f, timeline), this.A00.A03, false);
        this.A03 += this.A00.A03 - A0F2;
        this.A00 = this.A00.A00(A0F2);
    }

    public final void A0O(long j) {
        AbstractC2011es.A08(A08());
        this.A07.A52(A0D(j));
    }

    public final void A0P(long j) {
        AbstractC2011es.A08(A08());
        if (this.A02) {
            this.A07.AGe(A0D(j));
        }
    }

    public final void A0Q(C1445Pa c1445Pa) {
        if (c1445Pa == this.A04) {
            return;
        }
        A02();
        this.A04 = c1445Pa;
        A03();
    }

    public final boolean A0R() {
        return this.A02 && (!this.A01 || this.A07.A6y() == Long.MIN_VALUE);
    }
}
