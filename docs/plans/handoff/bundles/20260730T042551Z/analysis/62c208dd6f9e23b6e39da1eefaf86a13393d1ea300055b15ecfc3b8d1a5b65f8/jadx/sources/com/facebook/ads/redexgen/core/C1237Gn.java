package com.facebook.ads.redexgen.core;

import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Gn, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1237Gn extends WebViewClient {
    public static byte[] A01;
    public static String[] A02 = {RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "6FWFK2Rjg5lzc4YxuKyAM2pjdKcDgsPX", "X8DXQa0II", "SNpKLA", "Qdf29haAswqAmNE65waVoEZq7xKg2wdQ", "zoYtBkcpJPqvxBhZCETS8Gv12yQPTvJi", "ExNOaNYHlEOFqs215y0dlBgemejMJNEa", "gJ6ZUqdzTjndwEo8cFEFcqem1uRbclUa"};
    public final /* synthetic */ C1241Gr A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] ^ i3;
            if (A02[5].charAt(10) != 'q') {
                throw new RuntimeException();
            }
            A02[5] = "pKC7szj5R0qBwTmNDTYZuLrnbbbgOopj";
            copyOfRange[i4] = (byte) (i5 ^ 33);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{98, 99, 117, 101, 116, 111, 118, 114, 111, 105, 104, 124, 113, 124, 91, 106, 121, 107, 112, 6, 17, 17, 12, 17, 32, 12, 7, 6, 90, 93, 74, 85, 95, 83, 82, 18, 85, 95, 83, 13, 17, 17, 21, 58, 0, 23, 23, 10, 23, 19, 17, 10, 12, 17, 10, 23, 26, 106, 109, 115};
    }

    static {
        A01();
    }

    public C1237Gn(C1241Gr c1241Gr) {
        this.A00 = c1241Gr;
    }

    private void A02(int i, String str, String str2, boolean z) {
        AF af;
        C2322k1 c2322k1;
        C1228Ge c1228Ge;
        if (z) {
            this.A00.A0S();
        }
        af = this.A00.A0D;
        af.A04(AE.A0Q, null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(19, 9, 66), i);
            jSONObject.put(A00(0, 11, 39), str);
            jSONObject.put(A00(57, 3, 62), str2);
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        c2322k1 = this.A00.A0B;
        c2322k1.A0F().A64(jSONObject2);
        c1228Ge = this.A00.A0E;
        c1228Ge.A04(AbstractC10358a.A16, jSONObject2);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        AF af;
        C2322k1 c2322k1;
        long j;
        InterfaceC1239Gp interfaceC1239Gp;
        InterfaceC1239Gp interfaceC1239Gp2;
        af = this.A00.A0D;
        af.A04(AE.A0R, null);
        c2322k1 = this.A00.A0B;
        InterfaceC08621f A0F = c2322k1.A0F();
        j = this.A00.A00;
        A0F.A65(C1140Cu.A01(j));
        this.A00.A0S();
        this.A00.A06 = true;
        this.A00.A0E();
        interfaceC1239Gp = this.A00.A03;
        if (interfaceC1239Gp == null) {
            return;
        }
        interfaceC1239Gp2 = this.A00.A03;
        interfaceC1239Gp2.AFp();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (Build.VERSION.SDK_INT < 23) {
            A02(i, str, str2, true);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        int errorCode = webResourceError.getErrorCode();
        StringBuilder sb = new StringBuilder();
        String A00 = A00(0, 0, 93);
        A02(errorCode, sb.append(A00).append((Object) webResourceError.getDescription()).toString(), A00 + webResourceRequest.getUrl(), true);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        int i;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceRequest.getUrl().toString().toLowerCase(Locale.US).contains(A00(28, 11, 29))) {
            return;
        }
        if (webResourceResponse != null) {
            i = webResourceResponse.getStatusCode();
        } else {
            i = -1;
        }
        A02(i, A00(39, 10, 68), A00(0, 0, 93) + webResourceRequest.getUrl(), false);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        C2322k1 c2322k1;
        AbstractC2478md abstractC2478md;
        InterfaceC1240Gq interfaceC1240Gq;
        InterfaceC1240Gq interfaceC1240Gq2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(11, 8, 57), renderProcessGoneDetail.didCrash());
            jSONObject.put(A00(49, 8, 66), renderProcessGoneDetail.rendererPriorityAtExit());
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        c2322k1 = this.A00.A0B;
        String message = A02[5];
        if (message.charAt(10) == 'q') {
            A02[3] = "cKmn9F08G0LbJgt48cswTZGSotGQ5jj";
            c2322k1.A0F().A60(jSONObject2);
            abstractC2478md = this.A00.A09;
            AbstractC1242Gs.A04(abstractC2478md.A0r());
            interfaceC1240Gq = this.A00.A04;
            if (interfaceC1240Gq != null) {
                interfaceC1240Gq2 = this.A00.A04;
                interfaceC1240Gq2.AEf();
            }
            String message2 = A02[5];
            if (message2.charAt(10) == 'q') {
                A02[3] = "Jr1n";
                return true;
            }
        }
        throw new RuntimeException();
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        C2322k1 c2322k1;
        C10297t c10297t;
        H0 h0;
        AbstractC2478md abstractC2478md;
        c2322k1 = this.A00.A0B;
        c10297t = this.A00.A0A;
        h0 = this.A00.A0H;
        abstractC2478md = this.A00.A09;
        return H2.A00(c2322k1, c10297t, webResourceRequest, h0, abstractC2478md.A16());
    }
}
