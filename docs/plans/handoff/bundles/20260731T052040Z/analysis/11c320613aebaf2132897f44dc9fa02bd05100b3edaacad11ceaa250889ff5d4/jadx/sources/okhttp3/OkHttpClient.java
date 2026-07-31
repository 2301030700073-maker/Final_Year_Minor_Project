package okhttp3;

import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import net.newpipe.app.AppKt;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.tls.OkHostnameVerifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class OkHttpClient {
    public final HttpUrl.Companion authenticator;
    public final AppKt certificateChainCleaner;
    public final CertificatePinner certificatePinner;
    public final int connectTimeoutMillis;
    public final ConnectionPool connectionPool;
    public final List connectionSpecs;
    public final HttpUrl.Companion cookieJar;
    public final Dispatcher dispatcher;
    public final HttpUrl.Companion dns;
    public final _UtilJvmKt$$ExternalSyntheticLambda1 eventListenerFactory;
    public final boolean fastFallback;
    public final boolean followRedirects;
    public final boolean followSslRedirects;
    public final OkHostnameVerifier hostnameVerifier;
    public final List interceptors;
    public final List networkInterceptors;
    public final List protocols;
    public final HttpUrl.Companion proxyAuthenticator;
    public final ProxySelector proxySelector;
    public final int readTimeoutMillis;
    public final boolean retryOnConnectionFailure;
    public final ConnectionPool routeDatabase;
    public final SocketFactory socketFactory;
    public final SSLSocketFactory sslSocketFactoryOrNull;
    public final TaskRunner taskRunner;
    public final int writeTimeoutMillis;
    public final X509TrustManager x509TrustManager;
    public static final List DEFAULT_PROTOCOLS = _UtilJvmKt.toImmutableList(new Protocol[]{Protocol.HTTP_2, Protocol.HTTP_1_1});
    public static final List DEFAULT_CONNECTION_SPECS = _UtilJvmKt.toImmutableList(new ConnectionSpec[]{ConnectionSpec.MODERN_TLS, ConnectionSpec.CLEARTEXT});

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public final HttpUrl.Companion authenticator;
        public final CertificatePinner certificatePinner;
        public final int connectTimeout;
        public ConnectionPool connectionPool;
        public final List connectionSpecs;
        public final HttpUrl.Companion cookieJar;
        public final HttpUrl.Companion dns;
        public final _UtilJvmKt$$ExternalSyntheticLambda1 eventListenerFactory;
        public final boolean fastFallback;
        public final boolean followRedirects;
        public final boolean followSslRedirects;
        public final OkHostnameVerifier hostnameVerifier;
        public final List protocols;
        public final HttpUrl.Companion proxyAuthenticator;
        public int readTimeout;
        public final boolean retryOnConnectionFailure;
        public final SocketFactory socketFactory;
        public final int writeTimeout;
        public final Dispatcher dispatcher = new Dispatcher(0);
        public final ArrayList interceptors = new ArrayList();
        public final ArrayList networkInterceptors = new ArrayList();

        public Builder() {
            TimeZone timeZone = _UtilJvmKt.UTC;
            this.eventListenerFactory = new _UtilJvmKt$$ExternalSyntheticLambda1(0);
            this.retryOnConnectionFailure = true;
            this.fastFallback = true;
            HttpUrl.Companion companion = HttpUrl.Companion.NONE;
            this.authenticator = companion;
            this.followRedirects = true;
            this.followSslRedirects = true;
            this.cookieJar = HttpUrl.Companion.NO_COOKIES;
            this.dns = HttpUrl.Companion.SYSTEM;
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
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public OkHttpClient(okhttp3.OkHttpClient.Builder r7) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.OkHttpClient.<init>(okhttp3.OkHttpClient$Builder):void");
    }
}
