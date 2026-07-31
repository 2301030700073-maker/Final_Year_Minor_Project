package okhttp3.internal.connection;

import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.Address;
import okhttp3.ConnectionPool;
import okhttp3.Handshake;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.FlowControlListener$None;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Http2Writer;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealConnection extends Http2Connection.Listener implements ExchangeCodec.Carrier {
    public int allocationLimit;
    public final ArrayList calls;
    public final Handshake handshake;
    public Http2Connection http2Connection;
    public long idleAtNs;
    public final Socket javaNetSocket;
    public boolean noCoalescedConnections;
    public boolean noNewExchanges;
    public final Protocol protocol;
    public final Socket rawSocket;
    public int refusedStreamCount;
    public final Route route;
    public int routeFailureCount;
    public final MultipartBody.Builder socket;
    public int successCount;
    public final TaskRunner taskRunner;

    public RealConnection(TaskRunner taskRunner, RealConnectionPool realConnectionPool, Route route, Socket socket, Socket socket2, Handshake handshake, Protocol protocol, MultipartBody.Builder builder) {
        taskRunner.getClass();
        route.getClass();
        socket.getClass();
        socket2.getClass();
        protocol.getClass();
        builder.getClass();
        this.taskRunner = taskRunner;
        this.route = route;
        this.rawSocket = socket;
        this.javaNetSocket = socket2;
        this.handshake = handshake;
        this.protocol = protocol;
        this.socket = builder;
        this.allocationLimit = 1;
        this.calls = new ArrayList();
        this.idleAtNs = Long.MAX_VALUE;
    }

    public static void connectFailed$okhttp(OkHttpClient okHttpClient, Route route, IOException iOException) {
        okHttpClient.getClass();
        route.getClass();
        iOException.getClass();
        if (route.proxy.type() != Proxy.Type.DIRECT) {
            Address address = route.address;
            address.proxySelector.connectFailed(address.url.uri(), route.proxy.address(), iOException);
        }
        ConnectionPool connectionPool = okHttpClient.routeDatabase;
        synchronized (connectionPool) {
            ((LinkedHashSet) connectionPool.delegate).add(route);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        _UtilJvmKt.closeQuietly(this.rawSocket);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final Route getRoute() {
        return this.route;
    }

    public final void incrementSuccessCount$okhttp() {
        synchronized (this) {
            this.successCount++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a7, code lost:
    
        if (okhttp3.internal.tls.OkHostnameVerifier.verify(r1, (java.security.cert.X509Certificate) r8) != false) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isEligible$okhttp(okhttp3.Address r9, java.util.List r10) {
        /*
            r8 = this;
            okhttp3.HttpUrl r0 = r9.url
            java.lang.String r1 = r0.host
            java.util.TimeZone r2 = okhttp3.internal._UtilJvmKt.UTC
            java.util.ArrayList r2 = r8.calls
            int r2 = r2.size()
            int r3 = r8.allocationLimit
            r4 = 0
            if (r2 >= r3) goto Ld4
            boolean r2 = r8.noNewExchanges
            if (r2 == 0) goto L17
            goto Ld4
        L17:
            okhttp3.Route r2 = r8.route
            okhttp3.Address r3 = r2.address
            okhttp3.Address r5 = r2.address
            boolean r3 = r3.equalsNonHost$okhttp(r9)
            if (r3 != 0) goto L25
            goto Ld4
        L25:
            okhttp3.HttpUrl r3 = r5.url
            java.lang.String r3 = r3.host
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r3 == 0) goto L31
            goto Lc9
        L31:
            okhttp3.internal.http2.Http2Connection r3 = r8.http2Connection
            if (r3 != 0) goto L37
            goto Ld4
        L37:
            if (r10 == 0) goto Ld4
            boolean r3 = r10.isEmpty()
            if (r3 == 0) goto L41
            goto Ld4
        L41:
            java.util.Iterator r10 = r10.iterator()
        L45:
            boolean r3 = r10.hasNext()
            if (r3 == 0) goto Ld4
            java.lang.Object r3 = r10.next()
            okhttp3.Route r3 = (okhttp3.Route) r3
            java.net.Proxy r6 = r3.proxy
            java.net.Proxy$Type r6 = r6.type()
            java.net.Proxy$Type r7 = java.net.Proxy.Type.DIRECT
            if (r6 != r7) goto L45
            java.net.Proxy r6 = r2.proxy
            java.net.Proxy$Type r6 = r6.type()
            if (r6 != r7) goto L45
            java.net.InetSocketAddress r6 = r2.socketAddress
            java.net.InetSocketAddress r3 = r3.socketAddress
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r3)
            if (r3 == 0) goto L45
            javax.net.ssl.HostnameVerifier r10 = r9.hostnameVerifier
            okhttp3.internal.tls.OkHostnameVerifier r2 = okhttp3.internal.tls.OkHostnameVerifier.INSTANCE
            if (r10 == r2) goto L74
            goto Ld4
        L74:
            java.util.TimeZone r10 = okhttp3.internal._UtilJvmKt.UTC
            okhttp3.HttpUrl r10 = r5.url
            int r0 = r0.port
            int r2 = r10.port
            if (r0 == r2) goto L7f
            goto Ld4
        L7f:
            java.lang.String r10 = r10.host
            boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r10)
            okhttp3.Handshake r0 = r8.handshake
            if (r10 == 0) goto L8a
            goto La9
        L8a:
            boolean r8 = r8.noCoalescedConnections
            if (r8 != 0) goto Ld4
            if (r0 == 0) goto Ld4
            java.util.List r8 = r0.peerCertificates()
            boolean r10 = r8.isEmpty()
            if (r10 != 0) goto Ld4
            java.lang.Object r8 = r8.get(r4)
            r8.getClass()
            java.security.cert.X509Certificate r8 = (java.security.cert.X509Certificate) r8
            boolean r8 = okhttp3.internal.tls.OkHostnameVerifier.verify(r1, r8)
            if (r8 == 0) goto Ld4
        La9:
            okhttp3.CertificatePinner r8 = r9.certificatePinner     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            r8.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            r0.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            java.util.List r9 = r0.peerCertificates()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            r1.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            r9.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            java.util.Set r8 = r8.pins     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            java.lang.Iterable r8 = (java.lang.Iterable) r8     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            java.util.Iterator r8 = r8.iterator()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            boolean r9 = r8.hasNext()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            if (r9 != 0) goto Lcb
        Lc9:
            r8 = 1
            return r8
        Lcb:
            java.lang.Object r8 = r8.next()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            androidx.compose.ui.Modifier.CC.m(r8)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            r8 = 0
            throw r8     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
        Ld4:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.isEligible$okhttp(okhttp3.Address, java.util.List):boolean");
    }

    public final boolean isHealthy(boolean z) {
        long j;
        TimeZone timeZone = _UtilJvmKt.UTC;
        long nanoTime = System.nanoTime();
        if (this.rawSocket.isClosed() || this.javaNetSocket.isClosed() || this.javaNetSocket.isInputShutdown() || this.javaNetSocket.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection = this.http2Connection;
        if (http2Connection != null) {
            return http2Connection.isHealthy(nanoTime);
        }
        synchronized (this) {
            j = nanoTime - this.idleAtNs;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        Socket socket = this.javaNetSocket;
        RealBufferedSource realBufferedSource = (RealBufferedSource) this.socket.type;
        socket.getClass();
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !realBufferedSource.exhausted();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void noNewExchanges() {
        synchronized (this) {
            this.noNewExchanges = true;
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void onSettings(Http2Connection http2Connection, Settings settings) {
        settings.getClass();
        synchronized (this) {
            this.allocationLimit = (settings.set & 8) != 0 ? settings.values[3] : Integer.MAX_VALUE;
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void onStream(Http2Stream http2Stream) {
        http2Stream.close(ErrorCode.REFUSED_STREAM, null);
    }

    public final void start() {
        this.idleAtNs = System.nanoTime();
        Protocol protocol = this.protocol;
        if (protocol == Protocol.HTTP_2 || protocol == Protocol.H2_PRIOR_KNOWLEDGE) {
            this.javaNetSocket.setSoTimeout(0);
            FlowControlListener$None flowControlListener$None = FlowControlListener$None.INSTANCE;
            TaskRunner taskRunner = this.taskRunner;
            taskRunner.getClass();
            Request.Builder builder = new Request.Builder();
            builder.url = taskRunner;
            builder.body = Http2Connection.Listener.REFUSE_INCOMING_STREAMS;
            builder.tags = FlowControlListener$None.INSTANCE;
            MultipartBody.Builder builder2 = this.socket;
            String str = this.route.address.url.host;
            builder2.getClass();
            str.getClass();
            builder.headers = builder2;
            builder.method = _UtilJvmKt.okHttpName + ' ' + str;
            builder.body = this;
            builder.tags = flowControlListener$None;
            Http2Connection http2Connection = new Http2Connection(builder);
            this.http2Connection = http2Connection;
            Settings settings = Http2Connection.DEFAULT_SETTINGS;
            this.allocationLimit = (settings.set & 8) != 0 ? settings.values[3] : Integer.MAX_VALUE;
            Http2Writer http2Writer = http2Connection.writer;
            synchronized (http2Writer) {
                try {
                    if (http2Writer.closed) {
                        throw new IOException("closed");
                    }
                    Logger logger = Http2Writer.logger;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(_UtilJvmKt.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.hex(), new Object[0]));
                    }
                    http2Writer.sink.write(Http2.CONNECTION_PREFACE);
                    http2Writer.sink.flush();
                } catch (Throwable th) {
                    throw th;
                }
            }
            http2Connection.writer.settings(http2Connection.okHttpSettings);
            if (http2Connection.okHttpSettings.getInitialWindowSize() != 65535) {
                http2Connection.writer.windowUpdate(r6 - 65535, 0);
            }
            TaskQueue.execute$default(http2Connection.taskRunner.newQueue(), http2Connection.connectionName, http2Connection.readerRunnable);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        Route route = this.route;
        sb.append(route.address.url.host);
        sb.append(':');
        sb.append(route.address.url.port);
        sb.append(", proxy=");
        sb.append(route.proxy);
        sb.append(" hostAddress=");
        sb.append(route.socketAddress);
        sb.append(" cipherSuite=");
        Handshake handshake = this.handshake;
        sb.append(handshake != null ? handshake.cipherSuite : "none");
        sb.append(" protocol=");
        sb.append(this.protocol);
        sb.append('}');
        return sb.toString();
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void trackFailure(RealCall realCall, IOException iOException) {
        synchronized (this) {
            try {
                if (!(iOException instanceof StreamResetException)) {
                    if (!(this.http2Connection != null) || (iOException instanceof ConnectionShutdownException)) {
                        this.noNewExchanges = true;
                        if (this.successCount == 0) {
                            if (iOException != null) {
                                connectFailed$okhttp(realCall.client, this.route, iOException);
                            }
                            this.routeFailureCount++;
                        }
                    }
                } else if (((StreamResetException) iOException).errorCode == ErrorCode.REFUSED_STREAM) {
                    int i = this.refusedStreamCount + 1;
                    this.refusedStreamCount = i;
                    if (i > 1) {
                        this.noNewExchanges = true;
                        this.routeFailureCount++;
                    }
                } else if (((StreamResetException) iOException).errorCode != ErrorCode.CANCEL || !realCall.canceled) {
                    this.noNewExchanges = true;
                    this.routeFailureCount++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
