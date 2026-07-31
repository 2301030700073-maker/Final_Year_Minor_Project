package okhttp3.internal.connection;

import com.fsck.k9.mailstore.LocalStore;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.Address;
import okhttp3.Handshake;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
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
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final EventRecodingLogger socket;
    public int successCount;
    public final TaskRunner taskRunner;

    public RealConnection(TaskRunner taskRunner, RealConnectionPool realConnectionPool, Route route, Socket socket, Socket socket2, Handshake handshake, Protocol protocol, EventRecodingLogger eventRecodingLogger) {
        taskRunner.getClass();
        realConnectionPool.getClass();
        route.getClass();
        socket.getClass();
        socket2.getClass();
        protocol.getClass();
        eventRecodingLogger.getClass();
        this.taskRunner = taskRunner;
        this.route = route;
        this.rawSocket = socket;
        this.javaNetSocket = socket2;
        this.handshake = handshake;
        this.protocol = protocol;
        this.socket = eventRecodingLogger;
        this.allocationLimit = 1;
        this.calls = new ArrayList();
        this.idleAtNs = Long.MAX_VALUE;
    }

    public static void connectFailed$okhttp(OkHttpClient okHttpClient, Route route, IOException iOException) {
        route.getClass();
        iOException.getClass();
        if (route.proxy.type() != Proxy.Type.DIRECT) {
            Address address = route.address;
            address.proxySelector.connectFailed(address.url.uri(), route.proxy.address(), iOException);
        }
        RouteDatabase routeDatabase = okHttpClient.routeDatabase;
        synchronized (routeDatabase) {
            routeDatabase._failedRoutes.add(route);
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

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a9, code lost:
    
        if (okhttp3.internal.tls.OkHostnameVerifier.verify(r5, (java.security.cert.X509Certificate) r8) != false) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isEligible$okhttp(okhttp3.Address r9, java.util.List r10) {
        /*
            r8 = this;
            okhttp3.HttpUrl r0 = r9.url
            java.util.TimeZone r1 = okhttp3.internal._UtilJvmKt.UTC
            java.util.ArrayList r1 = r8.calls
            int r1 = r1.size()
            int r2 = r8.allocationLimit
            r3 = 0
            if (r1 >= r2) goto Ld6
            boolean r1 = r8.noNewExchanges
            if (r1 == 0) goto L15
            goto Ld6
        L15:
            okhttp3.Route r1 = r8.route
            okhttp3.Address r2 = r1.address
            okhttp3.Address r4 = r1.address
            boolean r2 = r2.equalsNonHost$okhttp(r9)
            if (r2 != 0) goto L23
            goto Ld6
        L23:
            java.lang.String r2 = r0.host
            java.lang.String r5 = r0.host
            okhttp3.HttpUrl r6 = r4.url
            java.lang.String r6 = r6.host
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r6)
            if (r2 == 0) goto L33
            goto Lcb
        L33:
            okhttp3.internal.http2.Http2Connection r2 = r8.http2Connection
            if (r2 != 0) goto L39
            goto Ld6
        L39:
            if (r10 == 0) goto Ld6
            boolean r2 = r10.isEmpty()
            if (r2 == 0) goto L43
            goto Ld6
        L43:
            java.util.Iterator r10 = r10.iterator()
        L47:
            boolean r2 = r10.hasNext()
            if (r2 == 0) goto Ld6
            java.lang.Object r2 = r10.next()
            okhttp3.Route r2 = (okhttp3.Route) r2
            java.net.Proxy r6 = r2.proxy
            java.net.Proxy$Type r6 = r6.type()
            java.net.Proxy$Type r7 = java.net.Proxy.Type.DIRECT
            if (r6 != r7) goto L47
            java.net.Proxy r6 = r1.proxy
            java.net.Proxy$Type r6 = r6.type()
            if (r6 != r7) goto L47
            java.net.InetSocketAddress r6 = r1.socketAddress
            java.net.InetSocketAddress r2 = r2.socketAddress
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r2)
            if (r2 == 0) goto L47
            javax.net.ssl.HostnameVerifier r10 = r9.hostnameVerifier
            okhttp3.internal.tls.OkHostnameVerifier r1 = okhttp3.internal.tls.OkHostnameVerifier.INSTANCE
            if (r10 == r1) goto L76
            goto Ld6
        L76:
            java.util.TimeZone r10 = okhttp3.internal._UtilJvmKt.UTC
            okhttp3.HttpUrl r10 = r4.url
            int r0 = r0.port
            int r1 = r10.port
            if (r0 == r1) goto L81
            goto Ld6
        L81:
            java.lang.String r10 = r10.host
            boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r10)
            okhttp3.Handshake r0 = r8.handshake
            if (r10 == 0) goto L8c
            goto Lab
        L8c:
            boolean r8 = r8.noCoalescedConnections
            if (r8 != 0) goto Ld6
            if (r0 == 0) goto Ld6
            java.util.List r8 = r0.peerCertificates()
            boolean r10 = r8.isEmpty()
            if (r10 != 0) goto Ld6
            java.lang.Object r8 = r8.get(r3)
            r8.getClass()
            java.security.cert.X509Certificate r8 = (java.security.cert.X509Certificate) r8
            boolean r8 = okhttp3.internal.tls.OkHostnameVerifier.verify(r5, r8)
            if (r8 == 0) goto Ld6
        Lab:
            okhttp3.CertificatePinner r8 = r9.certificatePinner     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            r8.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            r0.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            java.util.List r9 = r0.peerCertificates()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            r5.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            r9.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            java.util.Set r8 = r8.pins     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            java.lang.Iterable r8 = (java.lang.Iterable) r8     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            java.util.Iterator r8 = r8.iterator()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            boolean r9 = r8.hasNext()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            if (r9 != 0) goto Lcd
        Lcb:
            r8 = 1
            return r8
        Lcd:
            java.lang.Object r8 = r8.next()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            androidx.camera.core.impl.Config.CC.m$1(r8)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
            r8 = 0
            throw r8     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld6
        Ld6:
            return r3
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
        RealBufferedSource realBufferedSource = (RealBufferedSource) this.socket.logger;
        socket.getClass();
        realBufferedSource.getClass();
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
            LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(this.taskRunner);
            EventRecodingLogger eventRecodingLogger = this.socket;
            String str = this.route.address.url.host;
            eventRecodingLogger.getClass();
            str.getClass();
            anonymousClass7.val$folder = eventRecodingLogger;
            anonymousClass7.val$queryString = _UtilJvmKt.okHttpName + ' ' + str;
            anonymousClass7.val$messages = this;
            anonymousClass7.this$0 = flowControlListener$None;
            Http2Connection http2Connection = new Http2Connection(anonymousClass7);
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
                http2Connection.writer.windowUpdate(0, r6 - 65535);
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
