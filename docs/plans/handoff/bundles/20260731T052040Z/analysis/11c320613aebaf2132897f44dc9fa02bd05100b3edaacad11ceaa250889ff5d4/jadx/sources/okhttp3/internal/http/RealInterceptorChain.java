package okhttp3.internal.http;

import androidx.compose.runtime.Latch;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.net.ProxySelector;
import java.util.ArrayList;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.Intrinsics;
import net.newpipe.app.AppKt;
import okhttp3.CertificatePinner;
import okhttp3.ConnectionPool;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealRoutePlanner;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealInterceptorChain {
    public final HttpUrl.Companion authenticator;
    public final RealCall call;
    public int calls;
    public final AppKt certificateChainCleaner;
    public final CertificatePinner certificatePinner;
    public final int connectTimeoutMillis;
    public final ConnectionPool connectionPool;
    public final HttpUrl.Companion cookieJar;
    public final HttpUrl.Companion dns;
    public final Latch exchange;
    public final HostnameVerifier hostnameVerifier;
    public final int index;
    public final ArrayList interceptors;
    public final HttpUrl.Companion proxyAuthenticator;
    public final ProxySelector proxySelector;
    public final int readTimeoutMillis;
    public final Request request;
    public final boolean retryOnConnectionFailure;
    public final SocketFactory socketFactory;
    public final SSLSocketFactory sslSocketFactoryOrNull;
    public final int writeTimeoutMillis;
    public final X509TrustManager x509TrustManagerOrNull;

    public RealInterceptorChain(RealCall realCall, ArrayList arrayList, int i, Latch latch, Request request, int i2, int i3, int i4, HttpUrl.Companion companion, CertificatePinner certificatePinner, ConnectionPool connectionPool, HttpUrl.Companion companion2, HttpUrl.Companion companion3, HostnameVerifier hostnameVerifier, HttpUrl.Companion companion4, ProxySelector proxySelector, boolean z, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager, AppKt appKt) {
        request.getClass();
        companion.getClass();
        certificatePinner.getClass();
        connectionPool.getClass();
        companion2.getClass();
        companion3.getClass();
        hostnameVerifier.getClass();
        companion4.getClass();
        proxySelector.getClass();
        socketFactory.getClass();
        this.call = realCall;
        this.interceptors = arrayList;
        this.index = i;
        this.exchange = latch;
        this.request = request;
        this.connectTimeoutMillis = i2;
        this.readTimeoutMillis = i3;
        this.writeTimeoutMillis = i4;
        this.authenticator = companion;
        this.certificatePinner = certificatePinner;
        this.connectionPool = connectionPool;
        this.cookieJar = companion2;
        this.dns = companion3;
        this.hostnameVerifier = hostnameVerifier;
        this.proxyAuthenticator = companion4;
        this.proxySelector = proxySelector;
        this.retryOnConnectionFailure = z;
        this.socketFactory = socketFactory;
        this.sslSocketFactoryOrNull = sSLSocketFactory;
        this.x509TrustManagerOrNull = x509TrustManager;
        this.certificateChainCleaner = appKt;
    }

    public static RealInterceptorChain copy$okhttp$default(RealInterceptorChain realInterceptorChain, int i, Latch latch, Request request, int i2) {
        int i3 = (i2 & 1) != 0 ? realInterceptorChain.index : i;
        Latch latch2 = (i2 & 2) != 0 ? realInterceptorChain.exchange : latch;
        Request request2 = (i2 & 4) != 0 ? realInterceptorChain.request : request;
        int i4 = realInterceptorChain.connectTimeoutMillis;
        int i5 = realInterceptorChain.readTimeoutMillis;
        int i6 = realInterceptorChain.writeTimeoutMillis;
        HttpUrl.Companion companion = realInterceptorChain.authenticator;
        CertificatePinner certificatePinner = realInterceptorChain.certificatePinner;
        ConnectionPool connectionPool = realInterceptorChain.connectionPool;
        HttpUrl.Companion companion2 = realInterceptorChain.cookieJar;
        HttpUrl.Companion companion3 = realInterceptorChain.dns;
        HostnameVerifier hostnameVerifier = realInterceptorChain.hostnameVerifier;
        HttpUrl.Companion companion4 = realInterceptorChain.proxyAuthenticator;
        ProxySelector proxySelector = realInterceptorChain.proxySelector;
        boolean z = realInterceptorChain.retryOnConnectionFailure;
        SocketFactory socketFactory = realInterceptorChain.socketFactory;
        SSLSocketFactory sSLSocketFactory = realInterceptorChain.sslSocketFactoryOrNull;
        X509TrustManager x509TrustManager = realInterceptorChain.x509TrustManagerOrNull;
        AppKt appKt = realInterceptorChain.certificateChainCleaner;
        request2.getClass();
        companion.getClass();
        certificatePinner.getClass();
        connectionPool.getClass();
        companion2.getClass();
        companion3.getClass();
        hostnameVerifier.getClass();
        companion4.getClass();
        proxySelector.getClass();
        socketFactory.getClass();
        return new RealInterceptorChain(realInterceptorChain.call, realInterceptorChain.interceptors, i3, latch2, request2, i4, i5, i6, companion, certificatePinner, connectionPool, companion2, companion3, hostnameVerifier, companion4, proxySelector, z, socketFactory, sSLSocketFactory, x509TrustManager, appKt);
    }

    public final Response proceed(Request request) {
        request.getClass();
        ArrayList arrayList = this.interceptors;
        int size = arrayList.size();
        int i = this.index;
        if (i >= size) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Check failed.");
            return null;
        }
        this.calls++;
        Latch latch = this.exchange;
        if (latch != null) {
            RealRoutePlanner routePlanner = ((ExchangeFinder) latch.awaiters).getRoutePlanner();
            HttpUrl httpUrl = request.url;
            routePlanner.getClass();
            httpUrl.getClass();
            HttpUrl httpUrl2 = routePlanner.address.url;
            if (httpUrl.port != httpUrl2.port || !Intrinsics.areEqual(httpUrl.host, httpUrl2.host)) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m$4(arrayList.get(i - 1), " must retain the same host and port", "network interceptor ");
                return null;
            }
            if (this.calls != 1) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m$4(arrayList.get(i - 1), " must call proceed() exactly once", "network interceptor ");
                return null;
            }
        }
        int i2 = i + 1;
        RealInterceptorChain copy$okhttp$default = copy$okhttp$default(this, i2, null, request, 2097146);
        Interceptor interceptor = (Interceptor) arrayList.get(i);
        Response intercept = interceptor.intercept(copy$okhttp$default);
        if (intercept == null) {
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        if (latch == null || i2 >= arrayList.size() || copy$okhttp$default.calls == 1) {
            return intercept;
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m$4(interceptor, " must call proceed() exactly once", "network interceptor ");
        return null;
    }
}
