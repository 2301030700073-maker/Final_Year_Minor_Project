package com.propertyguru.webkit;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.app.NotificationCompat;
import androidx.webkit.WebViewFeature;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.RCTEventEmitter;
import com.propertyguru.webkit.IncognitoWebView;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: IncognitoWebView.kt */
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\b\u0006*\u0001,\u0018\u0000 .2\u00020\u0001:\u0003./0B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR\"\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R(\u0010&\u001a\u0004\u0018\u00010\t2\b\u0010%\u001a\u0004\u0018\u00010\t@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0010\u0010+\u001a\u00020,X\u0082\u0004¢\u0006\u0004\n\u0002\u0010-¨\u00061"}, d2 = {"Lcom/propertyguru/webkit/IncognitoWebView;", "Landroid/webkit/WebView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "chromeClient", "Lcom/propertyguru/webkit/IncognitoWebViewChromeClient;", "authorization", "Lcom/facebook/react/bridge/ReadableMap;", "shouldDispatchLoadStartEvent", "", "getShouldDispatchLoadStartEvent", "()Z", "setShouldDispatchLoadStartEvent", "(Z)V", "shouldDispatchLoadEndEvent", "getShouldDispatchLoadEndEvent", "setShouldDispatchLoadEndEvent", "shouldDispatchErrorEvent", "getShouldDispatchErrorEvent", "setShouldDispatchErrorEvent", "shouldDispatchOnLinkPressedEvent", "getShouldDispatchOnLinkPressedEvent", "setShouldDispatchOnLinkPressedEvent", "interceptLinks", "", "", "getInterceptLinks", "()Ljava/util/List;", "setInterceptLinks", "(Ljava/util/List;)V", "injectedJavaScript", "getInjectedJavaScript", "()Ljava/lang/String;", "setInjectedJavaScript", "(Ljava/lang/String;)V", "value", "source", "getSource", "()Lcom/facebook/react/bridge/ReadableMap;", "setSource", "(Lcom/facebook/react/bridge/ReadableMap;)V", "webClient", "com/propertyguru/webkit/IncognitoWebView$webClient$1", "Lcom/propertyguru/webkit/IncognitoWebView$webClient$1;", "Companion", "WebResourceErrorX", "DeprecatedWebResourceRequest", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class IncognitoWebView extends WebView {
    private static final String BLANK_URL = "about:blank";

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String EVENT_ON_ERROR = "onError";
    public static final String EVENT_ON_LINK_PRESSED = "onLinkPressed";
    public static final String EVENT_ON_LOAD_END = "onLoadEnd";
    public static final String EVENT_ON_LOAD_START = "onLoadStart";
    private static final String TAG = "IncognitoWebView";
    private ReadableMap authorization;
    private final IncognitoWebViewChromeClient chromeClient;
    private String injectedJavaScript;
    private List<String> interceptLinks;
    private boolean shouldDispatchErrorEvent;
    private boolean shouldDispatchLoadEndEvent;
    private boolean shouldDispatchLoadStartEvent;
    private boolean shouldDispatchOnLinkPressedEvent;
    private ReadableMap source;
    private final IncognitoWebView$webClient$1 webClient;

    /* compiled from: IncognitoWebView.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/propertyguru/webkit/IncognitoWebView$WebResourceErrorX;", "", "<init>", "()V", "errorCode", "", "getErrorCode", "()I", "description", "", "getDescription", "()Ljava/lang/CharSequence;", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class WebResourceErrorX {
        public abstract CharSequence getDescription();

        /* renamed from: getErrorCode */
        public abstract int get$errorCode();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.propertyguru.webkit.IncognitoWebView$webClient$1] */
    public IncognitoWebView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        IncognitoWebViewChromeClient incognitoWebViewChromeClient = new IncognitoWebViewChromeClient(context);
        this.chromeClient = incognitoWebViewChromeClient;
        ?? r4 = new WebViewClient() { // from class: com.propertyguru.webkit.IncognitoWebView$webClient$1
            private boolean lastLoadFailed;

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(request, "request");
                List<String> interceptLinks = IncognitoWebView.this.getInterceptLinks();
                if (interceptLinks == null) {
                    return super.shouldOverrideUrlLoading(view, request);
                }
                String uri = request.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
                for (String str : interceptLinks) {
                    if (Intrinsics.areEqual(uri, str) || new Regex(str).containsMatchIn(uri)) {
                        WritableMap createMap = Arguments.createMap();
                        createMap.putString("url", uri);
                        Intrinsics.checkNotNull(createMap);
                        IncognitoWebView.INSTANCE.dispatchEvent(view, IncognitoWebView.EVENT_ON_LINK_PRESSED, createMap);
                        return true;
                    }
                }
                return super.shouldOverrideUrlLoading(view, request);
            }

            /* JADX WARN: Code restructure failed: missing block: B:2:0x0002, code lost:
            
                r0 = r3.this$0.authorization;
             */
            @Override // android.webkit.WebViewClient
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onReceivedHttpAuthRequest(android.webkit.WebView r4, android.webkit.HttpAuthHandler r5, java.lang.String r6, java.lang.String r7) {
                /*
                    r3 = this;
                    if (r5 == 0) goto L26
                    com.propertyguru.webkit.IncognitoWebView r0 = com.propertyguru.webkit.IncognitoWebView.this
                    com.facebook.react.bridge.ReadableMap r0 = com.propertyguru.webkit.IncognitoWebView.access$getAuthorization$p(r0)
                    if (r0 == 0) goto L26
                    java.lang.String r1 = "basic"
                    com.facebook.react.bridge.ReadableMap r0 = r0.getMap(r1)
                    if (r0 == 0) goto L26
                    java.lang.String r1 = "username"
                    java.lang.String r1 = r0.getString(r1)
                    if (r1 == 0) goto L26
                    java.lang.String r2 = "password"
                    java.lang.String r0 = r0.getString(r2)
                    if (r0 == 0) goto L26
                    r5.proceed(r1, r0)
                    return
                L26:
                    super.onReceivedHttpAuthRequest(r4, r5, r6, r7)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.propertyguru.webkit.IncognitoWebView$webClient$1.onReceivedHttpAuthRequest(android.webkit.WebView, android.webkit.HttpAuthHandler, java.lang.String, java.lang.String):void");
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                WritableMap baseEvent;
                this.lastLoadFailed = false;
                if (view == null) {
                    return;
                }
                baseEvent = IncognitoWebView.INSTANCE.baseEvent(view, url);
                IncognitoWebView.INSTANCE.dispatchEvent(view, IncognitoWebView.EVENT_ON_LOAD_START, baseEvent);
                super.onPageStarted(view, url, favicon);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                WritableMap baseEvent;
                if (this.lastLoadFailed) {
                    super.onPageFinished(view, url);
                    return;
                }
                if (view == null) {
                    return;
                }
                baseEvent = IncognitoWebView.INSTANCE.baseEvent(view, url);
                IncognitoWebView.INSTANCE.dispatchEvent(view, IncognitoWebView.EVENT_ON_LOAD_END, baseEvent);
                String injectedJavaScript = IncognitoWebView.this.getInjectedJavaScript();
                if (injectedJavaScript != null) {
                    view.loadUrl(injectedJavaScript);
                }
                super.onPageFinished(view, url);
            }

            @Override // android.webkit.WebViewClient
            @Deprecated(message = "Deprecated in Java")
            public void onReceivedError(WebView view, final int errorCode, final String description, String failingUrl) {
                Uri uri;
                this.lastLoadFailed = true;
                if (view == null) {
                    view = IncognitoWebView.this;
                }
                if (failingUrl == null || (uri = Uri.parse(failingUrl)) == null) {
                    uri = Uri.EMPTY;
                }
                Intrinsics.checkNotNull(uri);
                handleError(view, new IncognitoWebView.DeprecatedWebResourceRequest(uri), new IncognitoWebView.WebResourceErrorX() { // from class: com.propertyguru.webkit.IncognitoWebView$webClient$1$onReceivedError$error$1
                    @Override // com.propertyguru.webkit.IncognitoWebView.WebResourceErrorX
                    public CharSequence getDescription() {
                        String str = description;
                        if (str == null) {
                            str = String.valueOf(errorCode);
                        }
                        return str;
                    }

                    @Override // com.propertyguru.webkit.IncognitoWebView.WebResourceErrorX
                    /* renamed from: getErrorCode, reason: from getter */
                    public int get$errorCode() {
                        return errorCode;
                    }
                });
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, WebResourceRequest request, final WebResourceError error) {
                this.lastLoadFailed = true;
                if (view == null || request == null || error == null) {
                    return;
                }
                handleError(view, request, new IncognitoWebView.WebResourceErrorX() { // from class: com.propertyguru.webkit.IncognitoWebView$webClient$1$onReceivedError$compatibleError$1
                    @Override // com.propertyguru.webkit.IncognitoWebView.WebResourceErrorX
                    public CharSequence getDescription() {
                        CharSequence description = error.getDescription();
                        Intrinsics.checkNotNullExpressionValue(description, "getDescription(...)");
                        return description;
                    }

                    @Override // com.propertyguru.webkit.IncognitoWebView.WebResourceErrorX
                    /* renamed from: getErrorCode */
                    public int get$errorCode() {
                        return error.getErrorCode();
                    }
                });
            }

            private final void handleError(WebView view, WebResourceRequest request, IncognitoWebView.WebResourceErrorX error) {
                WritableMap baseEvent;
                baseEvent = IncognitoWebView.INSTANCE.baseEvent(view, request.getUrl().toString());
                if (WebViewFeature.isFeatureSupported("WEB_RESOURCE_ERROR_GET_CODE")) {
                    baseEvent.putInt("errorCode", error.get$errorCode());
                }
                if (WebViewFeature.isFeatureSupported("WEB_RESOURCE_ERROR_GET_DESCRIPTION")) {
                    baseEvent.putString("errorDescription", error.getDescription().toString());
                }
                IncognitoWebView.INSTANCE.dispatchEvent(view, IncognitoWebView.EVENT_ON_ERROR, baseEvent);
            }
        };
        this.webClient = r4;
        getSettings().setCacheMode(2);
        getSettings().setSupportMultipleWindows(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setJavaScriptEnabled(true);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        setWebViewClient((WebViewClient) r4);
        setWebChromeClient(incognitoWebViewChromeClient);
    }

    /* compiled from: IncognitoWebView.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002J\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0003R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/propertyguru/webkit/IncognitoWebView$Companion;", "", "<init>", "()V", "TAG", "", "getTAG$annotations", "EVENT_ON_LOAD_START", "EVENT_ON_LOAD_END", "EVENT_ON_ERROR", "EVENT_ON_LINK_PRESSED", "BLANK_URL", "baseEvent", "Lcom/facebook/react/bridge/WritableMap;", "webView", "Landroid/webkit/WebView;", "url", "dispatchEvent", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "eventName", NotificationCompat.CATEGORY_EVENT, "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static /* synthetic */ void getTAG$annotations() {
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final WritableMap baseEvent(WebView webView, String url) {
            WritableMap createMap = Arguments.createMap();
            if (url != null) {
                createMap.putString("url", url);
            }
            String title = webView.getTitle();
            if (title == null || StringsKt.isBlank(title)) {
                createMap.putString("title", webView.getTitle());
            }
            createMap.putBoolean("canGoBack", webView.canGoBack());
            createMap.putBoolean("canGoForward", webView.canGoForward());
            createMap.putBoolean("loading", webView.getProgress() != 100);
            Intrinsics.checkNotNull(createMap);
            return createMap;
        }

        public final void dispatchEvent(View view, String eventName, WritableMap event) {
            RCTEventEmitter rCTEventEmitter;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            Intrinsics.checkNotNullParameter(event, "event");
            Context context = view.getContext();
            ReactContext reactContext = context instanceof ReactContext ? (ReactContext) context : null;
            if (reactContext == null || (rCTEventEmitter = (RCTEventEmitter) reactContext.getJSModule(RCTEventEmitter.class)) == null) {
                return;
            }
            rCTEventEmitter.receiveEvent(view.getId(), eventName, event);
        }
    }

    public final boolean getShouldDispatchLoadStartEvent() {
        return this.shouldDispatchLoadStartEvent;
    }

    public final void setShouldDispatchLoadStartEvent(boolean z) {
        this.shouldDispatchLoadStartEvent = z;
    }

    public final boolean getShouldDispatchLoadEndEvent() {
        return this.shouldDispatchLoadEndEvent;
    }

    public final void setShouldDispatchLoadEndEvent(boolean z) {
        this.shouldDispatchLoadEndEvent = z;
    }

    public final boolean getShouldDispatchErrorEvent() {
        return this.shouldDispatchErrorEvent;
    }

    public final void setShouldDispatchErrorEvent(boolean z) {
        this.shouldDispatchErrorEvent = z;
    }

    public final boolean getShouldDispatchOnLinkPressedEvent() {
        return this.shouldDispatchOnLinkPressedEvent;
    }

    public final void setShouldDispatchOnLinkPressedEvent(boolean z) {
        this.shouldDispatchOnLinkPressedEvent = z;
    }

    public final List<String> getInterceptLinks() {
        return this.interceptLinks;
    }

    public final void setInterceptLinks(List<String> list) {
        this.interceptLinks = list;
    }

    public final String getInjectedJavaScript() {
        return this.injectedJavaScript;
    }

    public final void setInjectedJavaScript(String str) {
        this.injectedJavaScript = str;
    }

    public final ReadableMap getSource() {
        return this.source;
    }

    public final void setSource(ReadableMap readableMap) {
        Uri parse;
        this.source = readableMap;
        if (readableMap != null) {
            if (!readableMap.hasKey("uri")) {
                readableMap = null;
            }
            if (readableMap != null) {
                String string = readableMap.getString("uri");
                String str = string;
                if (str == null || str.length() == 0) {
                    string = null;
                }
                if (string == null || (parse = Uri.parse(string)) == null) {
                    loadUrl(BLANK_URL);
                    return;
                }
                this.authorization = readableMap.hasKey("authorization") ? readableMap.getMap("authorization") : null;
                String scheme = parse.getScheme();
                if (scheme == null) {
                    throw new IllegalArgumentException("invalid uri, missing Scheme");
                }
                String host = parse.getHost();
                if (host == null) {
                    throw new IllegalArgumentException("invalid uri, missing Host");
                }
                ReadableArray array = readableMap.hasKey("cookies") ? readableMap.getArray("cookies") : null;
                if (array != null) {
                    android.webkit.CookieManager cookieManager = android.webkit.CookieManager.getInstance();
                    int size = array.size();
                    for (int i = 0; i < size; i++) {
                        cookieManager.setCookie(scheme + "://" + host, array.getString(i));
                    }
                }
                loadUrl(parse.toString());
                return;
            }
        }
        loadUrl(BLANK_URL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IncognitoWebView.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\u0014\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\fH\u0016J\b\u0010\r\u001a\u00020\bH\u0016J\b\u0010\u000e\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/propertyguru/webkit/IncognitoWebView$DeprecatedWebResourceRequest;", "Landroid/webkit/WebResourceRequest;", "uri", "Landroid/net/Uri;", "<init>", "(Landroid/net/Uri;)V", "getUrl", "isRedirect", "", "getMethod", "", "getRequestHeaders", "", "hasGesture", "isForMainFrame", "propertyguru_react-native-webkit_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    static final class DeprecatedWebResourceRequest implements WebResourceRequest {
        private final Uri uri;

        @Override // android.webkit.WebResourceRequest
        public boolean hasGesture() {
            return true;
        }

        @Override // android.webkit.WebResourceRequest
        public boolean isForMainFrame() {
            return true;
        }

        @Override // android.webkit.WebResourceRequest
        public boolean isRedirect() {
            return false;
        }

        public DeprecatedWebResourceRequest(Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
        }

        @Override // android.webkit.WebResourceRequest
        public Uri getUrl() {
            return this.uri;
        }

        @Override // android.webkit.WebResourceRequest
        public String getMethod() {
            return "GET";
        }

        @Override // android.webkit.WebResourceRequest
        public Map<String, String> getRequestHeaders() {
            return new LinkedHashMap();
        }
    }
}
