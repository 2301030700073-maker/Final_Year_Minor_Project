package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Ho, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1264Ho extends FrameLayout {
    public static byte[] A0C;
    public static String[] A0D = {"5vYLtEaU9MAxDoI06TlJjFfWs8tiaGj", "TX23sib3Tj6X7eJy5cgYAILp0vVPLOiW", "Lxz50jZMaNdiu", "yIxUapHBf", "xsW4qvb7U5EMj5cNQbMl14i5qh6u6uOh", "8XLPt3rjq6gnj0Cd96o3z24ZTqMdgzej", "IIODaFrLnzdPntRGftRJpuPC", "ODWlzaCdU1siup4vWOfVQK22DnthNinE"};
    public static final float A0E;
    public static final RelativeLayout.LayoutParams A0F;
    public int A00;
    public long A01;
    public InterfaceC1262Hm A02;
    public Map<String, String> A03;
    public final AbstractC2478md A04;
    public final C08982p A05;
    public final C2322k1 A06;
    public final A7 A07;
    public final F4 A08;
    public final C2119ge A09;
    public final AtomicBoolean A0A;
    public final AtomicBoolean A0B;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 9);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        String[] strArr = A0D;
        if (strArr[1].charAt(1) != strArr[5].charAt(1)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0D;
        strArr2[7] = "Af0WM9g7Nak7nSkWG18ndsMVC8MahONd";
        strArr2[4] = "VergmF1iO6RBn6aZ7U2vBdquKGl77VZm";
        A0C = new byte[]{54, 18, 32, 28, 17, 9, 17, 18, 28, 21, 49, 20, 19, 34, 49, 48, 42, 45, 36, 99, 38, 49, 49, 44, 49, 68, 120, 117, 109, 117, 118, 120, 113, 52, 112, 123, 87, 96, 117, 87, 120, 125, 119, Byte.MAX_VALUE, 52, 96, 102, 125, 115, 115, 113, 102, 113, 112, 52, 99, 125, 96, 124, 52, 100, 102, 113, 57, 113, 98, 113, 122, 96, 52, 119, 120, 125, 119, Byte.MAX_VALUE, 103, 52, 119, 123, 97, 122, 96, 52, 117, 122, 112, 52, 80, 113, 120, 117, 109, 13, 49, 60, 36, 60, 63, 49, 56, 28, 57, 46, 11, 52, 56, 42, 114, 117, 119, 121, 126, 48, 124, Byte.MAX_VALUE, 113, 116, 121, 126, 119, 48, 98, 117, 125, Byte.MAX_VALUE, 100, 117, 48, 96, 124, 113, 105, 113, 114, 124, 117, 34, 45, 40, 34, 42, 50, 5, 4, 13, 0, 24, 114, 110, 99, 123, 99, 96, 110, 103, 52, 40, 37, 61, 37, 38, 40, 33, 27, 54, 33, 41, 43, 48, 33, 95, 72, 64, 66, 89, 72, 114, 94, 72, 94, 94, 68, 66, 67, 114, 68, 73, 78, 85, 81, 95, 84, 119, 101, 98, 95, 118, 105, 101, 119};
    }

    static {
        A09();
        A0E = (int) (CP.A02 * 4.0f);
        A0F = new RelativeLayout.LayoutParams(-1, -1);
    }

    public C1264Ho(C2322k1 c2322k1, AbstractC2478md abstractC2478md, C08982p c08982p, A7 a7, InterfaceC1262Hm interfaceC1262Hm, Map<String, String> playableMetricsData) {
        super(c2322k1);
        this.A0A = new AtomicBoolean(false);
        this.A0B = new AtomicBoolean(false);
        this.A01 = -1L;
        this.A00 = 0;
        this.A08 = new C1335Kh(this);
        this.A06 = c2322k1;
        this.A04 = abstractC2478md;
        this.A05 = c08982p;
        this.A07 = a7;
        this.A02 = interfaceC1262Hm;
        this.A03 = playableMetricsData;
        this.A09 = A04();
        if (this.A05.A0M() && !this.A05.A0O()) {
            A0B();
        }
        if (C10729m.A1s(this.A06)) {
            this.A06.A0B().AJs(this.A09, this.A04.A1g(), false);
        }
        addView(this.A09, A0F);
    }

    public static /* synthetic */ int A00(C1264Ho c1264Ho) {
        int i = c1264Ho.A00;
        c1264Ho.A00 = i + 1;
        return i;
    }

    private C2119ge A04() {
        C2119ge c2119ge = new C2119ge(this.A06, (WeakReference<F4>) new WeakReference(this.A08), 10, C10729m.A20(this.A06));
        c2119ge.setCornerRadius(A0E);
        c2119ge.setLogMultipleImpressions(false);
        c2119ge.setCheckAssetsByJavascriptBridge(false);
        c2119ge.setWebViewTimeoutInMillis(this.A05.A09());
        c2119ge.setRequestId(this.A04.A0r());
        c2119ge.setOnTouchListener(new ViewOnTouchListenerC1263Hn(this, null));
        WebSettings settings = c2119ge.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setAllowFileAccess(true);
        settings.setAllowFileAccessFromFileURLs(true);
        c2119ge.addJavascriptInterface(new C1265Hp(this.A06, this, this.A07, this.A03, this.A04.A1g()), A06(0, 12, 121));
        return c2119ge;
    }

    public final void A0A() {
        long currentTimeMillis = System.currentTimeMillis() - this.A01;
        C10368b c10368b = new C10368b(A06(25, 67, 29));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A06(136, 6, 72), this.A00);
            jSONObject.put(A06(142, 5, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION), currentTimeMillis);
            jSONObject.put(A06(187, 5, 51), this.A04.A1g());
        } catch (JSONException e) {
            Log.e(A06(92, 15, 84), A06(12, 13, 74), e);
        }
        c10368b.A07(jSONObject);
        c10368b.A05(1);
        C8Z A08 = this.A06.A08();
        int i = AbstractC10358a.A2D;
        String A06 = A06(147, 8, 11);
        A08.AAv(A06, i, c10368b);
        this.A00 = 0;
        if (!C10729m.A1n(this.A06)) {
            if (this.A02 == null) {
                return;
            }
            this.A02.ACm();
            return;
        }
        if (currentTimeMillis <= C10729m.A0K(this.A06)) {
            InterfaceC1262Hm interfaceC1262Hm = this.A02;
            String[] strArr = A0D;
            if (strArr[7].charAt(0) == strArr[4].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[1] = "0XAlcIRGce3nNmobAWWNAzxTwWjfpKo1";
            strArr2[5] = "vX4VpuJxASYV4FwrDvVxGQ4QiWthZxUm";
            if (interfaceC1262Hm != null) {
                this.A02.ACm();
                return;
            }
            return;
        }
        c10368b.A05(0);
        this.A06.A08().AAu(A06, AbstractC10358a.A2E, c10368b);
    }

    public final void A0B() {
        String A0F2;
        if (this.A05.A0O()) {
            C10368b c10368b = new C10368b(A06(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 29, 25));
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(A06(170, 17, 36), this.A05.A0I());
                jSONObject.put(A06(187, 5, 51), this.A04.A1g());
            } catch (JSONException e) {
                String A06 = A06(92, 15, 84);
                String A062 = A06(12, 13, 74);
                String[] strArr = A0D;
                if (strArr[1].charAt(1) != strArr[5].charAt(1)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0D;
                strArr2[3] = "qKqF8GsLC";
                strArr2[6] = "yUBs4wOBB81EmWZp6CsNCuI0";
                Log.e(A06, A062, e);
            }
            c10368b.A07(jSONObject);
            c10368b.A05(1);
            C8Z A08 = this.A06.A08();
            int i = AbstractC10358a.A2G;
            String A063 = A06(155, 15, 77);
            A08.AAv(A063, i, c10368b);
            if (C10729m.A0q(this.A06) && AbstractC1138Cs.A00(this.A06) == EnumC1137Cr.A07) {
                this.A06.A08().AAv(A063, AbstractC10358a.A2F, c10368b);
                this.A08.AD9(0, null);
                String[] strArr3 = A0D;
                if (strArr3[1].charAt(1) != strArr3[5].charAt(1)) {
                    String[] strArr4 = A0D;
                    strArr4[7] = "eYeTyqsAvkMxTzxGPJMzaaOJBs1WoRUE";
                    strArr4[4] = "DGSgvEgHkFrTWskIwQomZOyU4ros1fyW";
                    return;
                } else {
                    String[] strArr5 = A0D;
                    strArr5[1] = "QXwUk7ZcYbXDO6xLw92fyo5XHWgn18Du";
                    strArr5[5] = "iXthj0ZXJZZP0QlicLBvNNfJ4d5EWvqr";
                    return;
                }
            }
        }
        try {
            C2119ge c2119ge = this.A09;
            if (!TextUtils.isEmpty(this.A05.A0C())) {
                A0F2 = this.A05.A0C();
            } else {
                A0F2 = this.A05.A0F();
            }
            c2119ge.loadUrl(A0F2);
        } catch (Exception e2) {
            this.A06.A08().AAu(A06(192, 8, 9), AbstractC10358a.A2f, new C10368b(e2));
        }
    }

    public final void A0C() {
        if (C10729m.A1s(this.A06)) {
            this.A06.A0B().AJZ(this.A09);
        }
        this.A09.removeJavascriptInterface(A06(0, 12, 121));
        this.A09.destroy();
    }

    public C1141Cv getTouchDataRecorder() {
        return this.A09.getTouchDataRecorder();
    }

    public JL getViewabilityChecker() {
        return this.A09.getViewabilityChecker();
    }

    public void setPlayableAdsViewListener(InterfaceC1262Hm interfaceC1262Hm) {
        this.A02 = interfaceC1262Hm;
    }
}
