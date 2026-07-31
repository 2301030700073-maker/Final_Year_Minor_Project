package org.maplibre.android.http;

import android.text.TextUtils;
import androidx.compose.ui.Modifier;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.SSLException;
import kotlin.jvm.internal.Reflection;
import okhttp3.Callback;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.connection.RealCall;
import okio.Okio__OkioKt;
import org.maplibre.android.MapLibre;
import org.maplibre.android.constants.MapLibreConstants;
import org.maplibre.android.module.http.HttpRequestImpl;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class NativeHttpRequest {
    private final HttpRequest httpRequest;
    private final ReentrantLock lock;
    private long nativePtr;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.http.NativeHttpRequest$1, reason: invalid class name */
    public final class AnonymousClass1 implements Callback {
        public NativeHttpRequest this$0;

        public void handleFailure(RealCall realCall, Exception exc) {
            Request request;
            String message = exc.getMessage() != null ? exc.getMessage() : "Error processing the request";
            int i = ((exc instanceof NoRouteToHostException) || (exc instanceof UnknownHostException) || (exc instanceof SocketException) || (exc instanceof ProtocolException) || (exc instanceof SSLException)) ? 0 : exc instanceof InterruptedIOException ? 1 : 2;
            if (realCall != null && (request = realCall.originalRequest) != null) {
                String str = request.url.url;
                Cookie.Companion.log(i == 1 ? 3 : i == 0 ? 4 : 5, Modifier.CC.m("Request failed due to a ", i == 1 ? "temporary" : i == 0 ? "connection" : "permanent", " error: ", message, " "));
            }
            this.this$0.handleFailure(i, message);
        }

        @Override // okhttp3.Callback
        public void onFailure(RealCall realCall, IOException iOException) {
            handleFailure(realCall, iOException);
        }

        @Override // okhttp3.Callback
        public void onResponse(RealCall realCall, Response response) {
            boolean z = response.isSuccessful;
            String str = response.message;
            int i = response.code;
            if (z) {
                Cookie.Companion.log(2, "[HTTP] Request was successful (code = " + i + ").");
            } else {
                if (TextUtils.isEmpty(str)) {
                    str = "No additional information";
                }
                Cookie.Companion.log(3, "[HTTP] Request with response = " + i + ": " + str);
            }
            ResponseBody responseBody = response.body;
            try {
                if (responseBody == null) {
                    Cookie.Companion.log(6, "[HTTP] Received empty response body");
                    return;
                }
                try {
                    byte[] bytes = responseBody.bytes();
                    response.close();
                    this.this$0.onResponse(response.code, response.header("ETag", null), response.header("Last-Modified", null), response.header("Cache-Control", null), response.header("Expires", null), response.header("Retry-After", null), response.header("x-rate-limit-reset", null), bytes);
                } catch (IOException e) {
                    handleFailure(realCall, e);
                    response.close();
                }
            } catch (Throwable th) {
                response.close();
                throw th;
            }
        }
    }

    private NativeHttpRequest(long j, String str, String str2, String str3, String str4, boolean z) {
        ((LoginClient) MapLibre.getModuleProvider()).getClass();
        HttpRequestImpl httpRequestImpl = new HttpRequestImpl();
        this.httpRequest = httpRequestImpl;
        this.lock = new ReentrantLock();
        this.nativePtr = j;
        if (str.startsWith("local://")) {
            executeLocalRequest(str);
            return;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        anonymousClass1.this$0 = this;
        HttpUrl httpUrl = null;
        try {
            try {
                HttpUrl.Builder builder = new HttpUrl.Builder(0);
                builder.parse$okhttp(null, str);
                httpUrl = builder.m872build();
            } catch (Exception e) {
                anonymousClass1.handleFailure(httpRequestImpl.call, e);
                return;
            }
        } catch (IllegalArgumentException unused) {
        }
        if (httpUrl == null) {
            Cookie.Companion.log(6, "[HTTP] Unable to parse resourceUrl ".concat(str));
            return;
        }
        String str5 = httpUrl.host;
        Locale locale = MapLibreConstants.MAPLIBRE_LOCALE;
        String lowerCase = str5.toLowerCase(locale);
        List list = httpUrl.queryNamesAndValues;
        int size = list != null ? list.size() / 2 : 0;
        if (lowerCase.equals("mapbox.com") || lowerCase.endsWith(".mapbox.com") || lowerCase.equals("mapbox.cn") || lowerCase.endsWith(".mapbox.cn")) {
            str = size == 0 ? str.concat("?") : str.concat("&");
            if (z) {
                str = str.concat("offline=true");
            }
        }
        Request.Builder builder2 = new Request.Builder(0);
        builder2.url(str);
        builder2.tags = ((Okio__OkioKt) builder2.tags).plus(Reflection.factory.getOrCreateKotlinClass(Object.class), str.toLowerCase(locale));
        String str6 = HttpRequestImpl.userAgentString;
        str6.getClass();
        ((Headers.Builder) builder2.headers).add("User-Agent", str6);
        if (str2.length() > 0) {
            ((Headers.Builder) builder2.headers).add("Range", str2);
        }
        if (str3.length() > 0) {
            ((Headers.Builder) builder2.headers).add("If-None-Match", str3);
        } else if (str4.length() > 0) {
            ((Headers.Builder) builder2.headers).add("If-Modified-Since", str4);
        }
        Request request = new Request(builder2);
        OkHttpClient okHttpClient = HttpRequestImpl.client;
        okHttpClient.getClass();
        RealCall realCall = new RealCall(okHttpClient, request);
        httpRequestImpl.call = realCall;
        realCall.enqueue(anonymousClass1);
    }

    private void executeLocalRequest(String str) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        anonymousClass1.this$0 = this;
        LocalRequestTask localRequestTask = new LocalRequestTask();
        localRequestTask.requestResponse = anonymousClass1;
        localRequestTask.execute(str);
    }

    private native void nativeOnFailure(int i, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeOnResponse(int i, String str, String str2, String str3, String str4, String str5, String str6, byte[] bArr);

    public void cancel() {
        HttpRequestImpl httpRequestImpl = (HttpRequestImpl) this.httpRequest;
        RealCall realCall = httpRequestImpl.call;
        if (realCall != null) {
            Cookie.Companion.log(3, "[HTTP] This request was cancelled (" + realCall.originalRequest.url + "). This is expected for tiles that were being prefetched but are no longer needed for the map to render.");
            httpRequestImpl.call.cancel();
        }
        this.lock.lock();
        this.nativePtr = 0L;
        this.lock.unlock();
    }

    public void handleFailure(int i, String str) {
        this.lock.lock();
        if (this.nativePtr != 0) {
            nativeOnFailure(i, str);
        }
        this.lock.unlock();
    }

    public void onResponse(int i, String str, String str2, String str3, String str4, String str5, String str6, byte[] bArr) {
        this.lock.lock();
        if (this.nativePtr != 0) {
            nativeOnResponse(i, str, str2, str3, str4, str5, str6, bArr);
        }
        this.lock.unlock();
    }
}
