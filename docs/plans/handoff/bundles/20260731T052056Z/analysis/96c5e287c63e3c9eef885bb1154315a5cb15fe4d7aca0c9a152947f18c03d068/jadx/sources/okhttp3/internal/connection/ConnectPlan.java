package okhttp3.internal.connection;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.io.IOException;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.NaturalOrderComparator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;
import okhttp3.Handshake;
import okhttp3.MultipartBody;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.ByteString;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.internal.DefaultSocket;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConnectPlan implements RoutePlanner$Plan, ExchangeCodec.Carrier {
    public final RealCall call;
    public volatile boolean canceled;
    public RealConnection connection;
    public final RealConnectionPool connectionPool;
    public final int connectionSpecIndex;
    public Handshake handshake;
    public final boolean isTlsFallback;
    public Socket javaNetSocket;
    public Protocol protocol;
    public Socket rawSocket;
    public final int readTimeoutMillis;
    public final boolean retryOnConnectionFailure;
    public final Route route;
    public final RealRoutePlanner routePlanner;
    public final List routes;
    public MultipartBody.Builder socket;
    public final int socketConnectTimeoutMillis;
    public final int socketReadTimeoutMillis;
    public final TaskRunner taskRunner;
    public final Request tunnelRequest;
    public final int writeTimeoutMillis;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ConnectPlan(TaskRunner taskRunner, RealConnectionPool realConnectionPool, int i, int i2, int i3, int i4, boolean z, RealCall realCall, RealRoutePlanner realRoutePlanner, Route route, List list, Request request, int i5, boolean z2) {
        taskRunner.getClass();
        route.getClass();
        this.taskRunner = taskRunner;
        this.connectionPool = realConnectionPool;
        this.readTimeoutMillis = i;
        this.writeTimeoutMillis = i2;
        this.socketConnectTimeoutMillis = i3;
        this.socketReadTimeoutMillis = i4;
        this.retryOnConnectionFailure = z;
        this.call = realCall;
        this.routePlanner = realRoutePlanner;
        this.route = route;
        this.routes = list;
        this.tunnelRequest = request;
        this.connectionSpecIndex = i5;
        this.isTlsFallback = z2;
    }

    @Override // okhttp3.internal.connection.RoutePlanner$Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        this.canceled = true;
        Socket socket = this.rawSocket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    public final void connectSocket() {
        Socket createSocket;
        Proxy.Type type = this.route.proxy.type();
        int i = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1 || i == 2) {
            createSocket = this.route.address.socketFactory.createSocket();
            createSocket.getClass();
        } else {
            createSocket = new Socket(this.route.proxy);
        }
        this.rawSocket = createSocket;
        if (this.canceled) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("canceled");
            return;
        }
        createSocket.setSoTimeout(this.socketReadTimeoutMillis);
        try {
            Platform platform = Platform.platform;
            Platform.platform.connectSocket(createSocket, this.route.socketAddress, this.socketConnectTimeoutMillis);
            try {
                this.socket = new MultipartBody.Builder(new DefaultSocket(createSocket));
            } catch (NullPointerException e) {
                if (Intrinsics.areEqual(e.getMessage(), "throw with null exception")) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.route.socketAddress);
            connectException.initCause(e2);
            throw connectException;
        }
    }

    @Override // okhttp3.internal.connection.RoutePlanner$Plan
    public final RoutePlanner$ConnectResult connectTcp() {
        Socket socket;
        Socket socket2;
        Route route = this.route;
        CopyOnWriteArrayList copyOnWriteArrayList = this.call.plansToCancel;
        if (this.rawSocket != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("TCP already connected");
            return null;
        }
        copyOnWriteArrayList.add(this);
        boolean z = false;
        try {
            try {
                route.socketAddress.getClass();
                connectSocket();
                z = true;
                RoutePlanner$ConnectResult routePlanner$ConnectResult = new RoutePlanner$ConnectResult(this, (Throwable) null, 6);
                copyOnWriteArrayList.remove(this);
                return routePlanner$ConnectResult;
            } catch (IOException e) {
                Address address = route.address;
                if (route.proxy.type() != Proxy.Type.DIRECT) {
                    Address address2 = route.address;
                    address2.proxySelector.connectFailed(address2.url.uri(), route.proxy.address(), e);
                }
                route.socketAddress.getClass();
                RoutePlanner$ConnectResult routePlanner$ConnectResult2 = new RoutePlanner$ConnectResult(this, e, 2);
                copyOnWriteArrayList.remove(this);
                if (!z && (socket = this.rawSocket) != null) {
                    _UtilJvmKt.closeQuietly(socket);
                }
                return routePlanner$ConnectResult2;
            }
        } catch (Throwable th) {
            copyOnWriteArrayList.remove(this);
            if (!z && (socket2 = this.rawSocket) != null) {
                _UtilJvmKt.closeQuietly(socket2);
            }
            throw th;
        }
    }

    public final void connectTls(SSLSocket sSLSocket, ConnectionSpec connectionSpec) {
        Protocol protocol;
        Address address = this.route.address;
        try {
            if (connectionSpec.supportsTlsExtensions) {
                Platform platform = Platform.platform;
                Platform.platform.configureTlsExtensions(sSLSocket, address.url.host, address.protocols);
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            session.getClass();
            Handshake handshake = UriUtil.get(session);
            HostnameVerifier hostnameVerifier = address.hostnameVerifier;
            hostnameVerifier.getClass();
            if (hostnameVerifier.verify(address.url.host, session)) {
                CertificatePinner certificatePinner = address.certificatePinner;
                certificatePinner.getClass();
                this.handshake = new Handshake(handshake.tlsVersion, handshake.cipherSuite, handshake.localCertificates, new HomeScreenKt$$ExternalSyntheticLambda29(certificatePinner, handshake, address, 10));
                address.url.host.getClass();
                Iterator it = certificatePinner.pins.iterator();
                String str = null;
                if (it.hasNext()) {
                    Modifier.CC.m(it.next());
                    throw null;
                }
                if (connectionSpec.supportsTlsExtensions) {
                    Platform platform2 = Platform.platform;
                    str = Platform.platform.getSelectedProtocol(sSLSocket);
                }
                this.javaNetSocket = sSLSocket;
                this.socket = new MultipartBody.Builder(new DefaultSocket(sSLSocket));
                if (str != null) {
                    Protocol.Companion.getClass();
                    protocol = Protocol.Companion.get(str);
                } else {
                    protocol = Protocol.HTTP_1_1;
                }
                this.protocol = protocol;
                Platform platform3 = Platform.platform;
                Platform.platform.getClass();
                return;
            }
            List peerCertificates = handshake.peerCertificates();
            if (peerCertificates.isEmpty()) {
                throw new SSLPeerUnverifiedException("Hostname " + address.url.host + " not verified (no certificates)");
            }
            Object obj = peerCertificates.get(0);
            obj.getClass();
            X509Certificate x509Certificate = (X509Certificate) obj;
            StringBuilder sb = new StringBuilder("\n            |Hostname ");
            sb.append(address.url.host);
            sb.append(" not verified:\n            |    certificate: ");
            CertificatePinner certificatePinner2 = CertificatePinner.DEFAULT;
            StringBuilder sb2 = new StringBuilder("sha256/");
            ByteString byteString = ByteString.EMPTY;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            encoded.getClass();
            sb2.append(ByteString.Companion.of$default(encoded).digest$okio("SHA-256").base64());
            sb.append(sb2.toString());
            sb.append("\n            |    DN: ");
            sb.append(x509Certificate.getSubjectDN().getName());
            sb.append("\n            |    subjectAltNames: ");
            sb.append(CollectionsKt.plus((Collection) OkHostnameVerifier.getSubjectAltNames(x509Certificate, 7), (Iterable) OkHostnameVerifier.getSubjectAltNames(x509Certificate, 2)));
            sb.append("\n            ");
            throw new SSLPeerUnverifiedException(StringsKt__IndentKt.trimMargin$default(sb.toString()));
        } catch (Throwable th) {
            Platform platform4 = Platform.platform;
            Platform.platform.getClass();
            _UtilJvmKt.closeQuietly(sSLSocket);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0125  */
    @Override // okhttp3.internal.connection.RoutePlanner$Plan
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RoutePlanner$ConnectResult connectTlsEtc() {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ConnectPlan.connectTlsEtc():okhttp3.internal.connection.RoutePlanner$ConnectResult");
    }

    public final RoutePlanner$ConnectResult connectTunnel$okhttp() {
        Request request = this.tunnelRequest;
        request.getClass();
        String str = "CONNECT " + _UtilJvmKt.toHostHeader(this.route.address.url, true) + " HTTP/1.1";
        MultipartBody.Builder builder = this.socket;
        if (builder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, builder);
        MultipartBody.Builder builder2 = this.socket;
        if (builder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        ((RealBufferedSource) builder2.type).source.timeout().timeout(this.readTimeoutMillis);
        MultipartBody.Builder builder3 = this.socket;
        if (builder3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        ((RealBufferedSink) builder3.parts).sink.timeout().timeout(this.writeTimeoutMillis);
        http1ExchangeCodec.writeRequest(request.headers, str);
        http1ExchangeCodec.finishRequest();
        Response.Builder readResponseHeaders = http1ExchangeCodec.readResponseHeaders(false);
        readResponseHeaders.getClass();
        readResponseHeaders.request = request;
        Response build = readResponseHeaders.build();
        int i = build.code;
        long headersContentLength = _UtilJvmKt.headersContentLength(build);
        if (headersContentLength != -1) {
            Http1ExchangeCodec.FixedLengthSource newFixedLengthSource = http1ExchangeCodec.newFixedLengthSource(build.request.url, headersContentLength);
            _UtilJvmKt.skipAll(newFixedLengthSource, Integer.MAX_VALUE);
            newFixedLengthSource.close();
        }
        if (i == 200) {
            return new RoutePlanner$ConnectResult(this, (Throwable) null, 6);
        }
        if (i == 407) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Failed to authenticate with proxy");
            return null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Animation.CC.m(i, "Unexpected response code for CONNECT: "));
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final Route getRoute() {
        return this.route;
    }

    @Override // okhttp3.internal.connection.RoutePlanner$Plan
    public final RealConnection handleSuccess() {
        this.call.client.routeDatabase.connected(this.route);
        RealConnection realConnection = this.connection;
        realConnection.getClass();
        this.route.getClass();
        ReusePlan planReusePooledConnection$okhttp = this.routePlanner.planReusePooledConnection$okhttp(this, this.routes);
        if (planReusePooledConnection$okhttp != null) {
            return planReusePooledConnection$okhttp.connection;
        }
        synchronized (realConnection) {
            RealConnectionPool realConnectionPool = this.connectionPool;
            TimeZone timeZone = _UtilJvmKt.UTC;
            realConnectionPool.connections.add(realConnection);
            realConnectionPool.cleanupQueue.schedule(realConnectionPool.cleanupTask, 0L);
            this.call.acquireConnectionNoEvents(realConnection);
        }
        return realConnection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner$Plan
    public final boolean isReady() {
        return this.protocol != null;
    }

    public final ConnectPlan nextConnectionSpec$okhttp(List list, SSLSocket sSLSocket) {
        String[] strArr;
        String[] strArr2;
        int i = this.connectionSpecIndex;
        int size = list.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            ConnectionSpec connectionSpec = (ConnectionSpec) list.get(i2);
            connectionSpec.getClass();
            if (connectionSpec.isTls && (((strArr = connectionSpec.tlsVersionsAsString) == null || _UtilCommonKt.hasIntersection(strArr, sSLSocket.getEnabledProtocols(), NaturalOrderComparator.INSTANCE)) && ((strArr2 = connectionSpec.cipherSuitesAsString) == null || _UtilCommonKt.hasIntersection(strArr2, sSLSocket.getEnabledCipherSuites(), CipherSuite.ORDER_BY_NAME)))) {
                return new ConnectPlan(this.taskRunner, this.connectionPool, this.readTimeoutMillis, this.writeTimeoutMillis, this.socketConnectTimeoutMillis, this.socketReadTimeoutMillis, this.retryOnConnectionFailure, this.call, this.routePlanner, this.route, this.routes, this.tunnelRequest, i2, i != -1);
            }
        }
        return null;
    }

    public final ConnectPlan planWithCurrentOrInitialConnectionSpec$okhttp(List list, SSLSocket sSLSocket) {
        if (this.connectionSpecIndex != -1) {
            return this;
        }
        ConnectPlan nextConnectionSpec$okhttp = nextConnectionSpec$okhttp(list, sSLSocket);
        if (nextConnectionSpec$okhttp != null) {
            return nextConnectionSpec$okhttp;
        }
        StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
        sb.append(this.isTlsFallback);
        sb.append(", modes=");
        sb.append(list);
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        enabledProtocols.getClass();
        String arrays = Arrays.toString(enabledProtocols);
        arrays.getClass();
        sb.append(", supported protocols=");
        sb.append(arrays);
        throw new UnknownServiceException(sb.toString());
    }

    @Override // okhttp3.internal.connection.RoutePlanner$Plan
    public final RoutePlanner$Plan retry() {
        return new ConnectPlan(this.taskRunner, this.connectionPool, this.readTimeoutMillis, this.writeTimeoutMillis, this.socketConnectTimeoutMillis, this.socketReadTimeoutMillis, this.retryOnConnectionFailure, this.call, this.routePlanner, this.route, this.routes, this.tunnelRequest, this.connectionSpecIndex, this.isTlsFallback);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void noNewExchanges() {
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void trackFailure(RealCall realCall, IOException iOException) {
    }
}
