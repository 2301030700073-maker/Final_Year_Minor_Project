package org.wikipedia.page;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.bridge.CommunicationBridge;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.dataclient.okhttp.OkHttpWebViewClient;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFragment$initWebViewListeners$2 extends OkHttpWebViewClient {
    public final /* synthetic */ PageFragment this$0;

    public PageFragment$initWebViewListeners$2(PageFragment pageFragment) {
        this.this$0 = pageFragment;
    }

    @Override // org.wikipedia.dataclient.okhttp.OkHttpWebViewClient
    public final LinkHandler getLinkHandler() {
        return this.this$0.getLinkHandler();
    }

    @Override // org.wikipedia.dataclient.okhttp.OkHttpWebViewClient
    public final PageViewModel getModel() {
        return this.this$0.model;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        webView.getClass();
        str.getClass();
        PageFragment pageFragment = this.this$0;
        CommunicationBridge communicationBridge = pageFragment.bridge;
        if (communicationBridge == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        communicationBridge.communicationBridgeListener.getWebView().evaluateJavascript("(function() { return (typeof pcs !== 'undefined'); })();", new PageFragment$$ExternalSyntheticLambda21(1, pageFragment, this));
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        webView.getClass();
        webResourceRequest.getClass();
        webResourceResponse.getClass();
        String uri = webResourceRequest.getUrl().toString();
        uri.getClass();
        if (StringsKt.contains(uri, "page/mobile-html/", false)) {
            int statusCode = webResourceResponse.getStatusCode();
            String uri2 = webResourceRequest.getUrl().toString();
            uri2.getClass();
            String reasonPhrase = webResourceResponse.getReasonPhrase();
            reasonPhrase.getClass();
            try {
                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(reasonPhrase, "+", "%2B"), "UTF-8");
                decode.getClass();
                reasonPhrase = decode;
            } catch (UnsupportedEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return;
            } catch (IllegalArgumentException unused) {
                L.d("URL decoding failed. String was: ".concat(reasonPhrase));
            }
            this.this$0.onPageLoadError(new HttpStatusException(statusCode, uri2, reasonPhrase));
        }
    }
}
