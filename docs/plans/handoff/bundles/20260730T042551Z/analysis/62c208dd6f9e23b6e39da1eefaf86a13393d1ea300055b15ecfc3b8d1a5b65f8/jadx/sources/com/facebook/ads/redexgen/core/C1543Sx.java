package com.facebook.ads.redexgen.core;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* renamed from: com.facebook.ads.redexgen.X.Sx, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1543Sx implements Y7 {
    public static String[] A0B = {"KFIK5LmrcOE5iMyup4rlzZH91ZXf1ETh", "x1f5OWbaeLmEPQ8x74DwnsoOFTBaGqPf", "9IGerzoQzvIPDQ4DicN1iWsoliu23txy", "0TlW88YfUdpMSL8uKiv1u985EETvDdPo", "jEhrjjTiufJlRpitpYp", "49O2oLT5iKWRA7n0NDwH9xhS5fKAXQnl", "wY3tGXu4nX3Ng3bcHf1n4S9C4BGcKWg5", "0YfWv2Tum3n2k7lfc5AM7AxOy6smXpif"};
    public int A00;
    public int A01;
    public int A03;
    public long A04;
    public ZM A06;
    public InterfaceC1580Uo A07;
    public String A08;
    public final String A0A;
    public final C2070fq A09 = new C2070fq(new byte[18]);
    public int A02 = 0;
    public long A05 = -9223372036854775807L;

    public C1543Sx(String str) {
        this.A0A = str;
    }

    @RequiresNonNull({"output"})
    private void A00() {
        byte[] A0l = this.A09.A0l();
        if (this.A06 == null) {
            this.A06 = UI.A03(A0l, this.A08, this.A0A, null);
            this.A07.A6U(this.A06);
        }
        this.A01 = UI.A01(A0l);
        long A02 = UI.A02(A0l) * 1000000;
        int i = this.A06.A0G;
        if (A0B[5].charAt(26) == 'c') {
            throw new RuntimeException();
        }
        A0B[4] = "rTT7LF1yaeqEBPqNna0";
        this.A04 = (int) (A02 / i);
    }

    private boolean A01(C2070fq c2070fq) {
        while (c2070fq.A07() > 0) {
            this.A03 <<= 8;
            this.A03 |= c2070fq.A0I();
            if (UI.A07(this.A03)) {
                byte[] A0l = this.A09.A0l();
                A0l[0] = (byte) ((this.A03 >> 24) & 255);
                A0l[1] = (byte) ((this.A03 >> 16) & 255);
                A0l[2] = (byte) ((this.A03 >> 8) & 255);
                A0l[3] = (byte) (this.A03 & 255);
                this.A00 = 4;
                this.A03 = 0;
                return true;
            }
        }
        return false;
    }

    private boolean A02(C2070fq c2070fq, byte[] bArr, int i) {
        int min = Math.min(c2070fq.A07(), i - this.A00);
        int bytesToRead = this.A00;
        c2070fq.A0k(bArr, bytesToRead, min);
        int bytesToRead2 = this.A00;
        this.A00 = bytesToRead2 + min;
        int bytesToRead3 = this.A00;
        return bytesToRead3 == i;
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void A50(C2070fq c2070fq) {
        AbstractC2011es.A02(this.A07);
        while (c2070fq.A07() > 0) {
            switch (this.A02) {
                case 0:
                    if (!A01(c2070fq)) {
                        break;
                    } else {
                        this.A02 = 1;
                        break;
                    }
                case 1:
                    if (!A02(c2070fq, this.A09.A0l(), 18)) {
                        break;
                    } else {
                        A00();
                        this.A09.A0f(0);
                        this.A07.AHx(this.A09, 18);
                        this.A02 = 2;
                        break;
                    }
                case 2:
                    int min = Math.min(c2070fq.A07(), this.A01 - this.A00);
                    this.A07.AHx(c2070fq, min);
                    int bytesToRead = this.A00;
                    this.A00 = bytesToRead + min;
                    int i = this.A00;
                    int bytesToRead2 = this.A01;
                    if (i == bytesToRead2) {
                        long j = this.A05;
                        if (A0B[2].charAt(1) == 'I') {
                            A0B[1] = "TaGzoiXMEDvJ7PcVuQjXhRH8TlPpyqYe";
                            if (j != -9223372036854775807L) {
                                this.A07.AI0(this.A05, 1, this.A01, 0, null);
                                this.A05 += this.A04;
                            }
                            this.A02 = 0;
                            break;
                        } else {
                            throw new RuntimeException();
                        }
                    } else {
                        continue;
                    }
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void A5S(UL ul, YS ys) {
        ys.A05();
        this.A08 = ys.A04();
        this.A07 = ul.AJX(ys.A03(), 1);
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AFx() {
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AFy(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A05 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.core.Y7
    public final void AIB() {
        this.A02 = 0;
        this.A00 = 0;
        this.A03 = 0;
        this.A05 = -9223372036854775807L;
    }
}
