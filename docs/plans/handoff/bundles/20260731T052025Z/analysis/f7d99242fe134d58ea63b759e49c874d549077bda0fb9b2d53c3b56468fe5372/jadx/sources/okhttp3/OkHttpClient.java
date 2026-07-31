package okhttp3;

import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.uuid.UuidKt;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.tls.OkHostnameVerifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OkHttpClient implements Call.Factory {
    public final HttpUrl.Companion authenticator;
    public final UuidKt certificateChainCleaner;
    public final CertificatePinner certificatePinner;
    public final int connectTimeoutMillis;
    public final ConnectionPool connectionPool;
    public final List connectionSpecs;
    public final HttpUrl.Companion cookieJar;
    public final Dispatcher dispatcher;
    public final HttpUrl.Companion dns;
    public final _UtilJvmKt$$ExternalSyntheticLambda0 eventListenerFactory;
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
    public final RouteDatabase routeDatabase;
    public final SocketFactory socketFactory;
    public final SSLSocketFactory sslSocketFactoryOrNull;
    public final TaskRunner taskRunner;
    public final int writeTimeoutMillis;
    public final X509TrustManager x509TrustManager;
    public static final List DEFAULT_PROTOCOLS = _UtilJvmKt.toImmutableList(new Protocol[]{Protocol.HTTP_2, Protocol.HTTP_1_1});
    public static final List DEFAULT_CONNECTION_SPECS = _UtilJvmKt.toImmutableList(new ConnectionSpec[]{ConnectionSpec.MODERN_TLS, ConnectionSpec.CLEARTEXT});

    /* JADX WARN: Removed duplicated region for block: B:11:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public OkHttpClient() {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.OkHttpClient.<init>():void");
    }
}
