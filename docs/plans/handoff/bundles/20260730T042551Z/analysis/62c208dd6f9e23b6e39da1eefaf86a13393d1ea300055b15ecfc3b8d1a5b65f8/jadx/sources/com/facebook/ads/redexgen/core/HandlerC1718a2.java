package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.exoplayer2.offline.Download;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.a2, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class HandlerC1718a2 extends Handler {
    public static byte[] A0D;
    public static String[] A0E = {"swfC0ibcmhP3x", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "k5axwtra5rVBXrxN3oOIFzux7ifCzNXy", "DAMM4", "yyRLod3JIhrL30dabLfmNrZ0B112ujjP", "oQYtaz4vuwyMSJpHXF0VT70PFLFDuJr", "VfARV", "rZqZbPAoR0p6fWqNbno2UZy1XGgudDbH"};
    public boolean A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public boolean A05;
    public boolean A06;
    public final Handler A07;
    public final HandlerThread A08;
    public final InterfaceC1734aJ A09;
    public final RD A0A;
    public final ArrayList<C1701Zk> A0B;
    public final HashMap<String, RH> A0C;

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0E;
            if (strArr[7].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A0E[1] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 25);
            i4++;
        }
    }

    public static void A0D() {
        A0D = new byte[]{81, 93, 29, 54, 46, 55, 53, 54, 56, 61, 20, 56, 55, 56, 62, 60, 43, 11, 44, 36, 33, 40, 41, 109, 57, 34, 109, 33, 34, 44, 41, 109, 41, 34, 58, 35, 33, 34, 44, 41, 119, 109, 94, 121, 113, 116, 125, 124, 56, 108, 119, 56, 116, 119, 121, 124, 56, 124, 119, 111, 118, 116, 119, 121, 124, 107, 54, 0, 39, 47, 42, 35, 34, 102, 50, 41, 102, 42, 41, 39, 34, 102, 47, 40, 34, 35, 62, 104, 120, 95, 87, 82, 91, 90, 30, 74, 81, 30, 76, 91, 83, 81, 72, 91, 30, 88, 76, 81, 83, 30, 90, 95, 74, 95, 92, 95, 77, 91, 38, 1, 9, 12, 5, 4, 64, 20, 15, 64, 18, 5, 13, 15, 22, 5, 64, 14, 15, 14, 5, 24, 9, 19, 20, 5, 14, 20, 64, 4, 15, 23, 14, 12, 15, 1, 4, 90, 64, 24, 63, 55, 50, 59, 58, 126, 42, 49, 126, 45, 59, 42, 126, 51, 63, 48, 43, 63, 50, 126, 45, 42, 49, 46, 126, 44, 59, 63, 45, 49, 48, 83, 116, 124, 121, 112, 113, 53, 97, 122, 53, 102, 112, 97, 53, 120, 116, 123, 96, 116, 121, 53, 102, 97, 122, 101, 53, 103, 112, 116, 102, 122, 123, 47, 53, 81, 118, 126, 123, 114, 115, 55, 99, 120, 55, 98, 103, 115, 118, 99, 114, 55, 126, 121, 115, 114, 111, 57, 67, 118, 100, 124, 55, 113, 118, 126, 123, 114, 115, 45, 55};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 17 out of bounds for length 17
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private void A0Q(DownloadRequest downloadRequest, int i) {
        C1701Zk A06 = A06(downloadRequest.A02, true);
        long currentTimeMillis = System.currentTimeMillis();
        if (A06 != null) {
            A03(C1721a5.A00(A06, downloadRequest, i, currentTimeMillis));
        } else {
            A03(new C1701Zk(downloadRequest, i != 0 ? 1 : 0, currentTimeMillis, currentTimeMillis, -1L, i, 0));
        }
        A0B();
    }

    static {
        A0D();
    }

    public HandlerC1718a2(HandlerThread handlerThread, RD rd, InterfaceC1734aJ interfaceC1734aJ, Handler handler, int i, int i2, boolean z) {
        super(handlerThread.getLooper());
        this.A08 = handlerThread;
        this.A0A = rd;
        this.A09 = interfaceC1734aJ;
        this.A07 = handler;
        this.A02 = i;
        this.A03 = i2;
        this.A05 = z;
        this.A0B = new ArrayList<>();
        this.A0C = new HashMap<>();
    }

    public static int A00(C1701Zk c1701Zk, C1701Zk c1701Zk2) {
        return AbstractC2094gE.A08(c1701Zk.A05, c1701Zk2.A05);
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int A02(java.lang.String r3) {
        /*
            r2 = this;
            r1 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.Zk> r0 = r2.A0B
            int r0 = r0.size()
            if (r1 >= r0) goto L1f
            java.util.ArrayList<com.facebook.ads.redexgen.X.Zk> r0 = r2.A0B
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.Zk r0 = (com.facebook.ads.redexgen.core.C1701Zk) r0
            com.google.android.exoplayer2.offline.DownloadRequest r0 = r0.A07
            java.lang.String r0 = r0.A02
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L1c
            return r1
        L1c:
            int r1 = r1 + 1
            goto L1
        L1f:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.HandlerC1718a2.A02(java.lang.String):int");
    }

    private C1701Zk A03(C1701Zk c1701Zk) {
        AbstractC2011es.A08((c1701Zk.A02 == 3 || c1701Zk.A02 == 4) ? false : true);
        int A02 = A02(c1701Zk.A07.A02);
        if (A02 == -1) {
            this.A0B.add(c1701Zk);
            Collections.sort(this.A0B, new C1717a1());
        } else {
            boolean z = c1701Zk.A05 != this.A0B.get(A02).A05;
            this.A0B.set(A02, c1701Zk);
            if (z) {
                Collections.sort(this.A0B, new C1717a1());
            }
        }
        try {
            this.A0A.AGN(c1701Zk);
        } catch (IOException e) {
            AbstractC2055fb.A08(A08(2, 15, 64), A08(223, 23, 14), e);
        }
        this.A07.obtainMessage(2, new C1716a0(c1701Zk, false, new ArrayList(this.A0B), null)).sendToTarget();
        return c1701Zk;
    }

    private C1701Zk A04(C1701Zk c1701Zk, int i, int i2) {
        AbstractC2011es.A08((i == 3 || i == 4) ? false : true);
        return A03(A05(c1701Zk, i, i2));
    }

    public static C1701Zk A05(C1701Zk c1701Zk, int i, int i2) {
        return new C1701Zk(c1701Zk.A07, i, c1701Zk.A05, System.currentTimeMillis(), c1701Zk.A04, i2, 0, c1701Zk.A00);
    }

    private C1701Zk A06(String str, boolean z) {
        int A02 = A02(str);
        if (A02 != -1) {
            return this.A0B.get(A02);
        }
        if (z) {
            try {
                return this.A0A.A7g(str);
            } catch (IOException e) {
                AbstractC2055fb.A08(A08(2, 15, 64), A08(17, 25, 84) + str, e);
                return null;
            }
        }
        return null;
    }

    private RH A07(RH rh, C1701Zk c1701Zk) {
        boolean z;
        if (rh != null) {
            z = rh.A06;
            AbstractC2011es.A08(!z);
            rh.A05(false);
            if (A0E[0].length() == 13) {
                A0E[1] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                return rh;
            }
        } else {
            if (!A0U()) {
                return null;
            }
            int i = this.A01;
            String[] strArr = A0E;
            if (strArr[3].length() == strArr[6].length()) {
                String[] strArr2 = A0E;
                strArr2[7] = "clCTtan1hGsiTpzOnYvuaYS7HeVgH65T";
                strArr2[2] = "s0FRQ6WZgjKqiR2A5bQGQkiYgEO3ktzW";
                if (i < this.A02) {
                    C1701Zk A04 = A04(c1701Zk, 2, 0);
                    RH rh2 = new RH(A04.A07, this.A09.A5C(A04.A07), A04.A00, false, this.A03, this);
                    this.A0C.put(A04.A07.A02, rh2);
                    int i2 = this.A01;
                    this.A01 = i2 + 1;
                    if (i2 == 0) {
                        sendEmptyMessageDelayed(11, OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS);
                    }
                    rh2.start();
                    return rh2;
                }
                return null;
            }
        }
        throw new RuntimeException();
    }

    private void A09() {
        Iterator<RH> it = this.A0C.values().iterator();
        while (it.hasNext()) {
            it.next().A05(true);
        }
        try {
            this.A0A.AIU();
        } catch (IOException e) {
            AbstractC2055fb.A08(A08(2, 15, 64), A08(223, 23, 14), e);
        }
        this.A0B.clear();
        this.A08.quit();
        synchronized (this) {
            this.A00 = true;
            notifyAll();
        }
    }

    private void A0A() {
        String A08 = A08(2, 15, 64);
        ArrayList arrayList = new ArrayList();
        try {
            RO A7h = this.A0A.A7h(3, 4);
            while (A7h.A01()) {
                try {
                    arrayList.add(A7h.A00());
                } finally {
                }
            }
            if (A7h != null) {
                A7h.close();
            }
        } catch (IOException unused) {
            AbstractC2055fb.A05(A08, A08(42, 25, 1));
        }
        for (int i = 0; i < this.A0B.size(); i++) {
            this.A0B.set(i, A05(this.A0B.get(i), 5, 0));
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.A0B.add(A05((C1701Zk) arrayList.get(i2), 5, 0));
        }
        List<Download> terminalDownloads = this.A0B;
        Collections.sort(terminalDownloads, new C1717a1());
        try {
            this.A0A.AIv();
        } catch (IOException e) {
            AbstractC2055fb.A08(A08, A08(223, 23, 14), e);
        }
        ArrayList arrayList2 = new ArrayList(this.A0B);
        for (int i3 = 0; i3 < this.A0B.size(); i3++) {
            this.A07.obtainMessage(2, new C1716a0(this.A0B.get(i3), false, arrayList2, null)).sendToTarget();
        }
        A0B();
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0B() {
        /*
            r5 = this;
            r4 = 0
            r3 = 0
        L2:
            java.util.ArrayList<com.facebook.ads.redexgen.X.Zk> r0 = r5.A0B
            int r0 = r0.size()
            if (r3 >= r0) goto L49
            java.util.ArrayList<com.facebook.ads.redexgen.X.Zk> r0 = r5.A0B
            java.lang.Object r2 = r0.get(r3)
            com.facebook.ads.redexgen.X.Zk r2 = (com.facebook.ads.redexgen.core.C1701Zk) r2
            java.util.HashMap<java.lang.String, com.facebook.ads.redexgen.X.RH> r1 = r5.A0C
            com.google.android.exoplayer2.offline.DownloadRequest r0 = r2.A07
            java.lang.String r0 = r0.A02
            java.lang.Object r1 = r1.get(r0)
            com.facebook.ads.redexgen.X.RH r1 = (com.facebook.ads.redexgen.core.RH) r1
            int r0 = r2.A02
            switch(r0) {
                case 0: goto L38;
                case 1: goto L34;
                case 2: goto L2d;
                case 3: goto L23;
                case 4: goto L23;
                case 5: goto L29;
                case 6: goto L23;
                case 7: goto L29;
                default: goto L23;
            }
        L23:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        L29:
            r5.A0O(r1, r2)
            goto L3c
        L2d:
            com.facebook.ads.redexgen.core.AbstractC2011es.A01(r1)
            r5.A0P(r1, r2, r4)
            goto L3c
        L34:
            r5.A0M(r1)
            goto L3c
        L38:
            com.facebook.ads.redexgen.X.RH r1 = r5.A07(r1, r2)
        L3c:
            if (r1 == 0) goto L46
            boolean r0 = com.facebook.ads.redexgen.core.RH.A03(r1)
            if (r0 != 0) goto L46
            int r4 = r4 + 1
        L46:
            int r3 = r3 + 1
            goto L2
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.HandlerC1718a2.A0B():void");
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0C() {
        /*
            r6 = this;
            r5 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.Zk> r0 = r6.A0B
            int r0 = r0.size()
            if (r5 >= r0) goto L36
            java.util.ArrayList<com.facebook.ads.redexgen.X.Zk> r0 = r6.A0B
            java.lang.Object r2 = r0.get(r5)
            com.facebook.ads.redexgen.X.Zk r2 = (com.facebook.ads.redexgen.core.C1701Zk) r2
            int r1 = r2.A02
            r0 = 2
            if (r1 != r0) goto L33
            com.facebook.ads.redexgen.X.RD r0 = r6.A0A     // Catch: java.io.IOException -> L1c
            r0.AGN(r2)     // Catch: java.io.IOException -> L1c
            goto L33
        L1c:
            r4 = move-exception
            r2 = 2
            r1 = 15
            r0 = 64
            java.lang.String r3 = A08(r2, r1, r0)
            r2 = 223(0xdf, float:3.12E-43)
            r1 = 23
            r0 = 14
            java.lang.String r0 = A08(r2, r1, r0)
            com.facebook.ads.redexgen.core.AbstractC2055fb.A08(r3, r0, r4)
        L33:
            int r5 = r5 + 1
            goto L1
        L36:
            r2 = 11
            r0 = 5000(0x1388, double:2.4703E-320)
            r6.sendEmptyMessageDelayed(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.HandlerC1718a2.A0C():void");
    }

    private void A0E(int i) {
        this.A04 = i;
        RO ro = null;
        try {
            try {
                this.A0A.AIU();
                ro = this.A0A.A7h(0, 1, 2, 5, 7);
                while (ro.A01()) {
                    this.A0B.add(ro.A00());
                }
            } catch (IOException e) {
                AbstractC2055fb.A08(A08(2, 15, 64), A08(67, 21, 95), e);
                this.A0B.clear();
            }
            AbstractC2094gE.A10(ro);
            this.A07.obtainMessage(0, new ArrayList(this.A0B)).sendToTarget();
            A0B();
        } catch (Throwable th) {
            AbstractC2094gE.A10(ro);
            throw th;
        }
    }

    private void A0F(int i) {
        this.A02 = i;
        A0B();
    }

    private void A0G(int i) {
        this.A03 = i;
    }

    private void A0H(int i) {
        this.A04 = i;
        A0B();
    }

    private void A0I(C1701Zk c1701Zk) {
        if (c1701Zk.A02 == 7) {
            int i = c1701Zk.A03 == 0 ? 0 : 1;
            int state = c1701Zk.A03;
            A04(c1701Zk, i, state);
            A0B();
            return;
        }
        this.A0B.remove(A02(c1701Zk.A07.A02));
        try {
            this.A0A.AHX(c1701Zk.A07.A02);
        } catch (IOException unused) {
            AbstractC2055fb.A05(A08(2, 15, 64), A08(88, 30, 39));
        }
        this.A07.obtainMessage(2, new C1716a0(c1701Zk, true, new ArrayList(this.A0B), null)).sendToTarget();
    }

    private void A0J(C1701Zk c1701Zk, int i) {
        if (i == 0) {
            if (c1701Zk.A02 == 1) {
                String[] strArr = A0E;
                if (strArr[7].length() != strArr[2].length()) {
                    throw new RuntimeException();
                }
                A0E[1] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                A04(c1701Zk, 0, 0);
                return;
            }
            return;
        }
        int i2 = c1701Zk.A03;
        if (A0E[0].length() != 13) {
            A0E[5] = "gmNkl1fxoG4c55uAK63V6czVgHJPrQL";
            if (i == i2) {
                return;
            }
        } else {
            A0E[1] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (i == i2) {
                return;
            }
        }
        int i3 = c1701Zk.A02;
        if (i3 == 0 || i3 == 2) {
            i3 = 1;
        }
        A03(new C1701Zk(c1701Zk.A07, i3, c1701Zk.A05, System.currentTimeMillis(), c1701Zk.A04, i, 0, c1701Zk.A00));
    }

    private void A0K(C1701Zk c1701Zk, Exception exc) {
        C1701Zk c1701Zk2 = new C1701Zk(c1701Zk.A07, exc == null ? 3 : 4, c1701Zk.A05, System.currentTimeMillis(), c1701Zk.A04, c1701Zk.A03, exc == null ? 0 : 1, c1701Zk.A00);
        String[] strArr = A0E;
        if (strArr[3].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A0E[0] = "r5gLw2w7Harrz";
        this.A0B.remove(A02(c1701Zk2.A07.A02));
        try {
            this.A0A.AGN(c1701Zk2);
        } catch (IOException e) {
            AbstractC2055fb.A08(A08(2, 15, 64), A08(223, 23, 14), e);
        }
        this.A07.obtainMessage(2, new C1716a0(c1701Zk2, false, new ArrayList(this.A0B), exc)).sendToTarget();
    }

    private void A0L(RH rh) {
        DownloadRequest downloadRequest;
        boolean z;
        boolean z2;
        Exception exc;
        DownloadRequest downloadRequest2;
        downloadRequest = rh.A04;
        String str = downloadRequest.A02;
        this.A0C.remove(str);
        z = rh.A06;
        if (z) {
            this.A06 = false;
        } else {
            int i = this.A01 - 1;
            this.A01 = i;
            if (i == 0) {
                removeMessages(11);
            }
        }
        z2 = rh.A08;
        if (!z2) {
            exc = rh.A01;
            if (exc != null) {
                StringBuilder sb = new StringBuilder();
                String downloadId = A08(246, 13, 14);
                StringBuilder append = sb.append(downloadId);
                downloadRequest2 = rh.A04;
                StringBuilder append2 = append.append(downloadRequest2);
                String downloadId2 = A08(0, 2, 100);
                String sb2 = append2.append(downloadId2).append(z).toString();
                String downloadId3 = A08(2, 15, 64);
                AbstractC2055fb.A08(downloadId3, sb2, exc);
            }
            C1701Zk c1701Zk = (C1701Zk) AbstractC2011es.A01(A06(str, false));
            switch (c1701Zk.A02) {
                case 2:
                    AbstractC2011es.A08(!z);
                    A0K(c1701Zk, exc);
                    break;
                case 3:
                case 4:
                case 6:
                default:
                    throw new IllegalStateException();
                case 5:
                case 7:
                    AbstractC2011es.A08(z);
                    A0I(c1701Zk);
                    break;
            }
            A0B();
            return;
        }
        A0B();
    }

    private void A0M(RH rh) {
        boolean z;
        if (rh != null) {
            z = rh.A06;
            AbstractC2011es.A08(!z);
            rh.A05(false);
        }
    }

    private void A0N(RH rh, long j) {
        DownloadRequest downloadRequest;
        downloadRequest = rh.A04;
        C1701Zk c1701Zk = (C1701Zk) AbstractC2011es.A01(A06(downloadRequest.A02, false));
        if (j == c1701Zk.A04 || j == -1) {
            return;
        }
        A03(new C1701Zk(c1701Zk.A07, c1701Zk.A02, c1701Zk.A05, System.currentTimeMillis(), j, c1701Zk.A03, c1701Zk.A01, c1701Zk.A00));
    }

    private void A0O(RH rh, C1701Zk c1701Zk) {
        boolean z;
        if (rh != null) {
            z = rh.A06;
            if (z) {
                return;
            }
            String[] strArr = A0E;
            if (strArr[3].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A0E[0] = "cabchplwOtJyL";
            rh.A05(false);
            return;
        }
        if (this.A06) {
            return;
        }
        RH rh2 = new RH(c1701Zk.A07, this.A09.A5C(c1701Zk.A07), c1701Zk.A00, true, this.A03, this);
        this.A0C.put(c1701Zk.A07.A02, rh2);
        this.A06 = true;
        rh2.start();
    }

    private void A0P(RH rh, C1701Zk c1701Zk, int i) {
        boolean z;
        z = rh.A06;
        AbstractC2011es.A08(!z);
        if (!A0U() || i >= this.A02) {
            A04(c1701Zk, 0, 0);
            rh.A05(false);
        }
    }

    private void A0R(String str) {
        C1701Zk A06 = A06(str, true);
        if (A06 == null) {
            AbstractC2055fb.A05(A08(2, 15, 64), A08(118, 39, 121) + str);
        } else {
            A04(A06, 5, 0);
            A0B();
        }
    }

    private void A0S(String str, int i) {
        String A08 = A08(2, 15, 64);
        if (str == null) {
            for (int i2 = 0; i2 < this.A0B.size(); i2++) {
                A0J(this.A0B.get(i2), i);
            }
            try {
                this.A0A.AIw(i);
            } catch (IOException e) {
                AbstractC2055fb.A08(A08, A08(157, 32, 71), e);
            }
        } else {
            C1701Zk A06 = A06(str, false);
            if (A06 != null) {
                A0J(A06, i);
            } else {
                try {
                    this.A0A.AIx(str, i);
                } catch (IOException e2) {
                    AbstractC2055fb.A08(A08, A08(189, 34, 12) + str, e2);
                }
            }
        }
        A0B();
    }

    private void A0T(boolean z) {
        this.A05 = z;
        A0B();
    }

    private boolean A0U() {
        return !this.A05 && this.A04 == 0;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (BQ.A02(this)) {
            return;
        }
        boolean z = true;
        try {
            switch (message.what) {
                case 0:
                    A0E(message.arg1);
                    break;
                case 1:
                    A0T(message.arg1 != 0);
                    break;
                case 2:
                    A0H(message.arg1);
                    break;
                case 3:
                    A0S((String) message.obj, message.arg1);
                    break;
                case 4:
                    A0F(message.arg1);
                    break;
                case 5:
                    A0G(message.arg1);
                    break;
                case 6:
                    A0Q((DownloadRequest) message.obj, message.arg1);
                    break;
                case 7:
                    A0R((String) message.obj);
                    break;
                case 8:
                    A0A();
                    break;
                case 9:
                    A0L((RH) message.obj);
                    z = false;
                    break;
                case 10:
                    A0N((RH) message.obj, AbstractC2094gE.A0N(message.arg1, message.arg2));
                    return;
                case 11:
                    A0C();
                    return;
                case 12:
                    A09();
                    return;
                default:
                    throw new IllegalStateException();
            }
            this.A07.obtainMessage(1, z ? 1 : 0, this.A0C.size()).sendToTarget();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
