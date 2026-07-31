package com.hcaptcha.sdk;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.ImageLoader$Builder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptchaWebViewHelper$HCaptchaWebClient extends WebViewClient {
    public final Handler handler;
    public final /* synthetic */ ImageLoader$Builder this$0;

    public HCaptchaWebViewHelper$HCaptchaWebClient(ImageLoader$Builder imageLoader$Builder, Handler handler) {
        this.this$0 = imageLoader$Builder;
        this.handler = handler;
    }

    public static void stripUrl(String str) {
        String str2 = str.split("[?#]")[0];
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        stripUrl(str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        stripUrl(str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        stripUrl(str);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url != null && url.getScheme() != null && url.getScheme().equals("http")) {
            this.handler.post(new Processor$$ExternalSyntheticLambda2(15, this, url));
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        ImageLoader$Builder imageLoader$Builder = this.this$0;
        String uri = webResourceRequest.getUrl().toString();
        if (!uri.startsWith("sms:")) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(uri));
            intent.addFlags(268435456);
            ((Context) imageLoader$Builder.application).startActivity(intent);
            return true;
        } catch (Exception e) {
            e.getMessage();
            ((IHCaptchaVerifier) imageLoader$Builder.componentRegistry).onFailure(new HCaptchaException(HCaptchaError.INTERNAL_ERROR, "Messaging app cannot be launched"));
            return true;
        }
    }
}
