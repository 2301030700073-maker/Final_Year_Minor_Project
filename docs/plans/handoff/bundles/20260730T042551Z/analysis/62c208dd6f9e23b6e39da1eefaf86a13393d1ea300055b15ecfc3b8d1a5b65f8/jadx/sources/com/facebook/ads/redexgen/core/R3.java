package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Map;

/* loaded from: assets/audience_network.dex */
public final class R3 implements InterfaceC1964e7, InterfaceC1765aq {
    public long A00;
    public InterfaceC1580Uo A01;
    public C1941dj A02;
    public boolean A04;
    public final Uri A06;
    public final UL A07;
    public final InterfaceC1787bF A09;
    public final AnonymousClass51 A0A;
    public final C2021f2 A0B;
    public volatile boolean A0C;
    public final /* synthetic */ C10177h A0D;
    public final C1575Ug A08 = new C1575Ug();
    public boolean A03 = true;
    public final long A05 = C1766ar.A00();

    public R3(C10177h c10177h, Uri uri, Q7 q7, InterfaceC1787bF interfaceC1787bF, UL ul, C2021f2 c2021f2) {
        this.A0D = c10177h;
        this.A06 = uri;
        this.A0A = new AnonymousClass51(q7);
        this.A09 = interfaceC1787bF;
        this.A07 = ul;
        this.A0B = c2021f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(long j, long j2) {
        this.A08.A00 = j;
        this.A00 = j2;
        this.A03 = true;
        this.A04 = false;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1964e7
    public final void A4h() {
        this.A0C = true;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1964e7
    public final void AAg() throws IOException {
        int i = 0;
        while (i == 0 && !this.A0C) {
            try {
                long j = this.A08.A00;
                this.A02 = new C1941dj(this.A06, j, -1L, this.A0D.A0b);
                long AFq = this.A0A.AFq(this.A02);
                if (AFq != -1) {
                    AFq += j;
                    this.A0D.A0G();
                }
                this.A0D.A07 = null;
                Q7 q7 = this.A0A;
                if (this.A0D.A07 != null && this.A0D.A07.A01 != -1) {
                    final AnonymousClass51 anonymousClass51 = this.A0A;
                    final int i2 = this.A0D.A07.A01;
                    q7 = new Q7(anonymousClass51, i2, this) { // from class: com.facebook.ads.redexgen.X.7n
                        public static String[] A05 = {"KrZrFX7VeXkYRpEXQ1lf32035OaT5wWd", "XVsM", "llFvuJo", "U1ni", "0kr19y6", "ysbpS1odrzKoTQ1N3J7BWoJUcQZSRkl7", "Z", "YhdHrgpizYFEyiG8McIVBQmqLy38zBfL"};
                        public int A00;
                        public final int A01;
                        public final InterfaceC1765aq A02;
                        public final Q7 A03;
                        public final byte[] A04;

                        {
                            AbstractC2011es.A07(i2 > 0);
                            this.A03 = anonymousClass51;
                            this.A01 = i2;
                            this.A02 = this;
                            this.A04 = new byte[1];
                            this.A00 = i2;
                        }

                        private boolean A00() throws IOException {
                            int bytesRead = this.A03.read(this.A04, 0, 1);
                            if (bytesRead == -1) {
                                return false;
                            }
                            int bytesRead2 = this.A04[0];
                            int offset = (bytesRead2 & 255) << 4;
                            if (offset == 0) {
                                return true;
                            }
                            int i3 = 0;
                            int i4 = offset;
                            byte[] bArr = new byte[offset];
                            while (i4 > 0) {
                                int bytesRead3 = this.A03.read(bArr, i3, i4);
                                if (bytesRead3 == -1) {
                                    return false;
                                }
                                i3 += bytesRead3;
                                i4 -= bytesRead3;
                            }
                            while (offset > 0) {
                                int bytesRead4 = offset - 1;
                                byte b = bArr[bytesRead4];
                                if (A05[3].length() == 4) {
                                    A05[5] = "cDJ5b9WNPpZl9kiNRj0rNshyOkDll0Mq";
                                    if (b != 0) {
                                        break;
                                    }
                                    offset--;
                                } else {
                                    throw new RuntimeException();
                                }
                            }
                            if (offset > 0) {
                                this.A02.ADK(new C2070fq(bArr, offset));
                            }
                            return true;
                        }

                        @Override // com.facebook.ads.redexgen.core.Q7
                        public final void A3t(InterfaceC1980eN interfaceC1980eN) {
                            AbstractC2011es.A01(interfaceC1980eN);
                            this.A03.A3t(interfaceC1980eN);
                        }

                        @Override // com.facebook.ads.redexgen.core.Q7
                        public final Map<String, List<String>> A8j() {
                            return this.A03.A8j();
                        }

                        @Override // com.facebook.ads.redexgen.core.Q7
                        public final Uri A9F() {
                            return this.A03.A9F();
                        }

                        @Override // com.facebook.ads.redexgen.core.Q7
                        public final long AFq(C1941dj c1941dj) {
                            throw new UnsupportedOperationException();
                        }

                        @Override // com.facebook.ads.redexgen.core.Q7
                        public final void close() {
                            throw new UnsupportedOperationException();
                        }

                        @Override // com.facebook.ads.redexgen.core.O9
                        public final int read(byte[] bArr, int i3, int i4) throws IOException {
                            if (this.A00 == 0) {
                                if (!A00()) {
                                    return -1;
                                }
                                this.A00 = this.A01;
                            }
                            int read = this.A03.read(bArr, i3, Math.min(this.A00, i4));
                            if (read != -1) {
                                int bytesRead = this.A00;
                                this.A00 = bytesRead - read;
                            }
                            return read;
                        }
                    };
                    this.A01 = this.A0D.A0Z();
                    this.A01.A6U(C10177h.A0g);
                }
                this.A09.AA2(q7, this.A06, this.A0A.A8j(), j, AFq, this.A07);
                if (this.A0D.A07 != null) {
                    this.A09.A5o();
                }
                if (this.A03) {
                    this.A09.AIC(j, this.A00);
                    this.A03 = false;
                }
                while (i == 0 && !this.A0C) {
                    try {
                        this.A0B.A00();
                        i = this.A09.AGU(this.A08);
                        long position = this.A09.A7Q();
                        if (position > this.A0D.A0M + j) {
                            j = position;
                            this.A0B.A02();
                            this.A0D.A0O.post(this.A0D.A0a);
                        }
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                if (i == 1) {
                    i = 0;
                } else if (this.A09.A7Q() != -1) {
                    this.A08.A00 = this.A09.A7Q();
                }
                AbstractC1936de.A00(this.A0A);
            } catch (Throwable th) {
                if (i != 1 && this.A09.A7Q() != -1) {
                    this.A08.A00 = this.A09.A7Q();
                }
                AbstractC1936de.A00(this.A0A);
                throw th;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1765aq
    public final void ADK(C2070fq c2070fq) {
        long max;
        if (this.A04) {
            max = Math.max(this.A0D.A03(true), this.A00);
        } else {
            max = this.A00;
        }
        int A07 = c2070fq.A07();
        InterfaceC1580Uo interfaceC1580Uo = (InterfaceC1580Uo) AbstractC2011es.A01(this.A01);
        interfaceC1580Uo.AHx(c2070fq, A07);
        interfaceC1580Uo.AI0(max, 1, A07, 0, null);
        this.A04 = true;
    }
}
