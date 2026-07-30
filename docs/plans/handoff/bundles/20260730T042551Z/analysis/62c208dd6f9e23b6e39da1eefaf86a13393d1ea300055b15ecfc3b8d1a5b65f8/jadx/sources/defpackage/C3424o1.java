package defpackage;

import android.content.pm.PackageInfo;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* renamed from: o1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3424o1 {
    /* renamed from: do, reason: not valid java name */
    public static PackageInfo m7648do() {
        PackageInfo currentWebViewPackage;
        currentWebViewPackage = WebView.getCurrentWebViewPackage();
        return currentWebViewPackage;
    }

    /* renamed from: for, reason: not valid java name */
    public static WebChromeClient m7649for(WebView webView) {
        WebChromeClient webChromeClient;
        webChromeClient = webView.getWebChromeClient();
        return webChromeClient;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m7650if(WebSettings webSettings) {
        boolean safeBrowsingEnabled;
        safeBrowsingEnabled = webSettings.getSafeBrowsingEnabled();
        return safeBrowsingEnabled;
    }

    /* renamed from: new, reason: not valid java name */
    public static WebViewClient m7651new(WebView webView) {
        WebViewClient webViewClient;
        webViewClient = webView.getWebViewClient();
        return webViewClient;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7652try(WebSettings webSettings, boolean z) {
        webSettings.setSafeBrowsingEnabled(z);
    }
}
