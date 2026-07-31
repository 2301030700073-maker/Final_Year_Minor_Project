package org.wikipedia.dataclient.okhttp;

import android.view.KeyEvent;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.room.Room;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.RealCall;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.SessionData;
import org.wikipedia.analytics.eventplatform.AppSessionEvent;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.LinkHandler;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageViewModel;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.util.MathUtil$Averaged;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OkHttpWebViewClient extends WebViewClient {
    public static final List SUPPORTED_SCHEMES = Room.listOf((Object[]) new String[]{"http", "https"});

    public abstract LinkHandler getLinkHandler();

    public abstract PageViewModel getModel();

    public final Response request(WebResourceRequest webResourceRequest) {
        String str;
        Request.Builder builder = new Request.Builder(0);
        String uri = webResourceRequest.getUrl().toString();
        uri.getClass();
        builder.url(uri);
        builder.cacheControl(getModel().forceNetwork ? OkHttpConnectionFactory.CACHE_CONTROL_FORCE_NETWORK : OkHttpConnectionFactory.CACHE_CONTROL_NONE);
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        requestHeaders.getClass();
        for (Map.Entry<String, String> entry : requestHeaders.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!Intrinsics.areEqual(key, "If-None-Match") && !Intrinsics.areEqual(key, "If-Modified-Since") && value != null) {
                key.getClass();
                builder.header(key, value);
            }
        }
        OkHttpClient okHttpClient = OkHttpConnectionFactory.client;
        PageTitle pageTitle = (PageTitle) getModel().title;
        if (pageTitle != null) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            builder.header("Accept-Language", Jsoup.getInstance().getAcceptLanguage(pageTitle.wikiSite));
            if (((ReadingListPage) getModel().readingListPage) != null) {
                builder.header("X-Offline-Save", "save");
            }
            builder.header("X-Offline-Lang", pageTitle.wikiSite.languageCode);
            try {
                String encode = URLEncoder.encode(pageTitle.getPrefixedText(), "UTF-8");
                encode.getClass();
                builder.header("X-Offline-Title", StringsKt__StringsJVMKt.replace$default(encode, "+", "%20"));
                HistoryEntry historyEntry = (HistoryEntry) getModel().curEntry;
                if (historyEntry != null && (str = historyEntry.referrer) != null && str.length() > 0) {
                    builder.header("Referer", str);
                }
                String path = webResourceRequest.getUrl().getPath();
                if (path != null && StringsKt.contains(path, "page/mobile-html/", false)) {
                    builder.header("X-Analytics", "pageview=1");
                }
            } catch (UnsupportedEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            }
        }
        Request request = new Request(builder);
        okHttpClient.getClass();
        return new RealCall(okHttpClient, request).execute();
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        String str = "Unknown error";
        webView.getClass();
        webResourceRequest.getClass();
        if (CollectionsKt.contains(SUPPORTED_SCHEMES, webResourceRequest.getUrl().getScheme()) && !Intrinsics.areEqual(webResourceRequest.getMethod(), "POST")) {
            String uri = webResourceRequest.getUrl().toString();
            uri.getClass();
            if (!StringsKt.contains(uri, "transform/wikitext/to/mobile-html/", false) && !webResourceRequest.getRequestHeaders().containsKey("Range") && !webResourceRequest.getRequestHeaders().containsKey("range")) {
                try {
                    String encodedPath = webResourceRequest.getUrl().getEncodedPath();
                    boolean z = encodedPath != null && StringsKt.contains(encodedPath, "page/mobile-html/", false);
                    if (z) {
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        AppSessionEvent appSessionEvent = Jsoup.getInstance().getAppSessionEvent();
                        appSessionEvent.getClass();
                        appSessionEvent.pageLoadStartTime = System.nanoTime();
                    }
                    Response request = request(webResourceRequest);
                    ResponseBody responseBody = request.body;
                    if (request.networkResponse != null && z) {
                        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                        AppSessionEvent appSessionEvent2 = Jsoup.getInstance().getAppSessionEvent();
                        SessionData sessionData = appSessionEvent2.sessionData;
                        long nanoTime = System.nanoTime() - appSessionEvent2.pageLoadStartTime;
                        MathUtil$Averaged mathUtil$Averaged = sessionData.pageLatency;
                        mathUtil$Averaged.sampleSum = Long.valueOf(nanoTime / 1000000).doubleValue() + mathUtil$Averaged.sampleSum;
                        mathUtil$Averaged.sampleSize++;
                    }
                    String header = request.header("content-type", null);
                    if (header == null) {
                        header = "";
                    }
                    if (!StringsKt__StringsJVMKt.startsWith(header, "audio", false) && !StringsKt__StringsJVMKt.startsWith(header, "video", false)) {
                        responseBody.getClass();
                        MediaType contentType = responseBody.contentType();
                        contentType.getClass();
                        String str2 = contentType.type;
                        MediaType contentType2 = responseBody.contentType();
                        contentType2.getClass();
                        String str3 = str2 + "/" + contentType2.subtype;
                        MediaType contentType3 = responseBody.contentType();
                        contentType3.getClass();
                        Charset charset = contentType3.charset(Charset.defaultCharset());
                        charset.getClass();
                        String name = charset.name();
                        int i = request.code;
                        String str4 = request.message;
                        return new WebResourceResponse(str3, name, i, StringsKt.isBlank(str4) ? "Unknown error" : str4, MapsKt__MapsKt.toMap(request.headers), responseBody.source().inputStream());
                    }
                    request.close();
                    return null;
                } catch (Exception e) {
                    String message = e.getMessage();
                    if (message != null && message.length() != 0) {
                        String message2 = e.getMessage();
                        message2.getClass();
                        try {
                            String encode = URLEncoder.encode(message2, "UTF-8");
                            encode.getClass();
                            str = StringsKt__StringsJVMKt.replace$default(encode, "+", "%20");
                        } catch (UnsupportedEncodingException e2) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                            return null;
                        }
                    }
                    String str5 = str;
                    WebResourceResponse webResourceResponse = e instanceof HttpStatusException ? new WebResourceResponse(null, null, ((HttpStatusException) e).code, str5, null, null) : new WebResourceResponse(null, null, 500, str5, null, null);
                    L.e(e);
                    return webResourceResponse;
                }
            }
        }
        return null;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        webView.getClass();
        keyEvent.getClass();
        if (keyEvent.isCtrlPressed() && keyEvent.getKeyCode() == 34) {
            return true;
        }
        return !keyEvent.isCtrlPressed() && keyEvent.getKeyCode() == 133;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        webView.getClass();
        str.getClass();
        if (!getModel().getShouldLoadAsMobileWeb()) {
            return false;
        }
        LinkHandler linkHandler = getLinkHandler();
        try {
            String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(str, "+", "%2B"), "UTF-8");
            decode.getClass();
            str = decode;
        } catch (UnsupportedEncodingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return false;
        } catch (IllegalArgumentException unused) {
            L.d("URL decoding failed. String was: ".concat(str));
        }
        linkHandler.onUrlClick(str, null, "");
        return true;
    }
}
