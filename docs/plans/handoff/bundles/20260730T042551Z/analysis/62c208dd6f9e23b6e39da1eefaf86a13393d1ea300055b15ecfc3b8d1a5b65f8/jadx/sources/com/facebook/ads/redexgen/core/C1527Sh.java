package com.facebook.ads.redexgen.core;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* renamed from: com.facebook.ads.redexgen.X.Sh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1527Sh implements Y7 {
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public InterfaceC1580Uo A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public final UY A09;
    public final C2070fq A0A;
    public final String A0B;

    public C1527Sh() {
        this(null);
    }

    public C1527Sh(String str) {
        this.A02 = 0;
        this.A0A = new C2070fq(4);
        this.A0A.A0l()[0] = -1;
        this.A09 = new UY();
        this.A04 = -9223372036854775807L;
        this.A0B = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f A[LOOP:0: B:2:0x000c->B:13:0x003f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0028 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A00(com.facebook.ads.redexgen.core.C2070fq r9) {
        /*
            r8 = this;
            byte[] r7 = r9.A0l()
            int r6 = r9.A09()
            int r5 = r9.A0A()
        Lc:
            if (r6 >= r5) goto L46
            r1 = r7[r6]
            r0 = 255(0xff, float:3.57E-43)
            r1 = r1 & r0
            r4 = 0
            r3 = 1
            if (r1 != r0) goto L44
            r2 = 1
        L18:
            boolean r0 = r8.A08
            if (r0 == 0) goto L42
            r1 = r7[r6]
            r0 = 224(0xe0, float:3.14E-43)
            r1 = r1 & r0
            if (r1 != r0) goto L42
            r0 = 1
        L24:
            r8.A08 = r2
            if (r0 == 0) goto L3f
            int r0 = r6 + 1
            r9.A0f(r0)
            r8.A08 = r4
            com.facebook.ads.redexgen.X.fq r0 = r8.A0A
            byte[] r1 = r0.A0l()
            r0 = r7[r6]
            r1[r3] = r0
            r0 = 2
            r8.A00 = r0
            r8.A02 = r3
            return
        L3f:
            int r6 = r6 + 1
            goto Lc
        L42:
            r0 = 0
            goto L24
        L44:
            r2 = 0
            goto L18
        L46:
            r9.A0f(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1527Sh.A00(com.facebook.ads.redexgen.X.fq):void");
    }

    @RequiresNonNull({"output"})
    private void A01(C2070fq c2070fq) {
        int min = Math.min(c2070fq.A07(), this.A01 - this.A00);
        this.A05.AHx(c2070fq, min);
        int bytesToRead = this.A00;
        this.A00 = bytesToRead + min;
        int i = this.A00;
        int bytesToRead2 = this.A01;
        if (i < bytesToRead2) {
            return;
        }
        if (this.A04 != -9223372036854775807L) {
            this.A05.AI0(this.A04, 1, this.A01, 0, null);
            this.A04 += this.A03;
        }
        this.A00 = 0;
        this.A02 = 0;
    }

    @RequiresNonNull({"output"})
    private void A02(C2070fq c2070fq) {
        int min = Math.min(c2070fq.A07(), 4 - this.A00);
        byte[] A0l = this.A0A.A0l();
        int bytesToRead = this.A00;
        c2070fq.A0k(A0l, bytesToRead, min);
        int bytesToRead2 = this.A00;
        this.A00 = bytesToRead2 + min;
        int bytesToRead3 = this.A00;
        if (bytesToRead3 < 4) {
            return;
        }
        this.A0A.A0f(0);
        UY uy = this.A09;
        int bytesToRead4 = this.A0A.A0C();
        if (!uy.A00(bytesToRead4)) {
            this.A00 = 0;
            this.A02 = 1;
            return;
        }
        int bytesToRead5 = this.A09.A02;
        this.A01 = bytesToRead5;
        if (!this.A07) {
            int bytesToRead6 = this.A09.A04;
            long j = bytesToRead6 * 1000000;
            int bytesToRead7 = this.A09.A03;
            this.A03 = j / bytesToRead7;
            P5 A0h = new P5().A0y(this.A06).A11(this.A09.A06).A0h(4096);
            int bytesToRead8 = this.A09.A01;
            P5 A0b = A0h.A0b(bytesToRead8);
            int bytesToRead9 = this.A09.A03;
            this.A05.A6U(A0b.A0m(bytesToRead9).A10(this.A0B).A14());
            this.A07 = true;
        }
        this.A0A.A0f(0);
        this.A05.AHx(this.A0A, 4);
        this.A02 = 2;
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void A50(C2070fq c2070fq) {
        AbstractC2011es.A02(this.A05);
        while (c2070fq.A07() > 0) {
            switch (this.A02) {
                case 0:
                    A00(c2070fq);
                    break;
                case 1:
                    A02(c2070fq);
                    break;
                case 2:
                    A01(c2070fq);
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void A5S(UL ul, YS ys) {
        ys.A05();
        this.A06 = ys.A04();
        this.A05 = ul.AJX(ys.A03(), 1);
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AFx() {
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AFy(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A04 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AIB() {
        this.A02 = 0;
        this.A00 = 0;
        this.A08 = false;
        this.A04 = -9223372036854775807L;
    }
}
