package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.0V, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C0V extends AnonymousClass10 implements PD {
    public static byte[] A0K;
    public static String[] A0L = {"ny53PTW1IsCIZ3DiXpxVoy2OGjDVNtvg", "x3Bg", "TF", "Z18MDGIuZ", "CLtjM6Bnt", "gZ4biLrifjy8Dh7ee7UfMIwOBD0EnNqu", "9CDMd8lzBVhcXdpKHhmzaEFyjHNSA5Q8", "7D1ov"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A05;

    @MetaExoPlayerCustomization
    public AudioManager A06;
    public MediaFormat A07;
    public ZM A08;
    public InterfaceC1469Qa A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public final Context A0F;
    public final C1508Ro A0G;
    public final boolean A0H;
    public final boolean A0I;
    public final InterfaceC1519Rz A0J;

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 65);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0K = new byte[]{58, 18, 19, 30, 22, 52, 24, 19, 18, 20, 54, 2, 19, 30, 24, 37, 18, 25, 19, 18, 5, 18, 5, 62, 60, 41, 95, 34, 52, 50, 95, 16, 16, 18, 95, 21, 20, 18, 45, 47, 58, 76, 5, 13, 13, 5, 14, 7, 76, 16, 3, 21, 76, 6, 7, 1, 13, 6, 7, 16, 1, 1, 3, 77, 4, 18, 3, 77, 5, 6, 6, 5, 3, 20, 77, 20, 25, 16, 5, 112, 112, 114, 60, 101, 112, 99, 118, 116, 101, 60, 99, 116, 119, 60, 125, 116, 103, 116, 125, 48, 36, 53, 56, 62, 94, 74, 91, 86, 80, 16, 77, 94, 72, 79, 68, 77, 66, 66, 73, 64, 1, 79, 67, 89, 66, 88, 35, 46, 57, 36, 39, 63, 46, 94, 83, 68, 89, 71, 90, 66, 83, 40, 36, 61, 104, 44, 43, 53, 48, 49, 104, 54, 44, 63, 32, 37, 33, 37, 45, 109, 112, 52, 97, 46, 52, 48, 46, 52, 50, 70, 68, 95, 89, 68, 95, 66, 79, 34, 48, 60, 33, 61, 52, 124, 35, 48, 37, 52, 79, 93, 81, 79, 73, 82, 91, 118, 105, 126, 99, 106, 96, 120, 105};
    }

    static {
        A09();
    }

    public C0V(Context context, C1383Mg c1383Mg, MediaCodecRendererMetaParameters mediaCodecRendererMetaParameters, ZS zs, TO to, boolean z, boolean z2, boolean z3, Handler handler, InterfaceC1509Rp interfaceC1509Rp, RN rn, RV... rvArr) {
        this(context, c1383Mg, mediaCodecRendererMetaParameters, zs, to, z, z2, z3, handler, interfaceC1509Rp, new XM(rn, rvArr));
    }

    public C0V(Context context, C1383Mg c1383Mg, MediaCodecRendererMetaParameters mediaCodecRendererMetaParameters, ZS zs, TO to, boolean z, boolean z2, boolean z3, Handler handler, InterfaceC1509Rp interfaceC1509Rp, InterfaceC1519Rz interfaceC1519Rz) {
        super(1, c1383Mg, mediaCodecRendererMetaParameters, zs, to, z, false, 0, 0);
        this.A01 = 0;
        this.A02 = 0;
        this.A05 = 0L;
        this.A0F = context.getApplicationContext();
        this.A0J = interfaceC1519Rz;
        this.A0H = z2;
        this.A0I = z3;
        this.A0G = new C1508Ro(handler, interfaceC1509Rp);
        interfaceC1519Rz.AIb(new XG(this));
        interfaceC1519Rz.AIW(c1383Mg.A0B);
    }

    @MetaExoPlayerCustomization("Added in D36293647 for DRC")
    private int A00() {
        int i = this.A11.A07;
        if (this.A11.A0D) {
            int i2 = this.A11.A02;
            int i3 = this.A11.A03;
            String[] strArr = A0L;
            String str = strArr[2];
            String str2 = strArr[7];
            int length = str.length();
            int xHEAACEffectType = str2.length();
            if (length != xHEAACEffectType) {
                String[] strArr2 = A0L;
                strArr2[5] = "w7j9MOjZih5C6Q3ro0cf7Apy33T5GWMs";
                strArr2[6] = "zR8tNafmogO2J3qMPAhJAiMTJMir5YNQ";
                int A00 = ContextAwareXHEAACDRCTypeUtil.A00(i2, i3);
                if (this.A11.A0E) {
                    AudioManager audioManager = this.A06;
                    String[] strArr3 = A0L;
                    String str3 = strArr3[5];
                    String str4 = strArr3[6];
                    int charAt = str3.charAt(16);
                    int xHEAACEffectType2 = str4.charAt(16);
                    if (charAt == xHEAACEffectType2) {
                        throw new RuntimeException();
                    }
                    String[] strArr4 = A0L;
                    strArr4[5] = "QWOsPQ9mk5cpxQayyci1WtukI0C3JnRL";
                    strArr4[6] = "meGrPLaBwLl10L2kp1Xzhd02rgbcoCwf";
                    if (audioManager == null) {
                        Context context = this.A0F;
                        String[] strArr5 = A0L;
                        String str5 = strArr5[3];
                        String str6 = strArr5[4];
                        int length2 = str5.length();
                        int xHEAACEffectType3 = str6.length();
                        if (length2 == xHEAACEffectType3) {
                            String[] strArr6 = A0L;
                            strArr6[5] = "nxKRVCe6n1QeWkUFQr3O22SeJ2UrRm4w";
                            strArr6[6] = "MUmkhwzTWlAEBhvi3gO6sbbVsI6qpGWn";
                            this.A06 = (AudioManager) context.getSystemService(A07(99, 5, 16));
                        }
                    }
                    int DRCTypeFromHeadset = ContextAwareXHEAACDRCTypeUtil.A01(this.A06);
                    if (DRCTypeFromHeadset != 3) {
                        return DRCTypeFromHeadset;
                    }
                    return A00;
                }
                return A00;
            }
            throw new RuntimeException();
        }
        return i;
    }

    public static int A01(ZM zm) {
        if (A07(FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 9, 126).equals(zm.A0W)) {
            return zm.A0C;
        }
        return 2;
    }

    private int A02(Z2 z2, ZM zm) {
        if (A07(38, 22, 35).equals(z2.A03) && AbstractC2094gE.A02 < 24 && (AbstractC2094gE.A02 != 23 || !AbstractC2094gE.A18(this.A0F))) {
            return -1;
        }
        return zm.A0B;
    }

    private final int A03(Z2 z2, ZM zm, ZM[] zmArr) {
        int maxInputSize = A02(z2, zm);
        return maxInputSize;
    }

    private final MediaFormat A04(ZM zm, String str, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A07(155, 4, 9), str);
        mediaFormat.setInteger(A07(113, 13, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), zm.A06);
        mediaFormat.setInteger(A07(177, 11, 16), zm.A0G);
        AbstractC2057fd.A06(mediaFormat, zm.A0X);
        AbstractC2057fd.A04(mediaFormat, A07(141, 14, 4), i);
        if (AbstractC2094gE.A02 >= 23) {
            mediaFormat.setInteger(A07(169, 8, 119), 0);
        }
        if (zm.A0R != null && zm.A0R.equals(A07(159, 10, 65)) && this.A11.A0F) {
            mediaFormat.setInteger(A07(60, 19, 33), A00());
            mediaFormat.setInteger(A07(79, 20, 80), this.A11.A08);
        }
        return mediaFormat;
    }

    public static /* synthetic */ InterfaceC1469Qa A05(C0V c0v) {
        return null;
    }

    private void A08() {
        long A7V = this.A0J.A7V(AAE());
        if (A7V != Long.MIN_VALUE) {
            if (!this.A0B) {
                long newCurrentPositionUs = this.A04;
                A7V = Math.max(newCurrentPositionUs, A7V);
            }
            this.A04 = A7V;
            this.A0B = false;
        }
    }

    private boolean A0A(ZM zm) {
        String str = zm.A0W;
        String mimeType = A07(FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 9, 126);
        if (mimeType.equals(str)) {
            return false;
        }
        return this.A0J.AJS(zm);
    }

    public static boolean A0B(String str) {
        if (AbstractC2094gE.A02 < 24 && A07(23, 15, 48).equals(str)) {
            if (A07(188, 7, 125).equals(AbstractC2094gE.A05)) {
                String str2 = AbstractC2094gE.A03;
                if (A0L[0].charAt(19) != 'V') {
                    throw new RuntimeException();
                }
                String[] strArr = A0L;
                strArr[5] = "Ja8X7lPIgQ719WOyS99SHG6mtluHwCw7";
                strArr[6] = "WL93SWX2ueh3mCL2llUu3t1G0xsIbb1j";
                if (str2.startsWith(A07(195, 8, 77)) || AbstractC2094gE.A03.startsWith(A07(126, 7, 10)) || AbstractC2094gE.A03.startsWith(A07(133, 8, 119))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1X() {
        super.A1X();
        this.A0J.AG8();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1Y() {
        A08();
        this.A0J.pause();
        super.A1Y();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1Z() {
        try {
            this.A0J.flush();
            try {
                super.A1Z();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.A1Z();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1a(long j, boolean z) throws EK {
        super.A1a(j, z);
        if (this.A0D) {
            this.A0J.A6J();
        } else {
            this.A0J.flush();
        }
        this.A04 = j;
        this.A0A = true;
        this.A0B = true;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1b(boolean z, boolean z2) throws EK {
        super.A1b(z, z2);
        this.A0G.A06(this.A0i);
        if (A1V().A00) {
            this.A0J.A6C();
        } else {
            this.A0J.A5p();
        }
        this.A0J.AIm(A1W());
        if (A0L[1].length() == 10) {
            throw new RuntimeException();
        }
        A0L[1] = "yvKVkLQNXZhZ3z5ZR";
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final int A1g(InterfaceC1691Yz interfaceC1691Yz, Z2 z2, ZM zm, ZM zm2) {
        if (this.A11.A0N && A02(z2, zm2) <= this.A00 && z2.A0U(zm, zm2, true) && zm.A08 == 0 && zm.A09 == 0 && zm2.A08 == 0 && zm2.A09 == 0) {
            return 1;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0084, code lost:
    
        if (r2.AJU(r1, r13.A0C) != false) goto L29;
     */
    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int A1h(com.facebook.ads.redexgen.core.ZS r11, com.facebook.ads.redexgen.core.TO r12, com.facebook.ads.redexgen.core.ZM r13) throws com.facebook.ads.redexgen.core.ZW {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C0V.A1h(com.facebook.ads.redexgen.X.ZS, com.facebook.ads.redexgen.X.TO, com.facebook.ads.redexgen.X.ZM):int");
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final List<Z2> A1l(ZS zs, ZM zm, boolean z) throws ZW {
        Z2 A0I;
        String mimeType = zm.A0W;
        if (mimeType == null) {
            return Collections.emptyList();
        }
        if (A0A(zm) && (A0I = ZZ.A0I()) != null) {
            return Collections.singletonList(A0I);
        }
        return Collections.unmodifiableList(zs.A7e(zm.A0W, z, false));
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1o() throws EK {
        try {
            this.A0J.AGA();
        } catch (C1518Ry e) {
            throw A1T(e, e.A01, e.A02, 5002);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1s(ZM zm) throws EK {
        super.A1s(zm);
        this.A08 = zm;
        this.A0G.A09(this.A08, null);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1u(C1637Ww c1637Ww) {
        if (this.A0A && !c1637Ww.A04()) {
            if (Math.abs(c1637Ww.A01 - this.A04) > 500000) {
                this.A04 = c1637Ww.A01;
            }
            this.A0A = false;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:12:0x0050 */
    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A1v(com.facebook.ads.redexgen.core.InterfaceC1691Yz r9, android.media.MediaFormat r10) throws com.facebook.ads.redexgen.core.EK {
        /*
            r8 = this;
            android.media.MediaFormat r0 = r8.A07
            if (r0 == 0) goto L57
            android.media.MediaFormat r3 = r8.A07
            r2 = 155(0x9b, float:2.17E-43)
            r1 = 4
            r0 = 9
            java.lang.String r0 = A07(r2, r1, r0)
            java.lang.String r0 = r3.getString(r0)
            int r7 = com.facebook.ads.redexgen.core.Q2.A00(r0)
            android.media.MediaFormat r4 = r8.A07
        L19:
            r2 = 113(0x71, float:1.58E-43)
            r1 = 13
            r0 = 109(0x6d, float:1.53E-43)
            java.lang.String r6 = A07(r2, r1, r0)
            int r3 = r4.getInteger(r6)
            r2 = 177(0xb1, float:2.48E-43)
            r1 = 11
            r0 = 16
            java.lang.String r5 = A07(r2, r1, r0)
            int r0 = r4.getInteger(r5)
            int r0 = r0 * r3
            r8.A03 = r0
            boolean r0 = r8.A0C
            if (r0 == 0) goto L5f
            r1 = 6
            if (r3 != r1) goto L5f
            com.facebook.ads.redexgen.X.ZM r0 = r8.A08
            int r0 = r0.A06
            if (r0 >= r1) goto L5f
            com.facebook.ads.redexgen.X.ZM r0 = r8.A08
            int r0 = r0.A06
            int[] r3 = new int[r0]
            r1 = 0
        L4c:
            com.facebook.ads.redexgen.X.ZM r0 = r8.A08
            int r0 = r0.A06
            if (r1 >= r0) goto L60
            r3[r1] = r1
            int r1 = r1 + 1
            goto L4c
        L57:
            com.facebook.ads.redexgen.X.ZM r0 = r8.A08
            int r7 = A01(r0)
            r4 = r10
            goto L19
        L5f:
            r3 = 0
        L60:
            com.facebook.ads.redexgen.X.P5 r4 = new com.facebook.ads.redexgen.X.P5
            r4.<init>()
            r2 = 104(0x68, float:1.46E-43)
            r1 = 9
            r0 = 126(0x7e, float:1.77E-43)
            java.lang.String r0 = A07(r2, r1, r0)
            com.facebook.ads.redexgen.X.P5 r0 = r4.A11(r0)
            com.facebook.ads.redexgen.X.P5 r1 = r0.A0i(r7)
            int r0 = r10.getInteger(r6)
            com.facebook.ads.redexgen.X.P5 r1 = r1.A0b(r0)
            int r0 = r10.getInteger(r5)
            com.facebook.ads.redexgen.X.P5 r0 = r1.A0m(r0)
            com.facebook.ads.redexgen.X.ZM r2 = r0.A14()
            com.facebook.ads.redexgen.X.Rz r1 = r8.A0J     // Catch: com.facebook.ads.redexgen.core.C1512Rs -> L92
            r0 = 0
            r1.A4z(r2, r0, r3)     // Catch: com.facebook.ads.redexgen.core.C1512Rs -> L92
            return
        L92:
            r2 = move-exception
            com.facebook.ads.redexgen.X.ZM r1 = r2.A00
            r0 = 5001(0x1389, float:7.008E-42)
            com.facebook.ads.redexgen.X.EK r0 = r8.A1S(r2, r1, r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C0V.A1v(com.facebook.ads.redexgen.X.Yz, android.media.MediaFormat):void");
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1w(Z2 z2, InterfaceC1691Yz interfaceC1691Yz, ZM zm, MediaCrypto mediaCrypto) {
        this.A00 = A03(z2, zm, A1e());
        this.A0C = A0B(z2.A03);
        String str = z2.A02;
        String A07 = A07(FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 9, 126);
        this.A0E = A07.equals(str) && !A07.equals(zm.A0W);
        MediaFormat A04 = A04(zm, z2.A01, this.A00);
        interfaceC1691Yz.A4y(A04, null, mediaCrypto, 0, null);
        if (this.A0E) {
            this.A07 = A04;
            this.A07.setString(A07(155, 4, 9), zm.A0W);
            return;
        }
        String[] strArr = A0L;
        if (strArr[2].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0L;
        strArr2[5] = "gZFfaLOsUERu0i8cGXvckXpWY5Utglis";
        strArr2[6] = "xJNbTRfoiGyTPD2CHclvMe0TgvhmQQCR";
        this.A07 = null;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    @MetaExoPlayerCustomization("D45988204: [FBLite][Video] Add Codec Hooks for Logging")
    public final void A1x(String str) {
        this.A0G.A0F(str);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1y(String str, long j, long j2) {
        this.A0G.A0G(str, j, j2);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    @MetaExoPlayerCustomization("Added in D6142814")
    public final boolean A22() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final boolean A23(long j, long j2, InterfaceC1691Yz interfaceC1691Yz, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2) throws EK {
        if (this.A0E && (i2 & 2) != 0) {
            interfaceC1691Yz.AGq(i, false);
            return true;
        }
        if (z) {
            interfaceC1691Yz.AGq(i, false);
            this.A0i.A0B++;
            this.A0J.A9X();
            return true;
        }
        if (this.A0I && A01(this.A08) == 2 && i2 == 0 && this.A03 > 0 && byteBuffer.limit() - byteBuffer.position() >= 12) {
            int position = byteBuffer.position();
            int limit = byteBuffer.limit();
            byteBuffer.position(10);
            short s = byteBuffer.getShort();
            byteBuffer.position(position);
            byteBuffer.limit(limit);
            int i3 = this.A01;
            int limit2 = byteBuffer.limit();
            int originalPosition = byteBuffer.position();
            this.A01 = i3 + (limit2 - originalPosition);
            int originalPosition2 = this.A02;
            this.A02 = originalPosition2 + 1;
            this.A05 += Math.abs((int) s);
            int i4 = this.A01;
            int originalPosition3 = this.A03;
            if (i4 >= originalPosition3 * 2) {
                C1508Ro c1508Ro = this.A0G;
                long j4 = this.A05;
                int originalPosition4 = this.A02;
                c1508Ro.A00((int) (j4 / originalPosition4));
                this.A01 = 0;
                this.A02 = 0;
                this.A05 = 0L;
            }
        }
        if (this.A0H) {
            int limit3 = byteBuffer.limit();
            int originalPosition5 = byteBuffer.position();
            if (limit3 > originalPosition5) {
                int position2 = byteBuffer.position();
                int limit4 = byteBuffer.limit();
                int originalPosition6 = limit4 - position2;
                ByteBuffer allocate = ByteBuffer.allocate(originalPosition6);
                allocate.put(byteBuffer);
                allocate.flip();
                byteBuffer.position(position2);
                byteBuffer.limit(limit4);
                this.A0G.A0K(allocate.array(), j3 / 1000);
            }
        }
        try {
            if (!this.A0J.A9U(byteBuffer, j3, 1)) {
                return false;
            }
            interfaceC1691Yz.AGq(i, false);
            this.A0i.A09++;
            return true;
        } catch (C1513Rt e) {
            throw A1T(e, this.A08, e.A02, 5001);
        } catch (C1518Ry e2) {
            throw A1T(e2, this.A0j, e2.A02, 5002);
        }
    }

    public final void A26() {
        this.A0B = true;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1191Et, com.facebook.ads.redexgen.core.InterfaceC1682Yq
    public final PD A8J() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.core.PD
    public final C1687Yv A8c() {
        return this.A0J.A8c();
    }

    @Override // com.facebook.ads.redexgen.core.PD
    public final long A8f() {
        if (A90() == 2) {
            A08();
        }
        long j = this.A04;
        String[] strArr = A0L;
        if (strArr[3].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0L;
        strArr2[2] = "qG";
        strArr2[7] = "wmfqP";
        return j;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1191Et, com.facebook.ads.redexgen.core.QS
    public final void A9Y(int i, Object obj) throws EK {
        switch (i) {
            case 2:
                this.A0J.setVolume(((Float) obj).floatValue());
                return;
            case 3:
                C1703Zm c1703Zm = (C1703Zm) obj;
                if (A0L[1].length() == 10) {
                    throw new RuntimeException();
                }
                String[] strArr = A0L;
                strArr[5] = "CZ4wjKRnqD7opuv8WqT2cVOXIH7mEh9Z";
                strArr[6] = "fCOytc0KevpGl3ysj2Q787tNWhoFoaGa";
                this.A0J.AIM(c1703Zm);
                return;
            case 4:
            case 5:
            case 7:
            case 8:
            default:
                super.A9Y(i, obj);
                return;
            case 6:
                NY ny = (NY) obj;
                InterfaceC1519Rz interfaceC1519Rz = this.A0J;
                String[] strArr2 = A0L;
                if (strArr2[3].length() != strArr2[4].length()) {
                    interfaceC1519Rz.AIO(ny);
                    return;
                } else {
                    A0L[0] = "TPqsn1TvSfs1dbuRYVXV1uVXwUQc5bUD";
                    interfaceC1519Rz.AIO(ny);
                    return;
                }
            case 9:
                this.A0J.AIu(((Boolean) obj).booleanValue());
                return;
            case 10:
                this.A0J.AIN(((Integer) obj).intValue());
                return;
            case 11:
                this.A09 = null;
                return;
            case 12:
                if (AbstractC2094gE.A02 < 23) {
                    return;
                }
                InterfaceC1519Rz interfaceC1519Rz2 = this.A0J;
                if (A0L[1].length() != 10) {
                    String[] strArr3 = A0L;
                    strArr3[2] = "Z4";
                    strArr3[7] = "ThLkK";
                    SS.A00(interfaceC1519Rz2, obj);
                    return;
                }
                throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.InterfaceC1682Yq
    public final boolean AAE() {
        return super.AAE() && this.A0J.AAE();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.InterfaceC1682Yq
    public final boolean AAT() {
        return this.A0J.A9e() || super.AAT();
    }

    @Override // com.facebook.ads.redexgen.core.PD
    public final void AIj(C1687Yv c1687Yv) {
        this.A0J.AIj(c1687Yv);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1682Yq, com.facebook.ads.redexgen.core.InterfaceC1477Qi
    public final String getName() {
        return A07(0, 23, 54);
    }
}
