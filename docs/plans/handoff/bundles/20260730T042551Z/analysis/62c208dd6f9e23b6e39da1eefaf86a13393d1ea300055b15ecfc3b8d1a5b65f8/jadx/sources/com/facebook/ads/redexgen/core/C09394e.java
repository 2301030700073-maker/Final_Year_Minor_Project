package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.4e, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09394e implements Q7 {
    public static byte[] A0M;
    public static String[] A0N = {"s00UHyISL", "CysEKyClACPXFYeEhZn", "da", "nGvpX33P5UCM8ahnxHWaMyTa", "lLUX", "BDeT7nLDcgwxPCwpEhsshSlHVzAjjBZ1", "jZuDK72Zjf1meCMQEv38wr6fWx", "cLdlhrP9hsQzKcJJjC4G0Hit2UnEgDt4"};
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public Uri A05;
    public Q7 A06;
    public C1941dj A07;
    public C1941dj A08;

    @MetaExoPlayerCustomization
    public C1946dp A09;
    public C1994eb A0A;
    public boolean A0B;
    public boolean A0C;
    public final Q7 A0D;
    public final Q7 A0E;
    public final Q7 A0F;
    public final InterfaceC1984eR A0G;
    public final InterfaceC1987eU A0H;
    public final InterfaceC1993ea A0I;
    public final boolean A0J;
    public final boolean A0K;
    public final boolean A0L;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0M, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0N[5].length() == 7) {
                throw new RuntimeException();
            }
            A0N[1] = "Is7";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 126);
            i4++;
        }
    }

    public static void A05() {
        A0M = new byte[]{-40, -10, -8, -3, -6, -39, -10, 9, -10, -24, 4, 10, 7, -8, -6, -58, -14, -8, -17, -25, -15, -86, -9, -93, -8, -13, -25, -28, -9, -24, -93, -11, -24, -25, -20, -11, -24, -26, -9, -24, -25, -93, -40, -43, -52, -79, -93, -41, -21, -20, -10, -93, -16, -20, -22, -21, -9, -93, -26, -28, -8, -10, -24, -93, -11, -24, -17, -28, -9, -20, -7, -24, -93, -40, -43, -52, -10, -93, -22, -24, -9, -93, -11, -24, -10, -14, -17, -7, -24, -25, -93, -20, -15, -26, -14, -11, -11, -24, -26, -9, -17, -4, -79, -15, -16, -59, -29, -27, -22, -25, -26, -60, -5, -10, -25, -11, -44, -25, -29, -26};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 15 out of bounds for length 13
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override // com.facebook.ads.redexgen.core.Q7
    @MetaExoPlayerCustomization("usage of fbDataSpecExtension and the check for isInitSegment")
    public final long AFq(C1941dj c1941dj) throws IOException {
        try {
            String A4b = this.A0I.A4b(c1941dj);
            C1941dj A09 = c1941dj.A04().A08(A4b).A09();
            this.A08 = A09;
            this.A05 = A01(this.A0G, A4b, A09.A06);
            this.A03 = c1941dj.A04;
            this.A09 = new C1946dp(c1941dj.A07);
            this.A0B = A00(c1941dj) != -1;
            boolean z = this.A0B;
            if (this.A0B) {
                this.A00 = -1L;
            } else {
                this.A00 = AbstractC2004el.A00(this.A0G.A7I(A4b));
                if (this.A00 != -1) {
                    this.A00 -= c1941dj.A04;
                    if (this.A00 < 0) {
                        throw new C1934dc(AdError.REMOTE_ADS_SERVICE_ERROR);
                    }
                }
            }
            boolean z2 = c1941dj.A07.A08 <= 0 && c1941dj.A07.A07 <= 0;
            if (c1941dj.A03 != -1) {
                this.A00 = this.A00 == -1 ? c1941dj.A03 : Math.min(this.A00, c1941dj.A03);
            }
            if (this.A00 > 0 || this.A00 == -1) {
                A06(A09, false, z2);
            }
            return c1941dj.A03 != -1 ? c1941dj.A03 : this.A00;
        } catch (Throwable th) {
            A09(th);
            throw th;
        }
    }

    static {
        A05();
    }

    public C09394e(InterfaceC1984eR interfaceC1984eR, final Q7 q7, Q7 q72, final InterfaceC1929dX interfaceC1929dX, InterfaceC1993ea interfaceC1993ea, int i, final QV qv, final int i2, InterfaceC1987eU interfaceC1987eU) {
        this.A0G = interfaceC1984eR;
        this.A0D = q72;
        this.A0I = interfaceC1993ea == null ? InterfaceC1993ea.A00 : interfaceC1993ea;
        this.A0J = (i & 1) != 0;
        this.A0L = (i & 2) != 0;
        this.A0K = (i & 4) != 0;
        if (q7 != null) {
            q7 = qv != null ? new Q7(q7, qv, i2) { // from class: com.facebook.ads.redexgen.X.55
                public static byte[] A03;
                public final int A00;
                public final QV A01;
                public final Q7 A02;

                static {
                    A01();
                }

                public static String A00(int i3, int i4, int i5) {
                    byte[] copyOfRange = Arrays.copyOfRange(A03, i3, i3 + i4);
                    for (int i6 = 0; i6 < copyOfRange.length; i6++) {
                        copyOfRange[i6] = (byte) ((copyOfRange[i6] ^ i5) ^ 70);
                    }
                    return new String(copyOfRange);
                }

                public static void A01() {
                    A03 = new byte[]{Byte.MAX_VALUE, 125, 96, 108, 106, 106, 107, 64, 125, 91, 103, 125, 96, 120};
                }

                {
                    this.A02 = (Q7) AbstractC2011es.A01(q7);
                    AbstractC2011es.A01(qv);
                    this.A01 = null;
                    this.A00 = i2;
                }

                @Override // com.facebook.ads.redexgen.core.Q7
                public final void A3t(InterfaceC1980eN interfaceC1980eN) {
                    AbstractC2011es.A01(interfaceC1980eN);
                    this.A02.A3t(interfaceC1980eN);
                }

                @Override // com.facebook.ads.redexgen.core.Q7
                public final Map<String, List<String>> A8j() {
                    return this.A02.A8j();
                }

                @Override // com.facebook.ads.redexgen.core.Q7
                public final Uri A9F() {
                    return this.A02.A9F();
                }

                @Override // com.facebook.ads.redexgen.core.Q7
                public final long AFq(C1941dj c1941dj) throws IOException {
                    throw new NullPointerException(A00(0, 14, 73));
                }

                @Override // com.facebook.ads.redexgen.core.Q7
                public final void close() throws IOException {
                    this.A02.close();
                }

                @Override // com.facebook.ads.redexgen.core.O9
                public final int read(byte[] bArr, int i3, int i4) throws IOException {
                    throw new NullPointerException(A00(0, 14, 73));
                }
            } : q7;
            this.A0F = q7;
            this.A0E = interfaceC1929dX != null ? new Q7(q7, interfaceC1929dX) { // from class: com.facebook.ads.redexgen.X.4p
                public static String[] A04 = {"IPBH", "VvgngosO5gvuBIyUBvfbio5RuJ0XAOwT", "9kAHgyP8b1o6aK86O9Jn91", "PbAc3uI2imQeeK05P6OUKl8qIXg", "Tppked33KysbYBUOXTyiG15VLrK", "Y3cR4o4oDjLQNG9WKbCbk1Q7F0", "cSX5hyyTZ5Xwx0Yw98nS423yfpfc3qoP", "47CrhAEfeBd2TTkvETVdoqJNPhVu9FaS"};
                public long A00;
                public boolean A01;
                public final InterfaceC1929dX A02;
                public final Q7 A03;

                {
                    this.A03 = (Q7) AbstractC2011es.A01(q7);
                    this.A02 = (InterfaceC1929dX) AbstractC2011es.A01(interfaceC1929dX);
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
                public final long AFq(C1941dj c1941dj) throws IOException {
                    this.A00 = this.A03.AFq(c1941dj);
                    if (this.A00 == 0) {
                        return 0L;
                    }
                    if (c1941dj.A03 == -1 && this.A00 != -1) {
                        long j = this.A00;
                        if (A04[2].length() != 22) {
                            throw new RuntimeException();
                        }
                        String[] strArr = A04;
                        strArr[5] = "Z0G4eYFPaVif8IsJJbYUaDzhBY";
                        strArr[0] = "z9ex";
                        c1941dj = c1941dj.A05(0L, j);
                    }
                    this.A01 = true;
                    this.A02.AFs(c1941dj);
                    return this.A00;
                }

                @Override // com.facebook.ads.redexgen.core.Q7
                public final void close() throws IOException {
                    try {
                        this.A03.close();
                        if (this.A01) {
                            this.A01 = false;
                            String[] strArr = A04;
                            if (strArr[4].length() != strArr[3].length()) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A04;
                            strArr2[6] = "BWoPRcZ7tIy7LNiUifturaOqDshrHKKS";
                            strArr2[7] = "FltKfF5q4beKiOJfMmhdW2azzmF4o8yz";
                            this.A02.close();
                        }
                    } catch (Throwable th) {
                        if (this.A01) {
                            this.A01 = false;
                            this.A02.close();
                        }
                        throw th;
                    }
                }

                @Override // com.facebook.ads.redexgen.core.O9
                public final int read(byte[] bArr, int i3, int i4) throws IOException {
                    if (this.A00 == 0) {
                        return -1;
                    }
                    int read = this.A03.read(bArr, i3, i4);
                    if (read > 0) {
                        this.A02.write(bArr, i3, read);
                        if (this.A00 != -1) {
                            this.A00 -= read;
                        }
                    }
                    return read;
                }
            } : null;
        } else {
            this.A0F = AnonymousClass59.A03;
            this.A0E = null;
        }
        this.A0H = interfaceC1987eU;
    }

    private int A00(C1941dj c1941dj) {
        if (this.A0L && this.A0C) {
            return 0;
        }
        if (this.A0K && c1941dj.A03 == -1) {
            return 1;
        }
        return -1;
    }

    public static Uri A01(InterfaceC1984eR interfaceC1984eR, String str, Uri redirectedUri) {
        Uri redirectedUri2 = AbstractC2004el.A01(interfaceC1984eR.A7I(str));
        return redirectedUri2 != null ? redirectedUri2 : redirectedUri;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void A03() throws IOException {
        if (this.A06 == null) {
            return;
        }
        try {
            this.A06.close();
        } finally {
            this.A07 = null;
            this.A06 = null;
            if (this.A0A != null) {
                this.A0G.AGo(this.A0A);
                this.A0A = null;
            }
        }
    }

    private void A04() {
        if (0 != 0 && this.A04 > 0) {
            this.A0G.A70();
            throw new NullPointerException(A02(FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, 17, 4));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0160, code lost:
    
        if (r3 != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0162, code lost:
    
        r21.A0A = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x01cc, code lost:
    
        if (r3 != false) goto L58;
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("Parameter isInitSegment and all ot is usages. Setting mFbDataSpecExtension in nextDataSpec. Call to maybeUpdateRedirectedUriMetadata at the end")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A06(com.facebook.ads.redexgen.core.C1941dj r22, boolean r23, boolean r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C09394e.A06(com.facebook.ads.redexgen.X.dj, boolean, boolean):void");
    }

    private void A07(String str) throws IOException {
        this.A00 = 0L;
        if (A0D()) {
            C2006en c2006en = new C2006en();
            C2006en.A00(c2006en, this.A03);
            this.A0G.A44(str, c2006en);
        }
    }

    @MetaExoPlayerCustomization
    private void A08(String str, Uri uri) {
        if (!A0D()) {
            return;
        }
        C2006en c2006en = new C2006en();
        if (!uri.equals(this.A05)) {
            C2006en.A01(c2006en, this.A05);
        } else {
            C2006en.A01(c2006en, null);
        }
        try {
            this.A0G.A44(str, c2006en);
        } catch (C1981eO e) {
            String message = A02(15, 88, 5);
            Log.w(A02(0, 15, 23), message, e);
        }
    }

    private void A09(Throwable th) {
        if (A0B() || (th instanceof C1981eO)) {
            this.A0C = true;
        }
    }

    private boolean A0A() {
        return this.A06 == this.A0F;
    }

    private boolean A0B() {
        return this.A06 == this.A0D;
    }

    private boolean A0C() {
        return !A0B();
    }

    private boolean A0D() {
        return this.A06 == this.A0E;
    }

    public final InterfaceC1984eR A0E() {
        return this.A0G;
    }

    public final InterfaceC1993ea A0F() {
        return this.A0I;
    }

    @Override // com.facebook.ads.redexgen.core.Q7
    public final void A3t(InterfaceC1980eN interfaceC1980eN) {
        AbstractC2011es.A01(interfaceC1980eN);
        this.A0D.A3t(interfaceC1980eN);
        this.A0F.A3t(interfaceC1980eN);
    }

    @Override // com.facebook.ads.redexgen.core.Q7
    public final Map<String, List<String>> A8j() {
        if (A0C()) {
            Q7 q7 = this.A0F;
            if (A0N[6].length() != 26) {
                throw new RuntimeException();
            }
            A0N[4] = "2cmD";
            return q7.A8j();
        }
        return Collections.emptyMap();
    }

    @Override // com.facebook.ads.redexgen.core.Q7
    public final Uri A9F() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.core.Q7
    public final void close() throws IOException {
        this.A08 = null;
        this.A05 = null;
        this.A03 = 0L;
        A04();
        try {
            A03();
        } catch (Throwable e) {
            A09(e);
            throw e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ad, code lost:
    
        if (r0 == (-1)) goto L39;
     */
    @Override // com.facebook.ads.redexgen.core.O9
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r18, int r19, int r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C09394e.read(byte[], int, int):int");
    }
}
