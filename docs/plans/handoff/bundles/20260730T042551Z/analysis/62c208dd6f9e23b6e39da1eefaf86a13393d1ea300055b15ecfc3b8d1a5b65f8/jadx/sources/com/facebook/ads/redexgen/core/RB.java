package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class RB implements InterfaceC1787bF {
    public static byte[] A03;
    public static String[] A04 = {"51zoTUQSZUkAm9N", "UmDZDEYxiFNidmc", "juFDCpz3v21RfDAwdfYhV9A2wKaxsmcO", "MhCn0J4SV0NDUAwG4DVpMSgSbJKOqp8K", "mTgNIz0SrBR0YJWzZDcYYsasjGQnrGPZ", "gUk4H2YjEaz2W3r8htX3i3SxyPgmNb3p", "gIYq6lStA20yFLF", "d0bSd06rXARdF1mViNDpEI0PQMof55jj"};
    public UK A00;
    public WJ A01;
    public final UO A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A04[5].charAt(2) == 'Y') {
                throw new RuntimeException();
            }
            A04[1] = "JhJbGfNBWj2SchhK4njS";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 86);
            i4++;
        }
    }

    public static void A01() {
        A03 = new byte[]{106, 99, 32, 44, 54, 47, 39, 99, 49, 38, 34, 39, 99, 55, 43, 38, 99, 48, 55, 49, 38, 34, 46, 109, 27, 58, 59, 48, 117, 58, 51, 117, 33, 61, 48, 117, 52, 35, 52, 60, 57, 52, 55, 57, 48, 117, 48, 45, 33, 39, 52, 54, 33, 58, 39, 38, 117, 125};
    }

    static {
        A01();
    }

    public RB(UO uo) {
        this.A02 = uo;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1787bF
    @MetaExoPlayerCustomization("No op, we don't include mp3 extractor due to apk size")
    public final void A5o() {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1787bF
    public final long A7Q() {
        if (this.A01 != null) {
            return this.A01.A8d();
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0062, code lost:
    
        if (r10.A8d() != r20) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007b, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006f, code lost:
    
        if (r10.A8d() != r20) goto L29;
     */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1787bF
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AA2(@com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization(" To be replaced with DataReader after upstream is updated") com.facebook.ads.redexgen.core.Q7 r17, android.net.Uri r18, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r19, long r20, long r22, com.facebook.ads.redexgen.core.UL r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.RB.AA2(com.facebook.ads.redexgen.X.Q7, android.net.Uri, java.util.Map, long, long, com.facebook.ads.redexgen.X.UL):void");
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1787bF
    public final int AGU(C1575Ug c1575Ug) throws IOException {
        return ((UK) AbstractC2011es.A01(this.A00)).AGT((WJ) AbstractC2011es.A01(this.A01), c1575Ug);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1787bF
    public final void AGj() {
        if (this.A00 != null) {
            this.A00.AGj();
            this.A00 = null;
        }
        this.A01 = null;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1787bF
    public final void AIC(long j, long j2) {
        ((UK) AbstractC2011es.A01(this.A00)).AIC(j, j2);
    }
}
