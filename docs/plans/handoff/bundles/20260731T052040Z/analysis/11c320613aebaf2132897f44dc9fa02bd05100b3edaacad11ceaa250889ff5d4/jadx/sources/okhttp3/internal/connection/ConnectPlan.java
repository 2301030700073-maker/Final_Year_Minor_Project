package okhttp3.internal.connection;

import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.util.Log;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.NaturalOrderComparator;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.StringsKt__IndentKt;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$execute$1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public ProcessFinisher socket;
    public final int socketConnectTimeoutMillis;
    public final int socketReadTimeoutMillis;
    public final TaskRunner taskRunner;
    public final Request tunnelRequest;
    public final int writeTimeoutMillis;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        realConnectionPool.getClass();
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("canceled");
            return;
        }
        createSocket.setSoTimeout(this.socketReadTimeoutMillis);
        try {
            Platform platform = Platform.platform;
            Platform.platform.connectSocket(createSocket, this.route.socketAddress, this.socketConnectTimeoutMillis);
            try {
                this.socket = new ProcessFinisher(new Dispatcher(createSocket));
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
        if (this.rawSocket != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("TCP already connected");
            return null;
        }
        this.call.plansToCancel.add(this);
        boolean z = false;
        try {
            try {
                EventListener eventListener = this.call.eventListener;
                InetSocketAddress inetSocketAddress = this.route.socketAddress;
                eventListener.getClass();
                inetSocketAddress.getClass();
                this.connectionPool.getClass();
                this.route.getClass();
                connectSocket();
                z = true;
                RoutePlanner$ConnectResult routePlanner$ConnectResult = new RoutePlanner$ConnectResult(this, (Throwable) null, 6);
                this.call.plansToCancel.remove(this);
                return routePlanner$ConnectResult;
            } catch (IOException e) {
                Route route = this.route;
                Address address = route.address;
                if (route.proxy.type() != Proxy.Type.DIRECT) {
                    Address address2 = this.route.address;
                    address2.proxySelector.connectFailed(address2.url.uri(), this.route.proxy.address(), e);
                }
                EventListener eventListener2 = this.call.eventListener;
                InetSocketAddress inetSocketAddress2 = this.route.socketAddress;
                eventListener2.getClass();
                inetSocketAddress2.getClass();
                this.connectionPool.getClass();
                this.route.getClass();
                RoutePlanner$ConnectResult routePlanner$ConnectResult2 = new RoutePlanner$ConnectResult(this, e, 2);
                this.call.plansToCancel.remove(this);
                if (!z && (socket2 = this.rawSocket) != null) {
                    _UtilJvmKt.closeQuietly(socket2);
                }
                return routePlanner$ConnectResult2;
            }
        } catch (Throwable th) {
            this.call.plansToCancel.remove(this);
            if (!z && (socket = this.rawSocket) != null) {
                _UtilJvmKt.closeQuietly(socket);
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
            Handshake handshake = MathKt.get(session);
            HostnameVerifier hostnameVerifier = address.hostnameVerifier;
            hostnameVerifier.getClass();
            boolean verify = hostnameVerifier.verify(address.url.host, session);
            int i = 0;
            if (!verify) {
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
                CertificatePinner certificatePinner = CertificatePinner.DEFAULT;
                sb.append(CloseableKt.pin(x509Certificate));
                sb.append("\n            |    DN: ");
                sb.append(x509Certificate.getSubjectDN().getName());
                sb.append("\n            |    subjectAltNames: ");
                sb.append(CollectionsKt.plus((Collection) OkHostnameVerifier.getSubjectAltNames(x509Certificate, 7), OkHostnameVerifier.getSubjectAltNames(x509Certificate, 2)));
                sb.append("\n            ");
                throw new SSLPeerUnverifiedException(StringsKt__IndentKt.trimMargin$default(sb.toString()));
            }
            CertificatePinner certificatePinner2 = address.certificatePinner;
            certificatePinner2.getClass();
            this.handshake = new Handshake(handshake.tlsVersion, handshake.cipherSuite, handshake.localCertificates, new ConnectPlan$$ExternalSyntheticLambda0(i, certificatePinner2, handshake, address));
            address.url.host.getClass();
            Iterator it = certificatePinner2.pins.iterator();
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
            this.socket = new ProcessFinisher(new Dispatcher(sSLSocket));
            if (str != null) {
                Protocol.Companion.getClass();
                protocol = HttpUrl.Companion.get(str);
            } else {
                protocol = Protocol.HTTP_1_1;
            }
            this.protocol = protocol;
            Platform platform3 = Platform.platform;
            Platform.platform.getClass();
        } catch (Throwable th) {
            Platform platform4 = Platform.platform;
            Platform.platform.getClass();
            _UtilJvmKt.closeQuietly(sSLSocket);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x016a  */
    @Override // okhttp3.internal.connection.RoutePlanner$Plan
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RoutePlanner$ConnectResult connectTlsEtc() {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ConnectPlan.connectTlsEtc():okhttp3.internal.connection.RoutePlanner$ConnectResult");
    }

    public final RoutePlanner$ConnectResult connectTunnel$okhttp() {
        Request request = this.tunnelRequest;
        request.getClass();
        Route route = this.route;
        String str = "CONNECT " + _UtilJvmKt.toHostHeader(route.address.url, true) + " HTTP/1.1";
        ProcessFinisher processFinisher = this.socket;
        if (processFinisher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, processFinisher);
        ProcessFinisher processFinisher2 = this.socket;
        if (processFinisher2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        ((RealBufferedSource) processFinisher2.config).source.timeout().timeout(this.readTimeoutMillis);
        ProcessFinisher processFinisher3 = this.socket;
        if (processFinisher3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        ((RealBufferedSink) processFinisher3.lastActivityManager).sink.timeout().timeout(this.writeTimeoutMillis);
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
            _UtilJvmKt.skipAll(newFixedLengthSource, Log.LOG_LEVEL_OFF);
            newFixedLengthSource.close();
        }
        if (i == 200) {
            return new RoutePlanner$ConnectResult(this, (Throwable) null, 6);
        }
        if (i != 407) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(i, "Unexpected response code for CONNECT: "));
            return null;
        }
        route.address.proxyAuthenticator.getClass();
        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Failed to authenticate with proxy");
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
            realConnectionPool.getClass();
            TimeZone timeZone = _UtilJvmKt.UTC;
            ((ConcurrentLinkedQueue) realConnectionPool.connections).add(realConnection);
            ((TaskQueue) realConnectionPool.cleanupQueue).schedule((TaskQueue$execute$1) realConnectionPool.cleanupTask, 0L);
            this.call.acquireConnectionNoEvents(realConnection);
        }
        this.call.eventListener.getClass();
        return realConnection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner$Plan
    public final boolean isReady() {
        return this.protocol != null;
    }

    public final ConnectPlan nextConnectionSpec$okhttp(List list, SSLSocket sSLSocket) {
        String[] strArr;
        String[] strArr2;
        list.getClass();
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
        list.getClass();
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
