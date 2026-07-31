package org.wikipedia.bridge;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonObject;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.bridge.CommunicationBridge;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageViewModel;
import org.wikipedia.util.log.L;
import org.wikipedia.views.ObservableWebView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CommunicationBridge {
    public final CommunicationBridgeListener communicationBridgeListener;
    public Handler incomingMessageHandler;
    public boolean isMetadataReady;
    public boolean isPcsReady;
    public final HashMap eventListeners = new HashMap();
    public final ArrayList pendingJSMessages = new ArrayList();
    public final HashMap pendingEvals = new HashMap();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class BridgeMessage {
        public static final Companion Companion = new Companion();
        public final String action;
        public final JsonObject data;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return CommunicationBridge$BridgeMessage$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ BridgeMessage(int i, String str, JsonObject jsonObject) {
            this.action = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.data = null;
            } else {
                this.data = jsonObject;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CommunicatingChrome extends WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            consoleMessage.getClass();
            L.d(consoleMessage.sourceId() + ":" + consoleMessage.lineNumber() + " - " + consoleMessage.message());
            return true;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface CommunicationBridgeListener {
        int getMessageCardHeight();

        PageViewModel getModel();

        int getToolbarMargin();

        ObservableWebView getWebView();

        boolean isPreview();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface JSEventListener {
        void onMessage(String str, JsonObject jsonObject);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PcsClientJavascriptInterface {
        public PcsClientJavascriptInterface() {
        }

        @JavascriptInterface
        public final synchronized String getSetupSettings() {
            Context context;
            PageTitle pageTitle;
            context = CommunicationBridge.this.communicationBridgeListener.getWebView().getContext();
            context.getClass();
            pageTitle = (PageTitle) CommunicationBridge.this.communicationBridgeListener.getModel().title;
            pageTitle.getClass();
            return HttpUrl.Companion.setUp(context, pageTitle, CommunicationBridge.this.communicationBridgeListener.isPreview(), CommunicationBridge.this.communicationBridgeListener.getToolbarMargin(), CommunicationBridge.this.communicationBridgeListener.getMessageCardHeight());
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x003b A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:4:0x0003, B:6:0x0009, B:9:0x0013, B:13:0x0037, B:15:0x003b, B:16:0x004f, B:18:0x001c, B:21:0x0033), top: B:3:0x0003, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004f A[Catch: all -> 0x0010, TRY_LEAVE, TryCatch #0 {all -> 0x0010, blocks: (B:4:0x0003, B:6:0x0009, B:9:0x0013, B:13:0x0037, B:15:0x003b, B:16:0x004f, B:18:0x001c, B:21:0x0033), top: B:3:0x0003, inners: #1 }] */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final synchronized void onReceiveMessage(java.lang.String r6) {
            /*
                r5 = this;
                java.lang.String r0 = "Received malformed message: "
                monitor-enter(r5)
                org.wikipedia.bridge.CommunicationBridge r1 = org.wikipedia.bridge.CommunicationBridge.this     // Catch: java.lang.Throwable -> L10
                android.os.Handler r1 = r1.incomingMessageHandler     // Catch: java.lang.Throwable -> L10
                if (r1 == 0) goto L60
                kotlinx.serialization.json.JsonImpl r1 = org.wikipedia.json.JsonUtil.json     // Catch: java.lang.Throwable -> L10
                if (r6 != 0) goto L12
                java.lang.String r1 = ""
                goto L13
            L10:
                r6 = move-exception
                goto L62
            L12:
                r1 = r6
            L13:
                int r2 = r1.length()     // Catch: java.lang.Throwable -> L10
                r3 = 0
                if (r2 != 0) goto L1c
            L1a:
                r1 = r3
                goto L37
            L1c:
                kotlinx.serialization.json.JsonImpl r2 = org.wikipedia.json.JsonUtil.json     // Catch: java.lang.Throwable -> L10 java.lang.Exception -> L32
                r2.getClass()     // Catch: java.lang.Throwable -> L10 java.lang.Exception -> L32
                org.wikipedia.bridge.CommunicationBridge$BridgeMessage$Companion r4 = org.wikipedia.bridge.CommunicationBridge.BridgeMessage.Companion     // Catch: java.lang.Throwable -> L10 java.lang.Exception -> L32
                kotlinx.serialization.KSerializer r4 = r4.serializer()     // Catch: java.lang.Throwable -> L10 java.lang.Exception -> L32
                kotlinx.serialization.KSerializer r4 = kotlin.UnsignedKt.getNullable(r4)     // Catch: java.lang.Throwable -> L10 java.lang.Exception -> L32
                kotlinx.serialization.KSerializer r4 = (kotlinx.serialization.KSerializer) r4     // Catch: java.lang.Throwable -> L10 java.lang.Exception -> L32
                java.lang.Object r1 = r2.decodeFromString(r1, r4)     // Catch: java.lang.Throwable -> L10 java.lang.Exception -> L32
                goto L37
            L32:
                r1 = move-exception
                org.wikipedia.util.log.L.w(r1)     // Catch: java.lang.Throwable -> L10
                goto L1a
            L37:
                org.wikipedia.bridge.CommunicationBridge$BridgeMessage r1 = (org.wikipedia.bridge.CommunicationBridge.BridgeMessage) r1     // Catch: java.lang.Throwable -> L10
                if (r1 == 0) goto L4f
                org.wikipedia.bridge.CommunicationBridge r6 = org.wikipedia.bridge.CommunicationBridge.this     // Catch: java.lang.Throwable -> L10
                android.os.Handler r6 = r6.incomingMessageHandler     // Catch: java.lang.Throwable -> L10
                r0 = 1
                android.os.Message r6 = android.os.Message.obtain(r6, r0, r1)     // Catch: java.lang.Throwable -> L10
                org.wikipedia.bridge.CommunicationBridge r0 = org.wikipedia.bridge.CommunicationBridge.this     // Catch: java.lang.Throwable -> L10
                android.os.Handler r0 = r0.incomingMessageHandler     // Catch: java.lang.Throwable -> L10
                r0.getClass()     // Catch: java.lang.Throwable -> L10
                r0.sendMessage(r6)     // Catch: java.lang.Throwable -> L10
                goto L60
            L4f:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L10
                r1.<init>(r0)     // Catch: java.lang.Throwable -> L10
                r1.append(r6)     // Catch: java.lang.Throwable -> L10
                java.lang.String r6 = r1.toString()     // Catch: java.lang.Throwable -> L10
                org.wikipedia.util.log.L$LEVEL_D$1 r0 = org.wikipedia.util.log.L.LEVEL_W     // Catch: java.lang.Throwable -> L10
                r0.log(r6, r3)     // Catch: java.lang.Throwable -> L10
            L60:
                monitor-exit(r5)
                return
            L62:
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L10
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.bridge.CommunicationBridge.PcsClientJavascriptInterface.onReceiveMessage(java.lang.String):void");
        }
    }

    public CommunicationBridge(CommunicationBridgeListener communicationBridgeListener) {
        this.communicationBridgeListener = communicationBridgeListener;
        communicationBridgeListener.getWebView().getSettings().setJavaScriptEnabled(true);
        communicationBridgeListener.getWebView().getSettings().setAllowUniversalAccessFromFileURLs(true);
        communicationBridgeListener.getWebView().getSettings().setMediaPlaybackRequiresUserGesture(false);
        communicationBridgeListener.getWebView().setWebChromeClient(new CommunicatingChrome());
        communicationBridgeListener.getWebView().addJavascriptInterface(new PcsClientJavascriptInterface(), "pcsClient");
        this.incomingMessageHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: org.wikipedia.bridge.CommunicationBridge$$ExternalSyntheticLambda0
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                message.getClass();
                Object obj = message.obj;
                obj.getClass();
                CommunicationBridge.BridgeMessage bridgeMessage = (CommunicationBridge.BridgeMessage) obj;
                HashMap hashMap = CommunicationBridge.this.eventListeners;
                String str = bridgeMessage.action;
                if (!hashMap.containsKey(str)) {
                    L.e("No such message type registered: " + str);
                    return false;
                }
                try {
                    Object obj2 = hashMap.get(str);
                    obj2.getClass();
                    Iterator it = ((List) obj2).iterator();
                    while (it.hasNext()) {
                        ((CommunicationBridge.JSEventListener) it.next()).onMessage(str, bridgeMessage.data);
                    }
                    return false;
                } catch (Exception e) {
                    e.printStackTrace();
                    L.logRemoteError(e);
                    return false;
                }
            }
        });
    }

    public final void addListener(String str, JSEventListener jSEventListener) {
        HashMap hashMap = this.eventListeners;
        Object obj = hashMap.get(str);
        if (obj == null) {
            obj = new ArrayList();
            hashMap.put(str, obj);
        }
        ((List) obj).add(jSEventListener);
    }

    public final void cleanup() {
        this.pendingJSMessages.clear();
        this.pendingEvals.clear();
        this.eventListeners.clear();
        Handler handler = this.incomingMessageHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.incomingMessageHandler = null;
        CommunicationBridgeListener communicationBridgeListener = this.communicationBridgeListener;
        communicationBridgeListener.getWebView().setWebViewClient(new WebViewClient());
        communicationBridgeListener.getWebView().removeJavascriptInterface("pcsClient");
        communicationBridgeListener.getWebView().loadUrl("about:blank");
    }

    public final void evaluate(String str, ValueCallback valueCallback) {
        valueCallback.getClass();
        this.pendingEvals.put(str, valueCallback);
        flushMessages();
    }

    public final void execute(String str) {
        this.pendingJSMessages.add("javascript:".concat(str));
        flushMessages();
    }

    public final void flushMessages() {
        CommunicationBridgeListener communicationBridgeListener;
        if (this.isPcsReady && this.isMetadataReady) {
            ArrayList arrayList = this.pendingJSMessages;
            Iterator it = arrayList.iterator();
            it.getClass();
            while (true) {
                boolean hasNext = it.hasNext();
                communicationBridgeListener = this.communicationBridgeListener;
                if (!hasNext) {
                    break;
                }
                Object next = it.next();
                next.getClass();
                communicationBridgeListener.getWebView().loadUrl((String) next);
            }
            arrayList.clear();
            HashMap hashMap = this.pendingEvals;
            for (Map.Entry entry : hashMap.entrySet()) {
                communicationBridgeListener.getWebView().evaluateJavascript((String) entry.getKey(), (ValueCallback) entry.getValue());
            }
            hashMap.clear();
        }
    }

    public final void resetHtml(PageTitle pageTitle) {
        pageTitle.getClass();
        this.isPcsReady = false;
        this.isMetadataReady = false;
        this.pendingJSMessages.clear();
        this.pendingEvals.clear();
        CommunicationBridgeListener communicationBridgeListener = this.communicationBridgeListener;
        if (communicationBridgeListener.getModel().getShouldLoadAsMobileWeb()) {
            communicationBridgeListener.getWebView().loadUrl(pageTitle.getUri());
            return;
        }
        ObservableWebView webView = communicationBridgeListener.getWebView();
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        String restBasePath = ServiceFactory.getRestBasePath(pageTitle.wikiSite);
        try {
            String encode = URLEncoder.encode(pageTitle.getPrefixedText(), "UTF-8");
            encode.getClass();
            webView.loadUrl(restBasePath + "page/mobile-html/" + StringsKt__StringsJVMKt.replace$default(encode, "+", "%20"));
        } catch (UnsupportedEncodingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
        }
    }
}
