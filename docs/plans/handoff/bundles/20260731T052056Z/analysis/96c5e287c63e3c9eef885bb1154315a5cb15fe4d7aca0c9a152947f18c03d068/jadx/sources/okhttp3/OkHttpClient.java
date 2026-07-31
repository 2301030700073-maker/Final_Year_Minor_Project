package okhttp3;

import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.CipherSuite;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.tls.OkHostnameVerifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OkHttpClient {
    public final CipherSuite.Companion authenticator;
    public final Cache cache;
    public final Headers.Companion certificateChainCleaner;
    public final CertificatePinner certificatePinner;
    public final int connectTimeoutMillis;
    public final ConnectionPool connectionPool;
    public final List connectionSpecs;
    public final CookieJar cookieJar;
    public final Dispatcher dispatcher;
    public final CipherSuite.Companion dns;
    public final _UtilJvmKt$$ExternalSyntheticLambda0 eventListenerFactory;
    public final boolean fastFallback;
    public final boolean followRedirects;
    public final boolean followSslRedirects;
    public final HostnameVerifier hostnameVerifier;
    public final List interceptors;
    public final long minWebSocketMessageToCompress;
    public final List networkInterceptors;
    public final List protocols;
    public final CipherSuite.Companion proxyAuthenticator;
    public final ProxySelector proxySelector;
    public final int readTimeoutMillis;
    public final boolean retryOnConnectionFailure;
    public final ConnectionPool routeDatabase;
    public final SocketFactory socketFactory;
    public final SSLSocketFactory sslSocketFactoryOrNull;
    public final TaskRunner taskRunner;
    public final int webSocketCloseTimeout;
    public final int writeTimeoutMillis;
    public final X509TrustManager x509TrustManager;
    public static final List DEFAULT_PROTOCOLS = _UtilJvmKt.toImmutableList(new Protocol[]{Protocol.HTTP_2, Protocol.HTTP_1_1});
    public static final List DEFAULT_CONNECTION_SPECS = _UtilJvmKt.toImmutableList(new ConnectionSpec[]{ConnectionSpec.MODERN_TLS, ConnectionSpec.CLEARTEXT});

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public CipherSuite.Companion authenticator;
        public Cache cache;
        public Headers.Companion certificateChainCleaner;
        public CertificatePinner certificatePinner;
        public int connectTimeout;
        public ConnectionPool connectionPool;
        public List connectionSpecs;
        public CookieJar cookieJar;
        public CipherSuite.Companion dns;
        public _UtilJvmKt$$ExternalSyntheticLambda0 eventListenerFactory;
        public boolean fastFallback;
        public boolean followRedirects;
        public boolean followSslRedirects;
        public HostnameVerifier hostnameVerifier;
        public long minWebSocketMessageToCompress;
        public List protocols;
        public CipherSuite.Companion proxyAuthenticator;
        public ProxySelector proxySelector;
        public int readTimeout;
        public boolean retryOnConnectionFailure;
        public ConnectionPool routeDatabase;
        public SocketFactory socketFactory;
        public SSLSocketFactory sslSocketFactoryOrNull;
        public TaskRunner taskRunner;
        public int webSocketCloseTimeout;
        public int writeTimeout;
        public X509TrustManager x509TrustManagerOrNull;
        public Dispatcher dispatcher = new Dispatcher();
        public final ArrayList interceptors = new ArrayList();
        public final ArrayList networkInterceptors = new ArrayList();

        public Builder() {
            TimeZone timeZone = _UtilJvmKt.UTC;
            this.eventListenerFactory = new _UtilJvmKt$$ExternalSyntheticLambda0();
            this.retryOnConnectionFailure = true;
            this.fastFallback = true;
            CipherSuite.Companion companion = CipherSuite.Companion.NONE;
            this.authenticator = companion;
            this.followRedirects = true;
            this.followSslRedirects = true;
            this.cookieJar = CookieJar.NO_COOKIES;
            this.dns = CipherSuite.Companion.SYSTEM;
            this.proxyAuthenticator = companion;
            SocketFactory socketFactory = SocketFactory.getDefault();
            socketFactory.getClass();
            this.socketFactory = socketFactory;
            this.connectionSpecs = OkHttpClient.DEFAULT_CONNECTION_SPECS;
            this.protocols = OkHttpClient.DEFAULT_PROTOCOLS;
            this.hostnameVerifier = OkHostnameVerifier.INSTANCE;
            this.certificatePinner = CertificatePinner.DEFAULT;
            this.connectTimeout = 10000;
            this.readTimeout = 10000;
            this.writeTimeout = 10000;
            this.webSocketCloseTimeout = 60000;
            this.minWebSocketMessageToCompress = 1024L;
        }

        public final void readTimeout() {
            TimeUnit.SECONDS.getClass();
            TimeZone timeZone = _UtilJvmKt.UTC;
            this.readTimeout = 20000;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public OkHttpClient(okhttp3.OkHttpClient.Builder r7) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.OkHttpClient.<init>(okhttp3.OkHttpClient$Builder):void");
    }
}
