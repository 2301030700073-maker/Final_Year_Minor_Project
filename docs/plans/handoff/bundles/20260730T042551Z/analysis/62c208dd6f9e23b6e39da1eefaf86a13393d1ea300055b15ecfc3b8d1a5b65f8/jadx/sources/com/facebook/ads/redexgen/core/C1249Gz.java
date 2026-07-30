package com.facebook.ads.redexgen.core;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Gz, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1249Gz {
    public static byte[] A08;
    public static String[] A09 = {"wHWy6mJnObE4TdegwzR1XIqaiMp2qzo2", "2kKTv183xGQoCJ4bH8MOQBKEcrYPubr8", "yAnU2m0QEWVpmJNiipOenY", "2CWVvRtjqdC7", "Y1Dj6sRIbzGHXk3FXnyOisKccxY5ExT7", "AAUb4pYdx4XqEM8CotKihUFr9wNvuug2", "KLTFv3N2v474XPM9CBPbC4npqkPjZQN", "uonDorlDhYGoL6YzDZYQroxkAXvFfbHU"};
    public WeakReference<C1241Gr> A00;
    public WeakReference<InterfaceC2034fG> A01 = new WeakReference<>(null);
    public boolean A02 = false;
    public final C2322k1 A03;
    public final C1228Ge A04;
    public final String A05;
    public final String A06;
    public final WeakReference<A7> A07;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 12);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        byte[] bArr = {-121, -109, -111, -111, -123, -110, -120, -110, -109, -108, -113, -93, -102, -94, 112, Byte.MAX_VALUE, 120, 107, -93, -78, -85, -85, -94, -87, -100, -96, -84, -95, -94, -86, -71, -78, -78, -87, -80, -93, -79, -87, -73, -73, -91, -85, -87, -15, 0, -7, -7, -16, -9, -22, -1, 4, -5, -16, -18, -24, -4, -56, -55, -72, -62, -67, -127, 114, -122, -124, 118, 117, 83, -118, 102, -124, 118, -125, -31, -30, -49, -32, -30, -45, -46, -80, -25, -61, -31, -45, -32, -14, -13, -32, -13, -28, -39, -42, -48, -81, -55, -35, -84, -105, -94, -85, -101};
        if (A09[5].charAt(6) == '8') {
            throw new RuntimeException();
        }
        A09[3] = "q8I1zS5uUBp9u7UYsB3eM38aYjAC";
        A08 = bArr;
    }

    static {
        A09();
    }

    public C1249Gz(C2322k1 c2322k1, C1241Gr c1241Gr, A7 a7, C1228Ge c1228Ge, String str, String str2) {
        this.A03 = c2322k1;
        this.A00 = new WeakReference<>(c1241Gr);
        this.A07 = new WeakReference<>(a7);
        this.A04 = c1228Ge;
        this.A05 = str;
        this.A06 = str2;
    }

    public static Map<String, String> A03(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        HashMap hashMap = new HashMap();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, jSONObject.optString(next));
        }
        return hashMap;
    }

    private void A04() {
        InterfaceC2034fG uxListener = this.A01.get();
        if (uxListener == null) {
            return;
        }
        uxListener.close();
        if (A09[3].length() == 20) {
            throw new RuntimeException();
        }
        String[] strArr = A09;
        strArr[2] = "rLuDNCDiUJCt8jrcDw8nHa";
        strArr[6] = "w5dFeIXZRXYPRcNf7kYaeIakMq27def";
    }

    private void A05() {
        InterfaceC2034fG uxListener = this.A01.get();
        if (uxListener == null) {
            return;
        }
        uxListener.A9a();
    }

    private void A06() {
        InterfaceC2034fG uxListener = this.A01.get();
        if (uxListener == null) {
            return;
        }
        uxListener.AAb();
    }

    private void A07() {
        this.A03.A0F().A5u();
        this.A02 = true;
        InterfaceC2034fG uxListener = this.A01.get();
        if (uxListener == null) {
            return;
        }
        uxListener.AJI();
        if (C10729m.A1s(this.A03)) {
            this.A03.A0B().ACq();
        }
    }

    private void A08() {
        InterfaceC2034fG uxActionsJavascriptListener = this.A01.get();
        if (uxActionsJavascriptListener == null) {
            return;
        }
        uxActionsJavascriptListener.ADF();
    }

    private void A0A(C1241Gr c1241Gr, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        SharedPreferences A00 = BJ.A00(this.A03);
        String A01 = A01(57, 5, 77);
        String A012 = A01(0, 0, 53);
        String storageValue = jSONObject.optString(A01, A012);
        String key = jSONObject.optString(A01(54, 3, 119), A01(7, 7, 34));
        String string = A00.getString(A01(14, 4, 0) + key, A012);
        if (string != null) {
            A012 = string;
        }
        c1241Gr.A0g(storageValue, A012);
    }

    private void A0B(C1241Gr c1241Gr, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String A01 = A01(98, 5, 42);
        String A012 = A01(0, 0, 53);
        String optString = jSONObject.optString(A01, A012);
        String optString2 = jSONObject.optString(A01(57, 5, 77), A012);
        BJ.A00(this.A03).edit().putString(A01(14, 4, 0) + jSONObject.optString(A01(54, 3, 119), A01(7, 7, 34)), optString).apply();
        c1241Gr.A0f(optString2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A0C(com.facebook.ads.redexgen.core.EnumC1247Gx r5, java.lang.String r6) throws org.json.JSONException {
        /*
            r4 = this;
            int[] r1 = com.facebook.ads.redexgen.core.C1246Gw.A00
            int r0 = r5.ordinal()
            r0 = r1[r0]
            switch(r0) {
                case 1: goto L80;
                case 2: goto L7c;
                case 3: goto L78;
                case 4: goto L74;
                case 5: goto L6b;
                case 6: goto L62;
                case 7: goto L3d;
                case 8: goto L30;
                case 9: goto L33;
                case 10: goto L2c;
                case 11: goto L2c;
                case 12: goto L2c;
                case 13: goto L2c;
                case 14: goto L2c;
                case 15: goto L23;
                case 16: goto L1f;
                case 17: goto L16;
                default: goto Lb;
            }
        Lb:
            java.lang.ref.WeakReference<com.facebook.ads.redexgen.X.Gr> r0 = r4.A00
            java.lang.Object r2 = r0.get()
            com.facebook.ads.redexgen.X.Gr r2 = (com.facebook.ads.redexgen.core.C1241Gr) r2
            if (r2 != 0) goto L89
            return
        L16:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>(r6)
            r4.A0M(r0)
            goto Lb
        L1f:
            r4.A08()
            goto Lb
        L23:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>(r6)
            r4.A0J(r0)
            goto Lb
        L2c:
            r4.A0D(r5, r6)
            goto Lb
        L30:
            r4.A05()
        L33:
            com.facebook.ads.redexgen.X.k1 r0 = r4.A03
            com.facebook.ads.redexgen.X.1f r0 = r0.A0F()
            r0.A66(r6)
            goto Lb
        L3d:
            boolean r3 = com.facebook.ads.internal.api.BuildConfigApi.isDebug()
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1249Gz.A09
            r0 = 2
            r1 = r2[r0]
            r0 = 6
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto Lb2
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1249Gz.A09
            java.lang.String r1 = "ti0FJd6QzsmsCUgFEJNk2tGDtWFDX3UL"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "2bsL1IjRD3bcdVR1Mvy0yjSySADV0GcP"
            r0 = 0
            r2[r0] = r1
            if (r3 == 0) goto Lb
            goto Lb
        L62:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>(r6)
            r4.A0L(r0)
            goto Lb
        L6b:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>(r6)
            r4.A0K(r0)
            goto Lb
        L74:
            r4.A07()
            goto Lb
        L78:
            r4.A04()
            goto Lb
        L7c:
            r4.A06()
            goto Lb
        L80:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>(r6)
            r4.A0I(r0)
            goto Lb
        L89:
            int[] r1 = com.facebook.ads.redexgen.core.C1246Gw.A00
            int r0 = r5.ordinal()
            r0 = r1[r0]
            switch(r0) {
                case 19: goto Lae;
                case 20: goto Laa;
                case 21: goto La6;
                case 22: goto La2;
                case 23: goto L95;
                default: goto L94;
            }
        L94:
            return
        L95:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>(r6)
            java.util.Map r0 = A03(r0)
            r2.A0i(r0)
            goto L94
        La2:
            r4.A0A(r2, r6)
            goto L94
        La6:
            r4.A0B(r2, r6)
            goto L94
        Laa:
            r2.A0R()
            goto L94
        Lae:
            r2.A0S()
            goto L94
        Lb2:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1249Gz.A0C(com.facebook.ads.redexgen.X.Gx, java.lang.String):void");
    }

    private void A0D(EnumC1247Gx enumC1247Gx, String str) throws JSONException {
        InterfaceC2034fG interfaceC2034fG = this.A01.get();
        if (interfaceC2034fG == null) {
        }
        switch (C1246Gw.A00[enumC1247Gx.ordinal()]) {
            case 10:
                interfaceC2034fG.ADJ();
                break;
            case 11:
                interfaceC2034fG.AF8();
                break;
            case 12:
                A0G(interfaceC2034fG, str);
                break;
            case 13:
                A0F(interfaceC2034fG, str);
                break;
            case 14:
                A0E(interfaceC2034fG, str);
                break;
        }
    }

    private void A0E(InterfaceC2034fG interfaceC2034fG, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String STATE_KEY = A01(87, 5, 115);
        interfaceC2034fG.AE9(jSONObject.optBoolean(STATE_KEY, false));
    }

    private void A0F(InterfaceC2034fG interfaceC2034fG, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String PAUSED_BY_USER_KEY = A01(62, 12, 5);
        interfaceC2034fG.AFf(jSONObject.optBoolean(PAUSED_BY_USER_KEY, false));
    }

    private void A0G(InterfaceC2034fG interfaceC2034fG, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String STARTED_BY_USER_KEY = A01(74, 13, 98);
        interfaceC2034fG.AFh(jSONObject.optBoolean(STARTED_BY_USER_KEY, false));
    }

    private void A0I(JSONObject jSONObject) {
        InterfaceC2034fG interfaceC2034fG = this.A01.get();
        if (interfaceC2034fG == null) {
            return;
        }
        String productUrl = jSONObject.optString(A01(0, 7, 24));
        if (TextUtils.isEmpty(productUrl)) {
            interfaceC2034fG.A9V();
        } else {
            interfaceC2034fG.A9W(productUrl);
        }
    }

    private void A0J(JSONObject jSONObject) {
        InterfaceC2034fG uxListener = this.A01.get();
        if (uxListener == null) {
            return;
        }
        jSONObject.optString(A01(0, 7, 24));
    }

    private void A0K(JSONObject jSONObject) {
        A7 a7 = this.A07.get();
        if (a7 == null) {
            return;
        }
        if (A09[3].length() == 20) {
            throw new RuntimeException();
        }
        A09[3] = "hDImTkFK3KoL7AYoPxXIP";
        String key = jSONObject.optString(A01(43, 11, ModuleDescriptor.MODULE_VERSION));
        if (TextUtils.isEmpty(key)) {
            return;
        }
        AF handler = new AF(this.A06, a7);
        handler.A05(key, A03(jSONObject));
    }

    private void A0L(JSONObject jSONObject) {
        int optInt = jSONObject.optInt(A01(18, 11, 49), -1);
        if (optInt == -1) {
            return;
        }
        String message = jSONObject.optString(A01(29, 14, 56));
        if (TextUtils.isEmpty(message)) {
            return;
        }
        this.A03.A0F().AAs(optInt, message);
        String[] strArr = A09;
        String message2 = strArr[2];
        String str = strArr[6];
        int length = message2.length();
        int code = str.length();
        if (length == code) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[7] = "NCNoRnun1G3dlwmqoYaN2uZPLfccAkgr";
        strArr2[0] = "12RLbgldZ9TmNXvaOMkOvzOeimlYTJg9";
    }

    private void A0M(JSONObject jSONObject) {
        InterfaceC2034fG interfaceC2034fG = this.A01.get();
        if (interfaceC2034fG == null) {
            return;
        }
        String A01 = A01(92, 6, 88);
        String[] strArr = A09;
        if (strArr[2].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[7] = "rydiERFHLfFXOcJD9tadKbqyFej0NUPk";
        strArr2[0] = "tiiagSBkZ4Sc0Tn3kexlzzs5G1JfuHdZ";
        String optString = jSONObject.optString(A01);
        if (optString == null) {
            return;
        }
        interfaceC2034fG.AFw(optString);
    }

    public final void A0N(InterfaceC2034fG interfaceC2034fG) {
        this.A01 = new WeakReference<>(interfaceC2034fG);
    }

    public final boolean A0O() {
        return this.A02;
    }

    @JavascriptInterface
    public void postMessage(String str) {
        ExecutorC1143Cx.A00(new RunnableC1245Gv(this, str));
    }
}
