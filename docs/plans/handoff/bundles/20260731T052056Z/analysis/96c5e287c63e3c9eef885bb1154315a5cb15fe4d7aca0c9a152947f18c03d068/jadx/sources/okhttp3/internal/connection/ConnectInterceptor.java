package okhttp3.internal.connection;

import androidx.compose.runtime.Latch;
import okhttp3.Interceptor;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConnectInterceptor implements Interceptor {
    public static final ConnectInterceptor INSTANCE = new ConnectInterceptor();

    @Override // okhttp3.Interceptor
    public final Response intercept(RealInterceptorChain realInterceptorChain) {
        ExchangeCodec http1ExchangeCodec;
        RealCall realCall = realInterceptorChain.call;
        synchronized (realCall) {
            if (!realCall.expectMoreExchanges) {
                throw new IllegalStateException("released");
            }
            if (realCall.responseBodyOpen || realCall.requestBodyOpen || realCall.socketSourceOpen || realCall.socketSinkOpen) {
                throw new IllegalStateException("Check failed.");
            }
        }
        ExchangeFinder exchangeFinder = realCall.exchangeFinder;
        exchangeFinder.getClass();
        RealConnection find = exchangeFinder.find();
        OkHttpClient okHttpClient = realCall.client;
        find.getClass();
        okHttpClient.getClass();
        int i = realInterceptorChain.readTimeoutMillis;
        MultipartBody.Builder builder = find.socket;
        Http2Connection http2Connection = find.http2Connection;
        if (http2Connection != null) {
            http1ExchangeCodec = new Http2ExchangeCodec(okHttpClient, find, realInterceptorChain, http2Connection);
        } else {
            find.javaNetSocket.setSoTimeout(i);
            ((RealBufferedSource) builder.type).source.timeout().timeout(i);
            ((RealBufferedSink) builder.parts).sink.timeout().timeout(realInterceptorChain.writeTimeoutMillis);
            http1ExchangeCodec = new Http1ExchangeCodec(okHttpClient, find, builder);
        }
        Latch latch = new Latch(realCall, exchangeFinder, http1ExchangeCodec);
        realCall.interceptorScopedExchange = latch;
        realCall.exchange = latch;
        synchronized (realCall) {
            realCall.requestBodyOpen = true;
            realCall.responseBodyOpen = true;
        }
        if (!realCall.canceled) {
            return RealInterceptorChain.copy$okhttp$default(realInterceptorChain, 0, latch, null, 61).proceed(realInterceptorChain.request);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Canceled");
        return null;
    }
}
