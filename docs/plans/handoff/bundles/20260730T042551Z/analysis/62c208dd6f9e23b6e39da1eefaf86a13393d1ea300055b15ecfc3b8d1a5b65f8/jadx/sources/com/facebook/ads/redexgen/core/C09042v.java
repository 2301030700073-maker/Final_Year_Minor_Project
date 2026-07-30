package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.2v, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09042v {
    public static byte[] A05;
    public static String[] A06 = {"SwW", "nKJOmWTx3LjNZvOp7YbBROgXIyGkfXUh", "cNvS8LZQYgXEdOP85dYAvAy4C3J", "ICxq6EmLG0dgZi7UJ5PBV2wBsvrmCfpb", "tKedy3gZYTLe", "bmz0vq", "hvIAQTYE0cdtFIL2", "tj9oqRvQS19ndgZTuA"};
    public C10297t A00;
    public FF A01 = FF.A05;
    public ArrayList<C1241Gr> A02 = new ArrayList<>();
    public final C2S A03;
    public final InterfaceC09032u A04;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 97);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{-35, 23, 35, 28, 27, -66, -29, -23, -38, -25, -29, -42, -31, -107, -70, -25, -25, -28, -25, -107, -89, -91, -91, -85, -107, -20, -34, -23, -35, -28, -22, -23, -107, -42, -107, -21, -42, -31, -34, -39, -107, -74, -39, -66, -29, -37, -28, -93, 21, 24, 19, 24, 21, 40, 21, 19, 22, 41, 34, 24, 32, 25, -29, -14, -21, -36, -31, -38, -30, -25, -40, -23, -38, -21, -38, -26, -20, 18, 23, 16, 24, 29, 20, 19, -16, 19, -13, 16, 35, 16, -15, 36, 29, 19, 27, 20, 63, 68, 74, 59, 72, 73, 74, 63, 74, 63, 55, 66};
    }

    static {
        A06();
    }

    public C09042v(C2322k1 c2322k1, AnonymousClass38 anonymousClass38, InterfaceC09032u interfaceC09032u, String str) {
        JSONObject dataObject = anonymousClass38.A03();
        this.A03 = A01(c2322k1, anonymousClass38, str, dataObject);
        this.A04 = interfaceC09032u;
    }

    private AdError A00(C2322k1 c2322k1, AbstractC2478md abstractC2478md) {
        if (abstractC2478md == null || abstractC2478md.A1i().isEmpty()) {
            c2322k1.A08().AAu(A04(62, 3, 33), AbstractC10358a.A0Z, new C10368b(A04(5, 43, 20)));
            return AdError.internalError(AdError.INTERNAL_ERROR_2006);
        }
        return null;
    }

    public static C2S A01(C2322k1 c2322k1, AnonymousClass38 anonymousClass38, String str, JSONObject jSONObject) {
        C2S c2s = null;
        if (jSONObject.has(A04(65, 12, 24))) {
            try {
                c2s = C2476mb.A03(jSONObject, c2322k1, true);
                c2s.A13(true);
                c2s.A10(A04(96, 12, 117));
            } catch (JSONException unused) {
            }
        }
        if (c2s == null) {
            c2s = C1394Mw.A02(jSONObject, c2322k1);
        }
        c2s.A0z(str);
        C10558u A01 = anonymousClass38.A01();
        if (A01 != null) {
            c2s.A0v(A01.A06());
        }
        return c2s;
    }

    private C10297t A03(C2322k1 c2322k1) {
        return this.A00 != null ? this.A00 : new C10297t(c2322k1);
    }

    private void A08(C2322k1 c2322k1, C1394Mw c1394Mw) {
        C08982p playableData = c1394Mw.A1b().A0F().A07();
        A0B(playableData != null ? playableData.A0B() : FF.A05);
        C2467mS c2467mS = new C2467mS(this);
        C10297t c10297t = new C10297t(c2322k1);
        boolean z = C10729m.A28(c2322k1) && C7J.A0A(c1394Mw.A0u());
        if (z) {
            C7J unifiedAssetsLoader = new C7J(c10297t, c1394Mw.A0u(), c1394Mw.A0i(), c1394Mw.A0r(), z, new C2466mR(this));
            c10297t.A0d(new AF(c1394Mw.A1g(), c2322k1.A0A()));
            unifiedAssetsLoader.A0B();
            return;
        }
        AnonymousClass35.A02(c2322k1, c1394Mw, true, c2467mS);
    }

    private void A09(C2322k1 c2322k1, EnumSet<CacheFlag> enumSet, AbstractC2478md abstractC2478md, int i, InterfaceC09032u interfaceC09032u) {
        boolean A1F = abstractC2478md.A1F();
        C10297t A03 = A03(c2322k1);
        A03.A0d(new AF(abstractC2478md.A1g(), c2322k1.A0A()));
        boolean z = C10729m.A28(c2322k1) && C7J.A0A(abstractC2478md.A0u());
        if (z) {
            new C7J(A03, abstractC2478md.A0u(), abstractC2478md.A0i(), abstractC2478md.A0r(), z, new C2470mV(this, c2322k1, A1F, abstractC2478md, interfaceC09032u)).A0B();
            return;
        }
        String A04 = A04(96, 12, 117);
        if (A1F) {
            C10257p c10257p = new C10257p(abstractC2478md.A0f(), abstractC2478md.A0r(), A04);
            c10257p.A04 = true;
            c10257p.A03 = A04(0, 5, 78);
            A03.A0X(c10257p);
        }
        A03.A0c(new C10277r(abstractC2478md.A1e().A01(), C1251Hb.A04, C1251Hb.A04, abstractC2478md.A0r(), A04(96, 12, 117)));
        boolean contains = enumSet.contains(CacheFlag.VIDEO);
        int i2 = 0;
        boolean A2q = C10729m.A2q(c2322k1, J3.A03());
        for (C2T adInfo : abstractC2478md.A1i()) {
            C10277r c10277r = new C10277r(adInfo.A0F().A08(), AnonymousClass31.A00(adInfo.A0F()), AnonymousClass31.A01(adInfo.A0F()), abstractC2478md.A0r(), A04(96, 12, 117));
            if (i2 == 0) {
                A03.A0b(c10277r);
            } else {
                A03.A0c(c10277r);
            }
            Iterator<String> it = adInfo.A0I().A02().iterator();
            while (it.hasNext()) {
                A03.A0c(new C10277r(it.next(), -1, -1, abstractC2478md.A0r(), A04(96, 12, 117)));
            }
            if (contains && !TextUtils.isEmpty(adInfo.A0F().A09())) {
                C10257p c10257p2 = new C10257p(adInfo.A0F().A09(), abstractC2478md.A0r(), A04(96, 12, 117), adInfo.A0F().A06());
                c10257p2.A04 = false;
                if (i2 == 0) {
                    if (A1F && !A2q) {
                        A03.A0X(c10257p2);
                    } else {
                        A03.A0a(c10257p2);
                    }
                } else if (A1F && !A2q) {
                    A03.A0Y(c10257p2);
                } else {
                    A03.A0Z(c10257p2);
                }
            }
            i2++;
        }
        A03.A0W(new C2468mT(this, c2322k1, A1F, abstractC2478md, interfaceC09032u), new C10227m(abstractC2478md.A0r(), A04, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A(C2322k1 c2322k1, EnumSet<CacheFlag> enumSet, C2476mb c2476mb, AbstractC2478md abstractC2478md, int i, InterfaceC09032u interfaceC09032u) {
        A09(c2322k1, enumSet, abstractC2478md, i, new C2472mX(this, c2322k1, abstractC2478md, c2476mb, i, interfaceC09032u, enumSet));
    }

    private void A0B(FF ff) {
        this.A01 = ff;
    }

    private boolean A0C(C2322k1 c2322k1, AbstractC2478md abstractC2478md) {
        AdError A00 = A00(c2322k1, abstractC2478md);
        if (A00 != null) {
            this.A04.AC8(A00);
            return true;
        }
        return false;
    }

    public final C2S A0D() {
        return this.A03;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
    
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
    
        return com.facebook.ads.redexgen.core.BG.A0D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0076, code lost:
    
        return com.facebook.ads.redexgen.core.BG.A0B;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
    
        if (r3 != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.facebook.ads.redexgen.core.BG A0E() {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.2S r0 = r5.A03
            boolean r0 = r0.A1B()
            if (r0 == 0) goto Lb
            com.facebook.ads.redexgen.X.BG r0 = com.facebook.ads.redexgen.core.BG.A04
            return r0
        Lb:
            com.facebook.ads.redexgen.X.2S r4 = r5.A03
            com.facebook.ads.redexgen.X.md r4 = (com.facebook.ads.redexgen.core.AbstractC2478md) r4
            boolean r0 = r4.A1F()
            if (r0 == 0) goto L18
            com.facebook.ads.redexgen.X.BG r0 = com.facebook.ads.redexgen.core.BG.A06
            return r0
        L18:
            java.util.List r0 = r4.A1i()
            int r1 = r0.size()
            r0 = 1
            if (r1 <= r0) goto L26
            com.facebook.ads.redexgen.X.BG r0 = com.facebook.ads.redexgen.core.BG.A0A
            return r0
        L26:
            com.facebook.ads.redexgen.X.2T r0 = r4.A1b()
            com.facebook.ads.redexgen.X.2W r0 = r0.A0F()
            com.facebook.ads.redexgen.X.2p r3 = r0.A07()
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C09042v.A06
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 14
            if (r1 == r0) goto L77
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C09042v.A06
            java.lang.String r1 = "HO5lN2vl3hawZ3xdOTbB4PXxItmZOFKM"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "QabHGQsenJFHZf5mHftqzVXi6FXcwsQx"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L50
            com.facebook.ads.redexgen.X.BG r0 = com.facebook.ads.redexgen.core.BG.A0C
            return r0
        L50:
            boolean r3 = r5.A0L(r4)
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C09042v.A06
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 2
            if (r1 == r0) goto L71
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C09042v.A06
            java.lang.String r1 = "iV2CDA2M2IfUZLXvhnmiNr1pV0Sur2CQ"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "GDT4frbvCKvkZrCQcOaJTMqN9T6RIdn0"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L74
        L6e:
            com.facebook.ads.redexgen.X.BG r0 = com.facebook.ads.redexgen.core.BG.A0D
            return r0
        L71:
            if (r3 == 0) goto L74
            goto L6e
        L74:
            com.facebook.ads.redexgen.X.BG r0 = com.facebook.ads.redexgen.core.BG.A0B
            return r0
        L77:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C09042v.A0E():com.facebook.ads.redexgen.X.BG");
    }

    public final FF A0F() {
        return this.A01;
    }

    public final String A0G() {
        if (this.A03.A1B()) {
            return ((C2476mb) this.A03).A1c();
        }
        return ((AbstractC2478md) this.A03).A1g();
    }

    public final void A0H() {
        this.A04.AJc();
    }

    public final void A0I(Intent intent, RewardData rewardData, String str) {
        this.A03.A0x(rewardData);
        this.A03.A11(str);
        if (A0D().A1B()) {
            intent.putExtra(A04(77, 19, 78), this.A03);
        }
        intent.putExtra(A04(48, 14, 83), this.A03);
    }

    public final void A0J(C2322k1 c2322k1, EnumSet<CacheFlag> enumSet) {
        if (A0E() == BG.A04) {
            C2476mb c2476mb = (C2476mb) this.A03;
            AbstractC2478md A1Y = c2476mb.A1Y();
            if (A0C(c2322k1, A1Y) || A1Y == null) {
                return;
            }
            this.A04.AGg();
            A0A(c2322k1, enumSet, c2476mb, A1Y, 0, this.A04);
            return;
        }
        AbstractC2478md abstractC2478md = (AbstractC2478md) this.A03;
        if (A06[5].length() == 0) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[1] = "h3j4XQE4N9RDZ4AU6tvjsFYKX3e30HKG";
        strArr[3] = "lDhcJ7lgFtqhZjTb781X3zaoWDc2BWUc";
        if (A0C(c2322k1, abstractC2478md)) {
            return;
        }
        this.A04.AGg();
        if (A0E() == BG.A0C) {
            C1394Mw c1394Mw = (C1394Mw) this.A03;
            String[] strArr2 = A06;
            if (strArr2[2].length() != strArr2[6].length()) {
                A06[7] = "0uVLF1bkkTEn2WeYm46QMmOd1A6";
                A08(c2322k1, c1394Mw);
                return;
            } else {
                A08(c2322k1, c1394Mw);
                return;
            }
        }
        A09(c2322k1, enumSet, (C1394Mw) this.A03, -1, this.A04);
    }

    public final boolean A0K() {
        return this.A03.A17();
    }

    public final boolean A0L(AbstractC2478md abstractC2478md) {
        return !TextUtils.isEmpty(abstractC2478md.A1b().A0F().A09());
    }
}
