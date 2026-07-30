package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.facebook.ads.AdError;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.Timeline;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: assets/audience_network.dex */
public final class E8 implements Handler.Callback, R8, InterfaceC1911dF, InterfaceC1773ay, OH, QR {
    public static byte[] A0w;
    public static String[] A0x = {"FNv1yg7gplSOMBReEHuDl", "qwSibVPXYhaaXxWnXBbumtSIL5oKuuC", "rhLD3EGe7POXN9aLHIDNMYdZDB4f8iqw", "bjU0csgypDx1p8Ai8tljHkRuVIlZh2eB", "cSwWDHV", "j7z3LKu66x9RSVpdS", "7XnkBgbzYVwaOjOpiFJCZYIuJhfmv6KE", "IctjxhVXeYDq8Szs7awUIix8ZBDi41tz"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A06;
    public C1428Oh A08;
    public C1432Ol A09;
    public Q9 A0B;

    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    public InterfaceC1682Yq A0C;
    public C1482Qn A0D;
    public InterfaceC1774az A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0J;
    public boolean A0L;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public InterfaceC1682Yq[] A0V;
    public final long A0X;
    public final long A0Y;
    public final Handler A0Z;
    public final HandlerThread A0a;
    public final C1697Zf A0b;
    public final C1431Ok A0c;
    public final PC A0d;
    public final C1678Ym A0f;
    public final C1673Yh A0g;
    public final C1671Yf A0h;
    public final AbstractC1912dG A0i;
    public final C1913dH A0j;
    public final InterfaceC1924dS A0k;
    public final InterfaceC2018ez A0l;
    public final InterfaceC2046fS A0m;
    public final C09374c A0n;
    public final ArrayList<C1430Oj> A0o;
    public final boolean A0p;
    public final boolean A0q;
    public final boolean A0r;
    public final boolean A0s;
    public final boolean A0t;
    public final InterfaceC1682Yq[] A0u;
    public final InterfaceC1477Qi[] A0v;
    public long A05 = -9223372036854775807L;

    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    public MI A07 = MI.A09;

    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public boolean A0I = false;

    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public Q4 A0A = null;

    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public boolean A0K = false;
    public final C1450Pf A0e = new C1450Pf();

    @MetaExoPlayerCustomization
    public final int A0W = A00();

    public static String A0C(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0w, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(copyOfRange);
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0242, code lost:
    
        if (r3 == 2) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0244, code lost:
    
        r5 = r24.A0V;
        r4 = r5.length;
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0248, code lost:
    
        if (r3 >= r4) goto L232;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x024a, code lost:
    
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x024e, code lost:
    
        r5[r3].ABp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x029a, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0252, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x025d, code lost:
    
        if (r2.getClass().equals(com.facebook.ads.redexgen.core.C1456Pl.class) != false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0261, code lost:
    
        if (r24.A0M != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x026c, code lost:
    
        if (r24.A05 == (-9223372036854775807L)) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x026e, code lost:
    
        android.util.Log.w(r10, r12 + r2.getMessage());
        r24.A05 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x028e, code lost:
    
        if (r24.A0p != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0290, code lost:
    
        r24.A0Z.obtainMessage(4, r2).sendToTarget();
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02a8, code lost:
    
        if ((java.lang.System.currentTimeMillis() - r24.A05) <= r24.A0Y) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x03bf, code lost:
    
        throw r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x03c0, code lost:
    
        throw r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x03c1, code lost:
    
        throw r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0393, code lost:
    
        if (r24.A0O == false) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0395, code lost:
    
        r4 = r24.A0B.A00;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x03a6, code lost:
    
        if (com.facebook.ads.redexgen.core.E8.A0x[6].charAt(6) == 'b') goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x03c2, code lost:
    
        r2 = com.facebook.ads.redexgen.core.E8.A0x;
        r2[0] = "inoOD3jM3t7GeqK01LmWm";
        r2[1] = "UJ2NUFgiIfOxtHeW5FpUW4V8ft3MVTO";
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x03ce, code lost:
    
        if (r4 == 3) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x03d7, code lost:
    
        A0Z(r16, r24.A0W);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x03df, code lost:
    
        if (r21 != false) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x03e1, code lost:
    
        r24.A05 = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x03e8, code lost:
    
        com.facebook.ads.redexgen.core.AbstractC2085g5.A00();
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x03eb, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x03d5, code lost:
    
        if (r24.A0B.A00 != 2) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x03ef, code lost:
    
        if (r24.A0V.length == 0) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x03f1, code lost:
    
        r3 = r24.A0B.A00;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0402, code lost:
    
        if (com.facebook.ads.redexgen.core.E8.A0x[3].charAt(28) == 'h') goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0409, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x040a, code lost:
    
        com.facebook.ads.redexgen.core.E8.A0x[6] = "yfPyhpbBm2QxtAH92DRfvP5aDUYCoSIh";
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0412, code lost:
    
        if (r3 == 4) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0414, code lost:
    
        A0Z(r16, 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x041c, code lost:
    
        r24.A0m.AHZ(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x02b2, code lost:
    
        if (r3 == 2) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0334, code lost:
    
        if (r4.A00 == 3) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0339, code lost:
    
        if (r24.A0V.length != 0) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x033f, code lost:
    
        if (A14() == false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x0351, code lost:
    
        r24.A0Q = r24.A0O;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0357, code lost:
    
        if (r24.A0C == null) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0360, code lost:
    
        if (r24.A0C.A9D() != 1) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0362, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0363, code lost:
    
        A0V(2, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0372, code lost:
    
        if (com.facebook.ads.redexgen.core.E8.A0x[6].charAt(6) == 'b') goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x0374, code lost:
    
        com.facebook.ads.redexgen.core.E8.A0x[6] = "5fV7fVbpNj0r5L9rptEqPdnsVywRIPuN";
        A0N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0380, code lost:
    
        r2 = com.facebook.ads.redexgen.core.E8.A0x;
        r2[2] = "jsFJeWuky7dgs5r2My3velnqDBqnJsPM";
        r2[7] = "8xiW1JAWmv2yYMgwlbL3VIZQBqcCiljc";
        A0N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x034f, code lost:
    
        if (r0 != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x034c, code lost:
    
        if (r4.A00 == 3) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c3, code lost:
    
        if (r1 != (-1)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d6, code lost:
    
        if (com.facebook.ads.redexgen.core.O5.A01(r24.A0B.A0C - r24.A0B.A02) <= 1000) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x01ab, code lost:
    
        if (r1 != (-1)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0111, code lost:
    
        if (r4 == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0117, code lost:
    
        if (A16(r7) == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0187, code lost:
    
        r20 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0196, code lost:
    
        if (r4 == false) goto L47;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x016f A[ADDED_TO_REGION] */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0E() throws com.facebook.ads.redexgen.core.EK, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1077
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A0E():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x01d2, code lost:
    
        if (r10 != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01d4, code lost:
    
        r8 = r1.equals(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01e5, code lost:
    
        if (com.facebook.ads.redexgen.core.E8.A0x[3].charAt(28) == 'h') goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e7, code lost:
    
        r7 = com.facebook.ads.redexgen.core.E8.A0x;
        r7[0] = "a1phYEZvOSNX56JR2QOEL";
        r7[1] = "Gb2w3Dh3pB36ok4QAfXUO6zSVBkHXA4";
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01f3, code lost:
    
        if (r8 == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01f5, code lost:
    
        if (r9 != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01f7, code lost:
    
        r14 = A19(r11);
        android.util.Log.e(A0C(0, 21, 8), A0C(392, 13, 87));
        r13.AHg(r14, r5.A09[r3], r5.A0H(r20.A0J), r5.A0B());
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0224, code lost:
    
        com.facebook.ads.redexgen.core.E8.A0x[6] = "cYLXTpbp9L44JxkLwiaX0284An1XewZA";
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x022b, code lost:
    
        if (r8 == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x023a, code lost:
    
        r13.AIT();
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0234, code lost:
    
        if (r10 != false) goto L96;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0O() throws com.facebook.ads.redexgen.core.EK, java.io.IOException {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A0O():void");
    }

    public static void A0Q() {
        A0w = new byte[]{7, 58, 45, 18, 46, 35, 59, 39, 48, 11, 47, 50, 46, 11, 44, 54, 39, 48, 44, 35, 46, 61, 0, 23, 40, 20, 25, 1, 29, 10, 49, 21, 8, 20, 49, 22, 12, 29, 10, 22, 25, 20, 66, 48, 25, 22, 28, 20, 29, 10, 28, 50, 59, 58, 39, 60, 59, 50, 117, 56, 48, 38, 38, 52, 50, 48, 38, 117, 38, 48, 59, 33, 117, 52, 51, 33, 48, 39, 117, 39, 48, 57, 48, 52, 38, 48, 123, 36, 3, 25, 8, 31, 3, 12, 1, 77, 31, 24, 3, 25, 4, 0, 8, 77, 8, 31, 31, 2, 31, 67, 79, 115, 126, 102, 125, 126, 124, 116, 63, 122, 109, 109, 112, 109, 49, 80, 108, 97, 121, 98, 97, 99, 107, 80, 111, 115, 105, 116, 105, 111, 110, 77, 115, 58, 32, 37, 100, 44, 32, 98, 117, 102, 102, 101, 114, 101, 100, 68, 117, 114, 97, 116, 105, 111, 110, 77, 115, 58, 32, 37, 100, 44, 32, 110, 101, 120, 116, 76, 111, 97, 100, 80, 111, 115, 105, 116, 105, 111, 110, 77, 115, 58, 32, 37, 100, 115, 79, 85, 82, 67, 69, 0, 69, 82, 82, 79, 82, 14, 18, 53, 46, 49, 97, 39, 32, 40, 45, 36, 37, 111, 29, 8, 14, 84, 101, 109, 112, 111, 114, 97, 114, 105, 108, 121, 32, 105, 103, 110, 111, 114, 105, 110, 103, 32, 115, 116, 114, 101, 97, 109, 32, 101, 114, 114, 111, 114, 58, 32, 92, 122, 113, 97, 102, 111, 40, 124, 103, 40, 123, 109, 102, 108, 40, 101, 109, 123, 123, 105, 111, 109, 40, 103, 102, 40, 105, 40, 108, 109, 105, 108, 40, 124, 96, 122, 109, 105, 108, 38, 5, 62, 53, 40, 32, 53, 51, 36, 53, 52, 112, 53, 34, 34, 63, 34, 112, 52, 53, 60, 57, 38, 53, 34, 57, 62, 55, 112, 61, 53, 35, 35, 49, 55, 53, 112, 63, 62, 112, 53, 40, 36, 53, 34, 62, 49, 60, 112, 36, 56, 34, 53, 49, 52, 126, 120, 115, 79, 115, 113, 121, 75, 115, 110, 119, 59, 51, 50, 63, 55, 6, 51, 36, 63, 57, 50, 31, 50, 17, 4, 19, 8, 14, 5, 49, 14, 18, 8, 21, 8, 14, 15, 52, 18, 111, 120, 109, 113, 124, 126, 120, 78, 105, 111, 120, 124, 112};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x014d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0d(com.facebook.ads.redexgen.core.C1429Oi r16) throws com.facebook.ads.redexgen.core.EK {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A0d(com.facebook.ads.redexgen.X.Oi):void");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0e(com.facebook.ads.redexgen.core.C1432Ol r19) throws com.facebook.ads.redexgen.core.EK {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A0e(com.facebook.ads.redexgen.X.Ol):void");
    }

    static {
        A0Q();
    }

    public E8(InterfaceC1682Yq[] interfaceC1682YqArr, AbstractC1912dG abstractC1912dG, C1913dH c1913dH, PC pc, InterfaceC1924dS interfaceC1924dS, boolean z, int i, boolean z2, Handler handler, InterfaceC2018ez interfaceC2018ez, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, long j, boolean z9, int i2, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, RK rk) {
        this.A0u = interfaceC1682YqArr;
        this.A0i = abstractC1912dG;
        this.A0j = c1913dH;
        this.A0d = pc;
        this.A0k = interfaceC1924dS;
        this.A0O = z;
        this.A03 = i;
        this.A0U = z2;
        this.A0Z = handler;
        this.A0l = interfaceC2018ez;
        this.A0T = z3;
        this.A0G = z4;
        this.A0F = z5;
        this.A0L = z6;
        this.A0H = z7;
        this.A0S = z8;
        this.A0Y = j;
        this.A0p = z9;
        this.A00 = i2;
        this.A0t = z11;
        this.A0r = z10;
        this.A0N = z12;
        this.A0P = z13;
        this.A0J = z14;
        this.A0s = z15;
        this.A0M = j > 0;
        this.A0X = pc.A6q();
        this.A0q = pc.AHt();
        this.A0D = C1482Qn.A04;
        this.A0B = new Q9(Timeline.A02, -9223372036854775807L, C1486Qs.A06, c1913dH);
        this.A0c = new C1431Ok();
        this.A0v = new InterfaceC1477Qi[interfaceC1682YqArr.length];
        for (int i3 = 0; i3 < interfaceC1682YqArr.length; i3++) {
            interfaceC1682YqArr[i3].A9z(i3, rk);
            this.A0v[i3] = interfaceC1682YqArr[i3].A73();
        }
        this.A0b = new C1697Zf(this, interfaceC2018ez);
        this.A0f = new C1678Ym(interfaceC2018ez);
        this.A0n = z11 ? new C09374c(interfaceC2018ez) : null;
        this.A0o = new ArrayList<>();
        this.A0V = new InterfaceC1682Yq[0];
        this.A0h = new C1671Yf();
        this.A0g = new C1673Yh();
        abstractC1912dG.A02(this, interfaceC1924dS);
        this.A0a = new HandlerThread(A0C(21, 29, 50), -16);
        this.A0a.start();
        this.A0m = interfaceC2018ez.A5F(this.A0a.getLooper(), this);
    }

    @MetaExoPlayerCustomization
    private int A00() {
        int exoplayerThreadPollingIntervalMs = MetaExoPlayerUpgradeConfig.A00(EnumC1388Mo.A04);
        if (exoplayerThreadPollingIntervalMs > 0) {
            return exoplayerThreadPollingIntervalMs;
        }
        return 10;
    }

    private long A01() {
        return A04(this.A0B.A0B);
    }

    private final long A02() {
        long loadingPeriodStartPositionUs;
        C1445Pa A0E = this.A0e.A0E();
        if (A0E == null) {
            loadingPeriodStartPositionUs = 0;
        } else {
            loadingPeriodStartPositionUs = A05(A0E);
        }
        if (A0E == null || loadingPeriodStartPositionUs == -9223372036854775807L) {
            return 0L;
        }
        return A0E.A0C(loadingPeriodStartPositionUs);
    }

    private final long A03() {
        C1445Pa A0F = this.A0e.A0F();
        return (A0F == null ? 0L : A0F.A0C(A0F.A0D(this.A06))) + A02();
    }

    private long A04(long j) {
        C1445Pa A0E = this.A0e.A0E();
        if (A0E == null) {
            return 0L;
        }
        return j - A0E.A0D(this.A06);
    }

    private final long A05(C1445Pa c1445Pa) {
        long j = Long.MAX_VALUE;
        InterfaceC1803bV[] interfaceC1803bVArr = c1445Pa.A09;
        for (int i = 0; i < interfaceC1803bVArr.length; i++) {
            if (interfaceC1803bVArr[i] instanceof InterfaceC1804bW) {
                long periodStartPositionUs = ((InterfaceC1804bW) interfaceC1803bVArr[i]).A7z();
                j = Math.min(j, periodStartPositionUs);
            }
        }
        if (j == Long.MAX_VALUE) {
            return -9223372036854775807L;
        }
        return j;
    }

    private long A06(R5 r5, long j) throws EK {
        return A07(false, r5, j, this.A0e.A0F() != this.A0e.A0G());
    }

    private long A07(boolean z, R5 r5, long j, boolean z2) throws EK {
        A0N();
        this.A0Q = false;
        A0U(2);
        C1445Pa A0F = this.A0e.A0F();
        C1445Pa c1445Pa = A0F;
        while (true) {
            if (c1445Pa == null) {
                break;
            }
            if (A17(r5, j, c1445Pa)) {
                this.A0e.A0P(c1445Pa);
                break;
            }
            c1445Pa = this.A0e.A0B();
        }
        if (A0F != c1445Pa || z2) {
            for (InterfaceC1682Yq interfaceC1682Yq : this.A0V) {
                A0l(interfaceC1682Yq);
            }
            this.A0V = new InterfaceC1682Yq[0];
            A0F = null;
        }
        if (c1445Pa != null) {
            A0f(A0F);
            if (c1445Pa.A01) {
                j = c1445Pa.A07.AIE(j, z);
                c1445Pa.A07.A5q(j - this.A0X, this.A0q);
            }
            A0X(j);
            A0v(this.A0F);
        } else {
            C1450Pf c1450Pf = this.A0e;
            String[] strArr = A0x;
            if (strArr[0].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            A0x[3] = "OhY7i9Wcx9AoKgvI7foVAuQZlGQuhmAa";
            c1450Pf.A0M(true);
            A0X(j);
        }
        A0u(false);
        this.A0m.AIG(2);
        return j;
    }

    private Pair<Object, Long> A08(C1432Ol c1432Ol, boolean z) {
        Timeline timeline = this.A0B.A04;
        Timeline timeline2 = c1432Ol.A02;
        if (timeline.A0N()) {
            return null;
        }
        if (timeline2.A0N()) {
            timeline2 = timeline;
        }
        try {
            Pair<Object, Long> periodPosition = timeline2.A0E(this.A0h, this.A0g, c1432Ol.A00, c1432Ol.A01);
            if (timeline == timeline2) {
                return periodPosition;
            }
            int A0A = timeline.A0A(periodPosition.first);
            if (A0A != -1) {
                return periodPosition;
            }
            if (!z || A0B(periodPosition.first, timeline2, timeline) == null) {
                return null;
            }
            return A09(timeline, timeline.A0H(A0A, this.A0g).A00, -9223372036854775807L);
        } catch (IndexOutOfBoundsException unused) {
            throw new P8(timeline, c1432Ol.A00, c1432Ol.A01);
        }
    }

    private Pair<Object, Long> A09(Timeline timeline, int i, long j) {
        return timeline.A0D(this.A0h, this.A0g, i, j);
    }

    private R5 A0A() {
        Timeline timeline = this.A0B.A04;
        if (timeline.A0N()) {
            return Q9.A0E;
        }
        return new R5(timeline.A0M(timeline.A0K(timeline.A0B(this.A0U), this.A0h).A00));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object A0B(java.lang.Object r11, com.google.android.exoplayer2.Timeline r12, com.google.android.exoplayer2.Timeline r13) {
        /*
            r10 = this;
            r4 = r12
            int r5 = r4.A0A(r11)
            r3 = -1
            int r2 = r4.A06()
            r1 = 0
        Lb:
            r0 = -1
            if (r1 >= r2) goto L1e
            if (r3 != r0) goto L1e
            com.facebook.ads.redexgen.X.Yh r6 = r10.A0g
            com.facebook.ads.redexgen.X.Yf r7 = r10.A0h
            int r8 = r10.A03
            boolean r9 = r10.A0U
            int r5 = r4.A09(r5, r6, r7, r8, r9)
            if (r5 != r0) goto L27
        L1e:
            if (r3 != r0) goto L22
            r0 = 0
        L21:
            return r0
        L22:
            java.lang.Object r0 = r13.A0M(r3)
            goto L21
        L27:
            java.lang.Object r0 = r4.A0M(r5)
            int r3 = r13.A0A(r0)
            int r1 = r1 + 1
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A0B(java.lang.Object, com.google.android.exoplayer2.Timeline, com.google.android.exoplayer2.Timeline):java.lang.Object");
    }

    private void A0D() {
        C1445Pa A0E = this.A0e.A0E();
        if (A0E == null) {
            return;
        }
        A0E.A07.A4i(A0E.A0D(this.A06));
    }

    private void A0F() {
        A0U(4);
        A12(false, true, false);
    }

    private void A0G() {
        int i;
        boolean z;
        int i2;
        if (this.A0c.A06(this.A0B)) {
            Handler handler = this.A0Z;
            i = this.A0c.A01;
            z = this.A0c.A03;
            if (!z) {
                i2 = -1;
            } else {
                i2 = this.A0c.A00;
            }
            handler.obtainMessage(0, i, i2, this.A0B).sendToTarget();
            this.A0c.A05(this.A0B);
        }
    }

    private void A0H() throws IOException {
        C1445Pa A0E = this.A0e.A0E();
        C1445Pa readingPeriodHolder = this.A0e.A0G();
        if (A0E != null && !A0E.A02) {
            if (readingPeriodHolder != null) {
                C1445Pa loadingPeriodHolder = readingPeriodHolder.A0I();
                if (loadingPeriodHolder != A0E) {
                    return;
                }
            }
            for (InterfaceC1682Yq interfaceC1682Yq : this.A0V) {
                if (!interfaceC1682Yq.A9f()) {
                    return;
                }
            }
            A0E.A07.ABn();
        }
    }

    private void A0I() throws IOException {
        this.A0e.A0L(this.A06);
        if (this.A0e.A0O()) {
            C1447Pc A0H = this.A0e.A0H(this.A06, this.A0B);
            if (A0H == null) {
                this.A0E.ABo();
                return;
            }
            this.A0e.A0J(this.A0v, this.A0s ? 60000000L : 0L, this.A0i, this.A0d.A6l(), this.A0E, A0H, this.A0j).AGD(this, A0H.A03);
            A0x(true);
            A0u(false);
        }
    }

    private void A0J() {
        A12(true, true, true);
        this.A0d.AEm();
        A0U(1);
        this.A0a.quit();
        synchronized (this) {
            this.A0R = true;
            notifyAll();
        }
    }

    private void A0K() throws EK {
        boolean z;
        if (!this.A0e.A0N()) {
            return;
        }
        C1697Zf c1697Zf = this.A0b;
        String[] strArr = A0x;
        if (strArr[2].charAt(29) == strArr[7].charAt(29)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0x;
        strArr2[0] = "1HMk1dV51tKZkGOAyQUQb";
        strArr2[1] = "Sx4gTI9hvNrNa8NBIzGQgczMy7mp6p9";
        float f = c1697Zf.A8c().A01;
        C1445Pa readingPeriodHolder = this.A0e.A0G();
        boolean z2 = true;
        for (C1445Pa A0F = this.A0e.A0F(); A0F != null; A0F = A0F.A0I()) {
            boolean z3 = A0F.A02;
            String[] strArr3 = A0x;
            if (strArr3[0].length() == strArr3[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr4 = A0x;
            strArr4[2] = "9soGDb9GgluXN8p8cdubLngyaHHWGwzM";
            strArr4[7] = "A7x7j3DP8OfQfdMNxQLenqP9vNKic9q7";
            if (!z3) {
                return;
            }
            C1913dH A0L = A0F.A0L(f, this.A0B.A04);
            if (A0L != null) {
                if (z2) {
                    C1445Pa A0F2 = this.A0e.A0F();
                    boolean A0P = this.A0e.A0P(A0F2);
                    boolean[] zArr = new boolean[this.A0u.length];
                    long A0G = A0F2.A0G(A0L, this.A0B.A0C, A0P, zArr);
                    if (this.A0B.A00 != 4 && A0G != this.A0B.A0C) {
                        this.A0B = this.A0B.A06(this.A0B.A06, A0G, this.A0B.A01, A01());
                        this.A0c.A04(4);
                        A0X(A0G);
                    }
                    int i = 0;
                    boolean[] zArr2 = new boolean[this.A0u.length];
                    for (int i2 = 0; i2 < this.A0u.length; i2++) {
                        InterfaceC1682Yq interfaceC1682Yq = this.A0u[i2];
                        zArr2[i2] = interfaceC1682Yq.A90() != 0;
                        InterfaceC1803bV interfaceC1803bV = A0F2.A09[i2];
                        if (interfaceC1803bV != null) {
                            i++;
                        }
                        if (zArr2[i2]) {
                            if (interfaceC1803bV != interfaceC1682Yq.A93()) {
                                A0l(interfaceC1682Yq);
                            } else {
                                boolean z4 = zArr[i2];
                                String[] strArr5 = A0x;
                                if (strArr5[2].charAt(29) != strArr5[7].charAt(29)) {
                                    A0x[6] = "ExGDDGbfemICDt7I0guZ3T32kAjRpQNI";
                                    if (!z4) {
                                    }
                                    interfaceC1682Yq.AHs(this.A06);
                                } else {
                                    A0x[6] = "2Ptzbtb5GwdiMq6Rg96jTXMfpGBsmS4j";
                                    if (!z4) {
                                    }
                                    interfaceC1682Yq.AHs(this.A06);
                                }
                            }
                        }
                    }
                    this.A0B = this.A0B.A07(A0F2.A0J(), A0F2.A0K());
                    A13(zArr2, i);
                    z = false;
                } else {
                    this.A0e.A0P(A0F);
                    if (A0F.A02) {
                        z = false;
                        A0F.A0F(A0L, Math.max(A0F.A00.A03, A0F.A0D(this.A06)), false);
                    } else {
                        z = false;
                    }
                }
                A0u(true);
                if (this.A0B.A00 != 4) {
                    A0v(z);
                    A0P();
                    this.A0m.AIG(2);
                    return;
                }
                return;
            }
            if (A0F == readingPeriodHolder) {
                z2 = false;
            }
        }
    }

    private void A0L() {
        for (int size = this.A0o.size() - 1; size >= 0; size--) {
            if (!A15(this.A0o.get(size))) {
                this.A0o.get(size).A03.A0A(false);
                this.A0o.remove(size);
            }
        }
        Collections.sort(this.A0o);
    }

    private void A0M() throws EK {
        this.A0Q = false;
        this.A0b.A05();
        this.A0f.A00();
        if (this.A0t) {
            this.A0n.A00();
        }
        for (InterfaceC1682Yq interfaceC1682Yq : this.A0V) {
            interfaceC1682Yq.start();
        }
    }

    private void A0N() throws EK {
        this.A0b.A06();
        this.A0f.A01();
        if (this.A0t) {
            this.A0n.A01();
        }
        for (InterfaceC1682Yq interfaceC1682Yq : this.A0V) {
            A0m(interfaceC1682Yq);
        }
    }

    private void A0P() throws EK {
        if (!this.A0e.A0N()) {
            return;
        }
        C1445Pa A0F = this.A0e.A0F();
        long AGY = A0F.A07.AGY();
        if (AGY != -9223372036854775807L) {
            A0X(AGY);
            if (AGY != this.A0B.A0C) {
                this.A0B = this.A0B.A06(this.A0B.A06, AGY, this.A0B.A01, A01());
                this.A0c.A04(4);
            }
        } else {
            C1697Zf c1697Zf = this.A0b;
            C1445Pa playingPeriodHolder = this.A0e.A0G();
            long A04 = c1697Zf.A04(A0F != playingPeriodHolder);
            if (A0x[4].length() == 14) {
                throw new RuntimeException();
            }
            String[] strArr = A0x;
            strArr[0] = "FmdEkHxnKg1RaLHfWvGqo";
            strArr[1] = "v5poHSGYgVp6KRWTZ4prlSd2j0l4imd";
            this.A06 = A04;
            long A0D = A0F.A0D(this.A06);
            A0Y(this.A0B.A0C, A0D);
            this.A0B.A0C = A0D;
        }
        C1445Pa playingPeriodHolder2 = this.A0e.A0E();
        this.A0B.A0B = playingPeriodHolder2.A09();
        this.A0B.A0D = A01();
        this.A0B.A0D = A0F.A0C(this.A0B.A0C);
    }

    private void A0R(byte b) {
        C1445Pa A0E = this.A0e.A0E();
        if (A0E == null) {
            return;
        }
        boolean z = this.A0T;
        String[] strArr = A0x;
        if (strArr[2].charAt(29) == strArr[7].charAt(29)) {
            throw new RuntimeException();
        }
        A0x[6] = "SYGDhYbotQVVmHvMkNUg0YgZHLo8Cpdm";
        if (z) {
            A0E.A07.AJg(b);
        }
    }

    private void A0S(float f) {
        for (C1445Pa A0D = this.A0e.A0D(); A0D != null && A0D.A02; A0D = A0D.A0I()) {
            for (QD qd : A0D.A0K().A04) {
                if (qd != null) {
                    qd.AEW(f);
                }
            }
        }
    }

    private void A0T(int i) throws EK {
        this.A03 = i;
        if (!this.A0e.A0Q(this.A0B.A04, i)) {
            A0w(true);
        }
        A0u(false);
    }

    private void A0U(int i) {
        if (this.A0B.A00 != i) {
            this.A0B = this.A0B.A01(i);
            if (i == 2) {
                this.A04 = System.currentTimeMillis();
            } else {
                this.A04 = -1L;
            }
        }
    }

    private void A0V(int i, boolean z) {
        if (this.A0B.A00 != i) {
            this.A0B = this.A0B.A03(i, z);
            if (i == 2) {
                long currentTimeMillis = System.currentTimeMillis();
                if (A0x[5].length() != 17) {
                    throw new RuntimeException();
                }
                A0x[6] = "NKtMUWbh8IEHnmL8CqkTIFih5HReATD9";
                this.A04 = currentTimeMillis;
                return;
            }
            this.A04 = -1L;
        }
    }

    private void A0W(int i, boolean playing, int i2) throws EK {
        C1445Pa A0F = this.A0e.A0F();
        InterfaceC1682Yq interfaceC1682Yq = this.A0u[i];
        this.A0V[i2] = interfaceC1682Yq;
        if (interfaceC1682Yq.A90() == 0) {
            C1445Pa A0G = this.A0e.A0G();
            C1445Pa playingPeriodHolder = this.A0e.A0F();
            boolean z = A0G == playingPeriodHolder;
            C1480Ql c1480Ql = A0F.A0K().A03[i];
            ZM[] A19 = A19(A0F.A0K().A04[i]);
            boolean z2 = this.A0O && this.A0B.A00 == 3;
            interfaceC1682Yq.A6B(c1480Ql, A19, A0F.A09[i], this.A06, !playing && z2, z, A0G.A0H(this.A0J), A0F.A0B());
            this.A0b.A09(interfaceC1682Yq);
            if (z2) {
                interfaceC1682Yq.start();
            }
        }
    }

    private void A0X(long j) throws EK {
        long A0E;
        if (this.A0e.A0N()) {
            A0E = this.A0e.A0F().A0E(j);
        } else {
            A0E = (this.A0s ? 60000000 : 0) + j;
        }
        this.A06 = A0E;
        this.A0b.A07(this.A06);
        InterfaceC1682Yq[] interfaceC1682YqArr = this.A0V;
        String[] strArr = A0x;
        if (strArr[2].charAt(29) == strArr[7].charAt(29)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0x;
        strArr2[2] = "6cjt0DftUlyJkt5YxoU4x5BScAJaPycf";
        strArr2[7] = "iFkJhCDP58OQsIBkGOD6QVFtJMCkBvAk";
        for (InterfaceC1682Yq renderer : interfaceC1682YqArr) {
            renderer.AHs(this.A06);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0125, code lost:
    
        if (r4 != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0177, code lost:
    
        r0 = r7.A01;
        r7.A01 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0174, code lost:
    
        if (r4 != false) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0165 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0138 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0Y(long r8, long r10) throws com.facebook.ads.redexgen.core.EK {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A0Y(long, long):void");
    }

    private void A0Z(long j, long j2) {
        this.A0m.AHZ(2);
        this.A0m.AIH(2, j + j2);
    }

    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    private void A0a(MI mi, boolean z) {
        if (this.A0B.A00 != 3) {
            this.A0B = this.A0B.A02(3, mi, z);
            this.A04 = -1L;
        }
    }

    private void A0b(C1428Oh c1428Oh) throws EK {
        throw new NullPointerException(A0C(376, 16, 43));
    }

    private void A0c(C1428Oh c1428Oh, boolean z) throws EK {
        this.A0c.A03(1);
        throw new NullPointerException(A0C(363, 13, 28));
    }

    private void A0f(C1445Pa c1445Pa) throws EK {
        C1445Pa A0F = this.A0e.A0F();
        if (A0F == null || c1445Pa == A0F) {
            return;
        }
        int i = 0;
        boolean[] zArr = new boolean[this.A0u.length];
        for (int i2 = 0; i2 < this.A0u.length; i2++) {
            InterfaceC1682Yq interfaceC1682Yq = this.A0u[i2];
            zArr[i2] = interfaceC1682Yq.A90() != 0;
            C1913dH A0K = A0F.A0K();
            int enabledRendererCount = A0x[5].length();
            if (enabledRendererCount != 17) {
                throw new RuntimeException();
            }
            A0x[4] = "gT1PRuQGo4WesX7dCGV4FK";
            if (A0K.A00(i2)) {
                i++;
            }
            if (zArr[i2]) {
                if (A0F.A0K().A00(i2)) {
                    if (interfaceC1682Yq.AAC()) {
                        InterfaceC1803bV A93 = interfaceC1682Yq.A93();
                        InterfaceC1803bV interfaceC1803bV = c1445Pa.A09[i2];
                        int enabledRendererCount2 = A0x[6].charAt(6);
                        if (enabledRendererCount2 != 98) {
                            throw new RuntimeException();
                        }
                        A0x[6] = "ZKRARkboyfOczpGve6cKwyMhictp2PLx";
                        if (A93 != interfaceC1803bV) {
                        }
                    } else {
                        continue;
                    }
                }
                A0l(interfaceC1682Yq);
            }
        }
        this.A0B = this.A0B.A07(A0F.A0J(), A0F.A0K());
        A13(zArr, i);
    }

    private void A0g(C1687Yv c1687Yv) {
        this.A0b.AIj(c1687Yv);
        if (this.A0n != null) {
            this.A0n.AIj(c1687Yv);
        }
        if (this.A0f != null) {
            this.A0f.AIj(c1687Yv);
        }
    }

    private void A0h(QT qt) throws EK {
        if (qt.A0D()) {
            return;
        }
        try {
            qt.A04().A9Y(qt.A01(), qt.A09());
        } finally {
            qt.A0A(true);
        }
    }

    private void A0i(QT qt) throws EK {
        if (qt.A02() == -9223372036854775807L) {
            A0j(qt);
            return;
        }
        if (this.A0E == null || this.A02 > 0) {
            this.A0o.add(new C1430Oj(qt));
            return;
        }
        C1430Oj c1430Oj = new C1430Oj(qt);
        if (A15(c1430Oj)) {
            this.A0o.add(c1430Oj);
            Collections.sort(this.A0o);
        } else {
            qt.A0A(false);
        }
    }

    private void A0j(QT qt) throws EK {
        if (qt.A03() == this.A0m.A8H()) {
            A0h(qt);
            if (this.A0B.A00 != 3) {
                int i = this.A0B.A00;
                String[] strArr = A0x;
                if (strArr[0].length() == strArr[1].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0x;
                strArr2[0] = "IflZ3gYpudwozPWfp62r4";
                strArr2[1] = "kDwc6g6BttOxIaR9WB7qOD9wvYhT2l9";
                if (i != 2) {
                    return;
                }
            }
            this.A0m.AIG(2);
            return;
        }
        this.A0m.AC4(15, qt).A02();
    }

    private void A0k(final QT qt) {
        Looper A03 = qt.A03();
        if (!A03.getThread().isAlive()) {
            Log.w(A0C(220, 3, 3), A0C(258, 40, 66));
            qt.A0A(false);
        } else {
            this.A0l.A5F(A03, null).A03(new Runnable() { // from class: com.facebook.ads.redexgen.X.Of
                @Override // java.lang.Runnable
                public final void run() {
                    E8.this.A1C(qt);
                }
            });
        }
    }

    private void A0l(InterfaceC1682Yq interfaceC1682Yq) throws EK {
        this.A0b.A08(interfaceC1682Yq);
        A0m(interfaceC1682Yq);
        interfaceC1682Yq.A5n();
    }

    private void A0m(InterfaceC1682Yq interfaceC1682Yq) throws EK {
        if (interfaceC1682Yq.A90() == 2) {
            interfaceC1682Yq.stop();
        }
    }

    private void A0n(C1482Qn c1482Qn) {
        this.A0D = c1482Qn;
    }

    private void A0o(R7 r7) {
        if (!this.A0e.A0T(r7)) {
            return;
        }
        C1450Pf c1450Pf = this.A0e;
        if (A0x[6].charAt(6) != 'b') {
            throw new RuntimeException();
        }
        A0x[3] = "N2YsFookWO0YHNtVSQlDYkRhdslXhp1Z";
        c1450Pf.A0L(this.A06);
        A0v(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x007b, code lost:
    
        if (r3 != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008e, code lost:
    
        r0 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x008b, code lost:
    
        if (r3 != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0p(com.facebook.ads.redexgen.core.R7 r5) throws com.facebook.ads.redexgen.core.EK {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.Pf r0 = r4.A0e
            boolean r0 = r0.A0T(r5)
            if (r0 != 0) goto L9
            return
        L9:
            com.facebook.ads.redexgen.X.Pf r0 = r4.A0e
            com.facebook.ads.redexgen.X.Pa r2 = r0.A0E()
            com.facebook.ads.redexgen.X.Zf r0 = r4.A0b
            com.facebook.ads.redexgen.X.Yv r0 = r0.A8c()
            float r1 = r0.A01
            com.facebook.ads.redexgen.X.Q9 r0 = r4.A0B
            com.google.android.exoplayer2.Timeline r0 = r0.A04
            r2.A0N(r1, r0)
            com.facebook.ads.redexgen.X.Qs r1 = r2.A0J()
            com.facebook.ads.redexgen.X.dH r0 = r2.A0K()
            r4.A0s(r1, r0)
            com.facebook.ads.redexgen.X.Pf r0 = r4.A0e
            boolean r0 = r0.A0N()
            if (r0 != 0) goto L42
            com.facebook.ads.redexgen.X.Pf r0 = r4.A0e
            com.facebook.ads.redexgen.X.Pa r0 = r0.A0B()
            com.facebook.ads.redexgen.X.Pc r0 = r0.A00
            long r0 = r0.A03
            r4.A0X(r0)
            r0 = 0
            r4.A0f(r0)
        L42:
            boolean r3 = r4.A0L
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.E8.A0x
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 17
            if (r1 == r0) goto L57
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L57:
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.E8.A0x
            java.lang.String r1 = "X90kmegW"
            r0 = 4
            r2[r0] = r1
            if (r3 != 0) goto L7d
            boolean r3 = r4.A0O
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.E8.A0x
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 14
            if (r1 == r0) goto L8b
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.E8.A0x
            java.lang.String r1 = "ooe8Ubhu9oCVsapmfipAXADpBd4J5cmP"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "aSCXJA5N9UbyM7e2VXbRy1jNGUXDVNUP"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto L8e
        L7d:
            r0 = 0
        L7e:
            r4.A0R(r0)
            boolean r0 = r4.A0O
            r4.A0z(r0)
            r0 = 0
            r4.A0v(r0)
            return
        L8b:
            if (r3 == 0) goto L8e
            goto L7d
        L8e:
            r0 = 2
            goto L7e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A0p(com.facebook.ads.redexgen.X.R7):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1806bY
    /* renamed from: A0q, reason: merged with bridge method [inline-methods] */
    public final void ACl(R7 r7) {
        this.A0m.AC4(10, r7).A02();
    }

    private void A0r(InterfaceC1774az interfaceC1774az, boolean z, boolean z2) {
        this.A02++;
        A12(true, z, z2);
        this.A0d.onPrepared();
        this.A0E = interfaceC1774az;
        A0U(2);
        interfaceC1774az.AGF(this, null);
        this.A0m.AIG(2);
    }

    private void A0s(C1486Qs c1486Qs, C1913dH c1913dH) {
        this.A0d.AFN(this.A0u, c1486Qs, c1913dH.A04);
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "D63737392: Added for negative testing")
    private void A0t(String str) {
        boolean z = false;
        if (str == null) {
            this.A0I = false;
            this.A0A = null;
            return;
        }
        if (str != null && str.length() > 0) {
            z = true;
        }
        this.A0I = z;
        this.A0A = new Q4(str);
    }

    private void A0u(boolean z) {
        C1445Pa A0E = this.A0e.A0E();
        R5 r5 = A0E == null ? this.A0B.A06 : A0E.A00.A04;
        boolean z2 = !this.A0B.A05.equals(r5);
        if (z2) {
            this.A0B = this.A0B.A05(r5);
        }
        if ((z2 || z) && A0E != null && A0E.A02) {
            A0s(A0E.A0J(), A0E.A0K());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("Customized Buffered Duration MS D23157182")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0v(boolean r21) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A0v(boolean):void");
    }

    private void A0w(boolean z) throws EK {
        R5 r5 = this.A0e.A0F().A00.A04;
        long A07 = A07(false, r5, this.A0B.A0C, true);
        if (A07 != this.A0B.A0C) {
            this.A0B = this.A0B.A06(r5, A07, this.A0B.A01, A01());
            if (z) {
                this.A0c.A04(4);
            }
        }
    }

    private void A0x(boolean z) {
        if (this.A0B.A0A != z) {
            this.A0B = this.A0B.A08(z);
        }
    }

    private void A0y(boolean z) throws EK {
        try {
            this.A0Q = false;
            this.A0O = z;
            A0z(z);
            if (!z) {
                A0N();
                A0P();
                A0R((byte) 2);
                if (this.A0H) {
                    A0D();
                }
            } else {
                A0R((byte) 0);
                if (this.A0B.A00 != 3) {
                    if (this.A0B.A00 == 2) {
                        this.A0m.AIG(2);
                    }
                } else {
                    A0M();
                    this.A0m.AIG(2);
                }
            }
        } finally {
            this.A0Z.obtainMessage(3, Boolean.valueOf(z)).sendToTarget();
        }
    }

    @MetaExoPlayerCustomization("D19875605 Prevent further error loading once pausing video")
    private void A0z(boolean z) {
        C1445Pa loadingPeriod = this.A0e.A0E();
        if (loadingPeriod == null) {
            return;
        }
        loadingPeriod.A07.AIi(z);
    }

    private void A10(boolean z) throws EK {
        this.A0U = z;
        if (!this.A0e.A0S(this.A0B.A04, z)) {
            A0w(true);
        }
        A0u(false);
    }

    private void A11(boolean z, boolean z2) {
        A12(true, z, z);
        this.A0c.A03(this.A02 + (z2 ? 1 : 0));
        this.A02 = 0;
        this.A0d.AFF();
        A0U(1);
    }

    private void A12(boolean z, boolean z2, boolean z3) {
        InterfaceC1682Yq[] interfaceC1682YqArr;
        int length;
        int i;
        long startPositionUs;
        C1913dH c1913dH;
        this.A0m.AHZ(2);
        this.A0Q = false;
        this.A0b.A06();
        this.A0f.A01();
        if (this.A0t) {
            this.A0n.A01();
        }
        boolean z4 = this.A0s;
        String[] strArr = A0x;
        if (strArr[2].charAt(29) == strArr[7].charAt(29)) {
            throw new RuntimeException();
        }
        A0x[4] = "5dWxzzJ98Fka";
        this.A06 = z4 ? 60000000L : 0L;
        if (A0x[5].length() == 17) {
            A0x[3] = "irXoD6IMK3951LOgJnhrgpRIUxubhL7p";
            interfaceC1682YqArr = this.A0V;
            length = interfaceC1682YqArr.length;
            i = 0;
        } else {
            interfaceC1682YqArr = this.A0V;
            length = interfaceC1682YqArr.length;
            i = 0;
        }
        while (i < length) {
            try {
                A0l(interfaceC1682YqArr[i]);
            } catch (EK | RuntimeException e) {
                String A0C = A0C(0, 21, 8);
                String A0C2 = A0C(208, 12, 11);
                if (A0x[5].length() != 17) {
                    A0x[5] = "yoYrePxBNWNpTCNXS";
                    Log.e(A0C, A0C2, e);
                } else {
                    String[] strArr2 = A0x;
                    strArr2[2] = "zYQChwMC0acuWOdO4Tu2vsdnZs4BHCBS";
                    strArr2[7] = "5ysXUZs2wF2c5Iiia3xGHcTqnidP19eH";
                    Log.e(A0C, A0C2, e);
                }
            }
            i++;
        }
        this.A0V = new InterfaceC1682Yq[0];
        this.A0e.A0M(!z2);
        A0x(false);
        if (A0x[3].charAt(28) != 'h') {
            throw new RuntimeException();
        }
        String[] strArr3 = A0x;
        strArr3[0] = "9mCMXGvhk13EZa5CjgfAY";
        strArr3[1] = "xwnh7YG3XxTfSdfdJLzgH1PTV0TrZRq";
        if (z2) {
            this.A09 = null;
        }
        if (z3) {
            Iterator<C1430Oj> it = this.A0o.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                String[] strArr4 = A0x;
                if (strArr4[2].charAt(29) == strArr4[7].charAt(29)) {
                    throw new RuntimeException();
                }
                A0x[3] = "vKma2dcDyA9GzTABWD8bVPAONyaHh975";
                if (hasNext) {
                    it.next().A03.A0A(false);
                } else {
                    this.A0o.clear();
                    this.A01 = 0;
                    break;
                }
            }
        }
        R5 mediaPeriodId = z2 ? A0A() : this.A0B.A06;
        long contentPositionUs = -9223372036854775807L;
        if (z2) {
            startPositionUs = -9223372036854775807L;
        } else {
            startPositionUs = this.A0B.A0C;
        }
        if (!z2) {
            contentPositionUs = this.A0B.A01;
        }
        Timeline timeline = z3 ? Timeline.A02 : this.A0B.A04;
        int i2 = this.A0B.A00;
        C1486Qs c1486Qs = z3 ? C1486Qs.A06 : this.A0B.A07;
        if (z3) {
            c1913dH = this.A0j;
        } else {
            c1913dH = this.A0B.A08;
        }
        this.A0B = new Q9(timeline, mediaPeriodId, startPositionUs, contentPositionUs, i2, false, c1486Qs, c1913dH, mediaPeriodId, startPositionUs, 0L, startPositionUs);
        if (z && this.A0E != null) {
            this.A0E.AGt(this);
            this.A0E = null;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A13(boolean[] r6, int r7) throws com.facebook.ads.redexgen.core.EK {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.Yq[] r0 = new com.facebook.ads.redexgen.core.InterfaceC1682Yq[r7]
            r5.A0V = r0
            r4 = 0
            com.facebook.ads.redexgen.X.Pf r0 = r5.A0e
            com.facebook.ads.redexgen.X.Pa r3 = r0.A0F()
            r2 = 0
        Lc:
            com.facebook.ads.redexgen.X.Yq[] r0 = r5.A0u
            int r0 = r0.length
            if (r2 >= r0) goto L26
            com.facebook.ads.redexgen.X.dH r0 = r3.A0K()
            boolean r0 = r0.A00(r2)
            if (r0 == 0) goto L23
            boolean r1 = r6[r2]
            int r0 = r4 + 1
            r5.A0W(r2, r1, r4)
            r4 = r0
        L23:
            int r2 = r2 + 1
            goto Lc
        L26:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A13(boolean[], int):void");
    }

    private boolean A14() {
        C1445Pa playingPeriodHolder = this.A0e.A0F();
        C1445Pa A0I = playingPeriodHolder.A0I();
        long j = playingPeriodHolder.A00.A00;
        return j == -9223372036854775807L || this.A0B.A0C < j || (A0I != null && (A0I.A02 || A0I.A00.A04.A00()));
    }

    private boolean A15(C1430Oj c1430Oj) {
        if (c1430Oj.A02 == null) {
            Pair<Object, Long> A08 = A08(new C1432Ol(c1430Oj.A03.A08(), c1430Oj.A03.A00(), O5.A00(c1430Oj.A03.A02())), false);
            if (A08 == null) {
                return false;
            }
            c1430Oj.A01(this.A0B.A04.A0A(A08.first), ((Long) A08.second).longValue(), A08.first);
        } else {
            int A0A = this.A0B.A04.A0A(c1430Oj.A02);
            if (A0A == -1) {
                return false;
            }
            c1430Oj.A00 = A0A;
        }
        if (A0x[4].length() == 14) {
            throw new RuntimeException();
        }
        A0x[5] = "pTp429R6g8QE6OWae";
        return true;
    }

    private boolean A16(InterfaceC1682Yq interfaceC1682Yq) {
        C1445Pa A0G = this.A0e.A0G();
        C1445Pa readingPeriodHolder = A0G.A0I();
        if (readingPeriodHolder != null) {
            C1445Pa readingPeriodHolder2 = A0G.A0I();
            if (readingPeriodHolder2.A02 && interfaceC1682Yq.A9f()) {
                return true;
            }
        }
        return false;
    }

    private boolean A17(R5 r5, long j, C1445Pa c1445Pa) {
        if (r5.equals(c1445Pa.A00.A04) && c1445Pa.A02) {
            Timeline timeline = this.A0B.A04;
            String[] strArr = A0x;
            if (strArr[2].charAt(29) == strArr[7].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0x;
            strArr2[2] = "472eJP3zn9qYE5XrsvvjufYNTfvHco5v";
            strArr2[7] = "mD7AGQLdMY8WzkfpubN5JhXBAhWtDxAx";
            timeline.A0J(this.A0B.A06.A04, this.A0g);
            int A07 = this.A0g.A07(j);
            if (A07 == -1 || this.A0g.A0D(A07) == c1445Pa.A00.A01) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00ad  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations({@com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("Customized Buffered Duration MS D23157182"), @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A18(boolean r19) {
        /*
            r18 = this;
            r3 = r18
            com.facebook.ads.redexgen.X.Yq[] r0 = r3.A0V
            int r0 = r0.length
            if (r0 != 0) goto Lc
            boolean r0 = r18.A14()
            return r0
        Lc:
            r9 = 0
            if (r19 != 0) goto L1c
            com.facebook.ads.redexgen.X.Yq r0 = r3.A0C
            if (r0 == 0) goto L1b
            com.facebook.ads.redexgen.X.Yq r0 = r3.A0C
            com.facebook.ads.redexgen.X.MI r0 = r0.A8z()
            r3.A07 = r0
        L1b:
            return r9
        L1c:
            com.facebook.ads.redexgen.X.Q9 r0 = r3.A0B
            boolean r1 = r0.A0A
            r0 = 1
            if (r1 != 0) goto L24
            return r0
        L24:
            com.facebook.ads.redexgen.X.Pf r0 = r3.A0e
            com.facebook.ads.redexgen.X.Pa r2 = r0.A0E()
            boolean r0 = r2.A0R()
            if (r0 == 0) goto Lb9
            com.facebook.ads.redexgen.X.Pc r0 = r2.A00
            boolean r0 = r0.A05
            if (r0 == 0) goto Lb9
            r8 = 1
        L37:
            boolean r0 = r3.A0r
            if (r0 == 0) goto L51
            com.facebook.ads.redexgen.X.Pf r0 = r3.A0e
            com.facebook.ads.redexgen.X.Pa r1 = r0.A0F()
            com.facebook.ads.redexgen.X.Pf r0 = r3.A0e
            com.facebook.ads.redexgen.X.Pa r0 = r0.A0E()
            if (r1 == r0) goto L51
            com.facebook.ads.redexgen.X.Pf r0 = r3.A0e
            com.facebook.ads.redexgen.X.Pa r0 = r0.A0F()
            if (r0 != 0) goto Lb4
        L51:
            long r0 = r3.A06
            long r0 = r2.A0D(r0)
            long r11 = r2.A0C(r0)
        L5b:
            long r6 = java.lang.System.currentTimeMillis()
            int r0 = r3.A00
            if (r0 <= 0) goto Lb2
            long r4 = r3.A04
            r1 = 0
            int r0 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r0 <= 0) goto Lb2
            long r0 = r3.A04
            long r6 = r6 - r0
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.E8.A0x
            r0 = 2
            r1 = r2[r0]
            r0 = 7
            r2 = r2[r0]
            r0 = 29
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto Lbc
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.E8.A0x
            java.lang.String r1 = "8HA0HKbYdvvMPLwaVeNTaJrDoSfEgujA"
            r0 = 6
            r2[r0] = r1
            int r0 = r3.A00
            long r1 = (long) r0
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r0 >= 0) goto Lb2
            r15 = 1
        L91:
            if (r8 != 0) goto Laa
            com.facebook.ads.redexgen.X.PC r10 = r3.A0d
            com.facebook.ads.redexgen.X.Zf r0 = r3.A0b
            com.facebook.ads.redexgen.X.Yv r0 = r0.A8c()
            float r13 = r0.A01
            boolean r14 = r3.A0Q
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r10.AJ4(r11, r13, r14, r15, r16)
            if (r0 == 0) goto Lab
        Laa:
            r9 = 1
        Lab:
            if (r9 != 0) goto Lb1
            com.facebook.ads.redexgen.X.MI r0 = com.facebook.ads.redexgen.core.MI.A04
            r3.A07 = r0
        Lb1:
            return r9
        Lb2:
            r15 = 0
            goto L91
        Lb4:
            long r11 = r18.A03()
            goto L5b
        Lb9:
            r8 = 0
            goto L37
        Lbc:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A18(boolean):boolean");
    }

    public static ZM[] A19(InterfaceC1906dA interfaceC1906dA) {
        int length = interfaceC1906dA != null ? interfaceC1906dA.length() : 0;
        ZM[] zmArr = new ZM[length];
        for (int i = 0; i < length; i++) {
            zmArr[i] = interfaceC1906dA.A81(i);
        }
        return zmArr;
    }

    public final Looper A1A() {
        return this.A0a.getLooper();
    }

    /* JADX WARN: Incorrect condition in loop: B:10:0x0010 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void A1B() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.A0R     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L7
            monitor-exit(r2)
            return
        L7:
            com.facebook.ads.redexgen.X.fS r1 = r2.A0m     // Catch: java.lang.Throwable -> L23
            r0 = 7
            r1.AIG(r0)     // Catch: java.lang.Throwable -> L23
            r1 = 0
        Le:
            boolean r0 = r2.A0R     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L18
            r2.wait()     // Catch: java.lang.InterruptedException -> L16 java.lang.Throwable -> L23
            goto Le
        L16:
            r1 = 1
            goto Le
        L18:
            if (r1 == 0) goto L21
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L23
            r0.interrupt()     // Catch: java.lang.Throwable -> L23
        L21:
            monitor-exit(r2)
            return
        L23:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.E8.A1B():void");
    }

    public final /* synthetic */ void A1C(QT qt) {
        try {
            A0h(qt);
        } catch (EK e) {
            Log.e(A0C(0, 21, 8), A0C(298, 55, 26), e);
            throw new RuntimeException(e);
        }
    }

    public final void A1D(Timeline timeline, int i, long j) {
        this.A0m.AC4(3, new C1432Ol(timeline, i, j)).A02();
    }

    public final void A1E(InterfaceC1774az interfaceC1774az, boolean z, boolean z2) {
        this.A0m.AC3(0, z ? 1 : 0, z2 ? 1 : 0, interfaceC1774az).A02();
    }

    public final void A1F(boolean z) {
        this.A0m.AC2(1, z ? 1 : 0, 0).A02();
    }

    public final void A1G(boolean z) {
        this.A0m.AC2(6, z ? 1 : 0, 0).A02();
    }

    @Override // com.facebook.ads.redexgen.core.OH
    public final void AEV(C1687Yv c1687Yv) {
        this.A0Z.obtainMessage(1, c1687Yv).sendToTarget();
        A0S(c1687Yv.A01);
    }

    @Override // com.facebook.ads.redexgen.core.R8
    public final void AEd(R7 r7) {
        this.A0m.AC4(9, r7).A02();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1773ay
    public final void AFA(InterfaceC1774az interfaceC1774az, Timeline timeline) {
        this.A0m.AC4(8, new C1429Oi(interfaceC1774az, timeline)).A02();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1911dF
    public final void AFL() {
        this.A0m.AIG(11);
    }

    @Override // com.facebook.ads.redexgen.core.QR
    public final synchronized void AII(QT qt) {
        if (this.A0R) {
            Log.w(A0C(0, 21, 8), A0C(50, 37, 31));
            qt.A0A(false);
        } else {
            this.A0m.AC4(14, qt).A02();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        String A0C = A0C(0, 21, 8);
        try {
        } catch (EK e) {
            Log.e(A0C, A0C(FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, 15, 85), e);
            A11(false, false);
            this.A0Z.obtainMessage(2, e).sendToTarget();
            A0G();
        } catch (IOException e2) {
            Log.e(A0C, A0C(195, 13, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), e2);
            A11(false, false);
            this.A0Z.obtainMessage(2, EK.A01(e2, AdError.SERVER_ERROR_CODE)).sendToTarget();
            A0G();
        } catch (RuntimeException e3) {
            Log.e(A0C, A0C(87, 23, 39), e3);
            A11(false, false);
            this.A0Z.obtainMessage(2, EK.A02(e3)).sendToTarget();
            A0G();
        }
        switch (message.what) {
            case 0:
                A0r((InterfaceC1774az) message.obj, message.arg1 != 0, message.arg2 != 0);
                A0G();
                return true;
            case 1:
                A0y(message.arg1 != 0);
                A0G();
                return true;
            case 2:
                A0E();
                A0G();
                return true;
            case 3:
                A0e((C1432Ol) message.obj);
                A0G();
                return true;
            case 4:
                A0g((C1687Yv) message.obj);
                A0G();
                return true;
            case 5:
                A0n((C1482Qn) message.obj);
                A0G();
                return true;
            case 6:
                A11(message.arg1 != 0, true);
                A0G();
                return true;
            case 7:
                A0J();
                return true;
            case 8:
                A0d((C1429Oi) message.obj);
                A0G();
                return true;
            case 9:
                A0p((R7) message.obj);
                A0G();
                return true;
            case 10:
                A0o((R7) message.obj);
                A0G();
                return true;
            case 11:
                A0K();
                A0G();
                return true;
            case 12:
                A0T(message.arg1);
                A0G();
                return true;
            case 13:
                A10(message.arg1 != 0);
                A0G();
                return true;
            case 14:
                A0i((QT) message.obj);
                A0G();
                return true;
            case 15:
                A0k((QT) message.obj);
                A0G();
                return true;
            case 16:
                A0G();
                return true;
            case 17:
                A0c(null, false);
                throw null;
            case 18:
                A0b(null);
                throw null;
            case 19:
                A0t((String) message.obj);
                A0G();
                return true;
            default:
                return false;
        }
    }
}
