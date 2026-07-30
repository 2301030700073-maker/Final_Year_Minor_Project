package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ey, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1196Ey extends WebViewClient {
    public static byte[] A05;
    public InterfaceC1192Eu A00 = new InterfaceC1192Eu() { // from class: com.facebook.ads.redexgen.X.hB
        @Override // com.facebook.ads.redexgen.core.InterfaceC1192Eu
        public final boolean AAU(String str) {
            return C1196Ey.A04(str);
        }
    };
    public WeakReference<InterfaceC1194Ew> A01 = new WeakReference<>(null);
    public final WeakReference<C2322k1> A02;
    public final WeakReference<InterfaceC1193Ev> A03;
    public final WeakReference<C1189Er> A04;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 44);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{28, 31, 18, 8, 9, 71, 31, 17, 28, 19, 22, 37, 42, 27, 37, 39, 48, 45, 50, 45, 48, 61, 12, 3, 9, 31, 2, 4, 9, 67, 4, 3, 25, 8, 3, 25, 67, 12, 14, 25, 4, 2, 3, 67, 59, 36, 40, 58, 119, 120, 114, 100, 121, Byte.MAX_VALUE, 114, 56, Byte.MAX_VALUE, 120, 98, 115, 120, 98, 56, 117, 119, 98, 115, 113, 121, 100, 111, 56, 84, 68, 89, 65, 69, 87, 84, 90, 83, 117, 101, 120, 96, 100, 114, 101, 72, 113, 118, 123, 123, 117, 118, 116, 124, 72, 98, 101, 123, 51, 54, 35, 54, 97, 102, 124, 109, 102, 124, 2, 5, 27, 77, 87, 31, 13, 10, 55, 30, 1, 13, 31};
    }

    public C1196Ey(WeakReference<C2322k1> weakReference, WeakReference<InterfaceC1193Ev> weakReference2, WeakReference<C1189Er> weakReference3) {
        this.A02 = weakReference;
        this.A03 = weakReference2;
        this.A04 = weakReference3;
    }

    private void A02(String str, C2322k1 c2322k1) {
        c2322k1.A08().AAu(A00(11, 11, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION), AbstractC10358a.A09, new C10368b(A00(FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 5, 91) + str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x015f, code lost:
    
        if (r0.contains(r2) == false) goto L64;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A03(android.webkit.WebView r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1196Ey.A03(android.webkit.WebView, java.lang.String):boolean");
    }

    public static /* synthetic */ boolean A04(String str) {
        return true;
    }

    public final void A05(InterfaceC1192Eu interfaceC1192Eu) {
        this.A00 = interfaceC1192Eu;
    }

    public final void A06(WeakReference<InterfaceC1194Ew> weakReference) {
        this.A01 = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        C1189Er timingLogger = this.A04.get();
        if (timingLogger != null) {
            timingLogger.A03();
        }
        InterfaceC1193Ev interfaceC1193Ev = this.A03.get();
        if (interfaceC1193Ev != null) {
            interfaceC1193Ev.AEM(str);
        }
        InterfaceC1194Ew interfaceC1194Ew = this.A01.get();
        if (interfaceC1194Ew != null) {
            interfaceC1194Ew.ACT(webView.canGoBack());
            interfaceC1194Ew.ADC(webView.canGoForward());
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        InterfaceC1193Ev listener = this.A03.get();
        if (listener != null) {
            listener.AEO(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        C2322k1 c2322k1 = this.A02.get();
        if (c2322k1 != null) {
            StringBuilder sb = new StringBuilder();
            String A00 = A00(0, 0, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD);
            String errorMessage = CT.A01(i, sb.append(A00).append(str).toString(), A00 + str2);
            c2322k1.A0F().A9p(errorMessage);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        C2322k1 c2322k1 = this.A02.get();
        if (c2322k1 != null) {
            int errorCode = webResourceError.getErrorCode();
            StringBuilder sb = new StringBuilder();
            String A00 = A00(0, 0, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD);
            String errorMessage = CT.A01(errorCode, sb.append(A00).append((Object) webResourceError.getDescription()).toString(), A00 + webResourceRequest.getUrl());
            c2322k1.A0F().A9p(errorMessage);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        C2322k1 context = this.A02.get();
        if (context != null) {
            context.A0F().A9q();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        C2322k1 context = this.A02.get();
        if (context != null) {
            context.A0F().A9r();
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        F1.A02(AbstractC10358a.A2e);
        InterfaceC1193Ev listener = this.A03.get();
        if (listener != null) {
            listener.AEo();
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return A03(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return A03(webView, str);
    }
}
