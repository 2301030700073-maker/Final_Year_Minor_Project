package okhttp3.internal.connection;

import androidx.compose.runtime.Latch;
import coil3.network.okhttp.internal.CallsKt$await$2$2$onResponse$1;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.rx3.RxAwaitKt$await$5$1;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$execute$1;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealCall implements Cloneable {
    public Object callStackTrace;
    public volatile boolean canceled;
    public final OkHttpClient client;
    public RealConnection connection;
    public final RealConnectionPool connectionPool;
    public volatile EventListener eventListener;
    public volatile Latch exchange;
    public ExchangeFinder exchangeFinder;
    public final AtomicBoolean executed;
    public boolean expectMoreExchanges;
    public Latch interceptorScopedExchange;
    public final Request originalRequest;
    public final CopyOnWriteArrayList plansToCancel;
    public boolean requestBodyOpen;
    public boolean responseBodyOpen;
    public boolean socketSinkOpen;
    public boolean socketSourceOpen;
    public final RealCall$timeout$1 timeout;
    public boolean timeoutEarlyExit;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AsyncCall implements Runnable {
        public volatile AtomicInteger callsPerHost = new AtomicInteger(0);
        public final RxAwaitKt$await$5$1 responseCallback;

        public AsyncCall(RxAwaitKt$await$5$1 rxAwaitKt$await$5$1) {
            this.responseCallback = rxAwaitKt$await$5$1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Dispatcher dispatcher;
            String concat = "OkHttp ".concat(RealCall.this.originalRequest.url.redact());
            RealCall realCall = RealCall.this;
            Thread currentThread = Thread.currentThread();
            String name = currentThread.getName();
            currentThread.setName(concat);
            try {
                realCall.timeout.enter();
                boolean z = false;
                try {
                    try {
                    } catch (Throwable th) {
                        Dispatcher dispatcher2 = realCall.client.dispatcher;
                        dispatcher2.getClass();
                        Dispatcher.promoteAndExecute$default(dispatcher2, null, null, this, 3);
                        throw th;
                    }
                } catch (IOException e) {
                    e = e;
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    this.responseCallback.$cont.resume(realCall.getResponseWithInterceptorChain$okhttp(), CallsKt$await$2$2$onResponse$1.INSTANCE);
                    dispatcher = realCall.client.dispatcher;
                } catch (IOException e2) {
                    e = e2;
                    z = true;
                    if (z) {
                        Platform platform = Platform.platform;
                        Platform.platform.log("Callback failure for ".concat(RealCall.access$toLoggableString(realCall)), e, 4);
                    } else {
                        this.responseCallback.$cont.resumeWith(new Result.Failure(e));
                    }
                    dispatcher = realCall.client.dispatcher;
                    dispatcher.getClass();
                    Dispatcher.promoteAndExecute$default(dispatcher, null, null, this, 3);
                } catch (Throwable th3) {
                    th = th3;
                    z = true;
                    realCall.cancel();
                    if (!z) {
                        IOException iOException = new IOException("canceled due to " + th);
                        iOException.initCause(th);
                        this.responseCallback.$cont.resumeWith(new Result.Failure(iOException));
                    }
                    if (!(th instanceof InterruptedException)) {
                        throw th;
                    }
                    Thread.currentThread().interrupt();
                    dispatcher = realCall.client.dispatcher;
                    dispatcher.getClass();
                    Dispatcher.promoteAndExecute$default(dispatcher, null, null, this, 3);
                }
                dispatcher.getClass();
                Dispatcher.promoteAndExecute$default(dispatcher, null, null, this, 3);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CallReference extends WeakReference {
        public final Object callStackTrace;

        public CallReference(RealCall realCall, Object obj) {
            super(realCall);
            this.callStackTrace = obj;
        }
    }

    static {
        AtomicReferenceFieldUpdater.newUpdater(RealCall.class, EventListener.class, "eventListener");
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [okhttp3.internal.connection.RealCall$timeout$1, okio.Timeout] */
    public RealCall(OkHttpClient okHttpClient, Request request) {
        okHttpClient.getClass();
        request.getClass();
        this.client = okHttpClient;
        this.originalRequest = request;
        this.connectionPool = (RealConnectionPool) okHttpClient.connectionPool.delegate;
        okHttpClient.eventListenerFactory.getClass();
        this.eventListener = EventListener.NONE;
        ?? r3 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // okio.AsyncTimeout
            public final void timedOut() {
                RealCall.this.cancel();
            }
        };
        r3.timeout(0L);
        this.timeout = r3;
        this.executed = new AtomicBoolean();
        this.expectMoreExchanges = true;
        this.plansToCancel = new CopyOnWriteArrayList();
        new AtomicReference(request.tags);
    }

    public static final String access$toLoggableString(RealCall realCall) {
        StringBuilder sb = new StringBuilder();
        sb.append(realCall.canceled ? "canceled " : "");
        sb.append("call");
        sb.append(" to ");
        sb.append(realCall.originalRequest.url.redact());
        return sb.toString();
    }

    public final void acquireConnectionNoEvents(RealConnection realConnection) {
        realConnection.getClass();
        TimeZone timeZone = _UtilJvmKt.UTC;
        if (this.connection != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Check failed.");
        } else {
            this.connection = realConnection;
            realConnection.calls.add(new CallReference(this, this.callStackTrace));
        }
    }

    public final IOException callDone(IOException iOException) {
        IOException iOException2;
        Socket releaseConnectionNoEvents$okhttp;
        TimeZone timeZone = _UtilJvmKt.UTC;
        RealConnection realConnection = this.connection;
        if (realConnection != null) {
            synchronized (realConnection) {
                releaseConnectionNoEvents$okhttp = releaseConnectionNoEvents$okhttp();
            }
            if (this.connection == null) {
                if (releaseConnectionNoEvents$okhttp != null) {
                    _UtilJvmKt.closeQuietly(releaseConnectionNoEvents$okhttp);
                }
                this.eventListener.getClass();
            } else if (releaseConnectionNoEvents$okhttp != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Check failed.");
                return null;
            }
        }
        if (!this.timeoutEarlyExit && exit()) {
            iOException2 = new InterruptedIOException("timeout");
            if (iOException != null) {
                iOException2.initCause(iOException);
            }
        } else {
            iOException2 = iOException;
        }
        EventListener eventListener = this.eventListener;
        if (iOException == null) {
            eventListener.getClass();
            return iOException2;
        }
        iOException2.getClass();
        eventListener.getClass();
        return iOException2;
    }

    public final void cancel() {
        if (this.canceled) {
            return;
        }
        this.canceled = true;
        Latch latch = this.exchange;
        if (latch != null) {
            ((ExchangeCodec) latch.spareList).cancel();
        }
        Iterator it = this.plansToCancel.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((RoutePlanner$Plan) it.next()).cancel();
        }
        this.eventListener.getClass();
    }

    public final Object clone() {
        return new RealCall(this.client, this.originalRequest);
    }

    public final void exitNetworkInterceptorExchange$okhttp(boolean z) {
        Latch latch;
        synchronized (this) {
            if (!this.expectMoreExchanges) {
                throw new IllegalStateException("released");
            }
        }
        if (z && (latch = this.exchange) != null) {
            ((ExchangeCodec) latch.spareList).cancel();
            ((RealCall) latch.lock).messageDone$okhttp(latch, true, true, true, true, null);
        }
        this.interceptorScopedExchange = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response getResponseWithInterceptorChain$okhttp() {
        /*
            r24 = this;
            r1 = r24
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            okhttp3.OkHttpClient r0 = r1.client
            java.util.List r0 = r0.interceptors
            kotlin.collections.CollectionsKt__MutableCollectionsKt.addAll(r0, r2)
            okhttp3.internal.http.BridgeInterceptor r0 = new okhttp3.internal.http.BridgeInterceptor
            r3 = 2
            r0.<init>(r3)
            r2.add(r0)
            okhttp3.internal.http.BridgeInterceptor r0 = new okhttp3.internal.http.BridgeInterceptor
            r3 = 0
            r0.<init>(r3)
            r2.add(r0)
            okhttp3.internal.cache.CacheInterceptor r0 = new okhttp3.internal.cache.CacheInterceptor
            r0.<init>()
            r2.add(r0)
            okhttp3.internal.connection.ConnectInterceptor r0 = okhttp3.internal.connection.ConnectInterceptor.INSTANCE
            r2.add(r0)
            okhttp3.OkHttpClient r0 = r1.client
            java.util.List r0 = r0.networkInterceptors
            kotlin.collections.CollectionsKt__MutableCollectionsKt.addAll(r0, r2)
            okhttp3.internal.http.BridgeInterceptor r0 = okhttp3.internal.http.BridgeInterceptor.INSTANCE
            r2.add(r0)
            okhttp3.internal.http.RealInterceptorChain r0 = new okhttp3.internal.http.RealInterceptorChain
            okhttp3.Request r5 = r1.originalRequest
            okhttp3.OkHttpClient r4 = r1.client
            r5.getClass()
            r4.getClass()
            int r6 = r4.connectTimeoutMillis
            int r7 = r4.readTimeoutMillis
            int r8 = r4.writeTimeoutMillis
            okhttp3.HttpUrl$Companion r9 = r4.authenticator
            okhttp3.CertificatePinner r10 = r4.certificatePinner
            okhttp3.ConnectionPool r11 = r4.connectionPool
            okhttp3.HttpUrl$Companion r12 = r4.cookieJar
            okhttp3.HttpUrl$Companion r13 = r4.dns
            okhttp3.internal.tls.OkHostnameVerifier r14 = r4.hostnameVerifier
            okhttp3.HttpUrl$Companion r15 = r4.proxyAuthenticator
            java.net.ProxySelector r3 = r4.proxySelector
            r17 = r0
            boolean r0 = r4.retryOnConnectionFailure
            r18 = r0
            javax.net.SocketFactory r0 = r4.socketFactory
            r19 = r0
            javax.net.ssl.SSLSocketFactory r0 = r4.sslSocketFactoryOrNull
            r20 = r0
            javax.net.ssl.X509TrustManager r0 = r4.x509TrustManager
            net.newpipe.app.AppKt r4 = r4.certificateChainCleaner
            r16 = r3
            r21 = 0
            r3 = 0
            r22 = r21
            r21 = r4
            r4 = 0
            r23 = r20
            r20 = r0
            r0 = r17
            r17 = r18
            r18 = r19
            r19 = r23
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)
            r2 = 0
            okhttp3.Request r3 = r1.originalRequest     // Catch: java.lang.Throwable -> La0 java.io.IOException -> La4
            okhttp3.Response r0 = r0.proceed(r3)     // Catch: java.lang.Throwable -> La0 java.io.IOException -> La4
            boolean r3 = r1.canceled     // Catch: java.lang.Throwable -> La0 java.io.IOException -> La4
            if (r3 != 0) goto L95
            r1.noMoreExchanges$okhttp(r2)
            return r0
        L95:
            okhttp3.internal._UtilCommonKt.closeQuietly(r0)     // Catch: java.lang.Throwable -> La0 java.io.IOException -> La4
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> La0 java.io.IOException -> La4
            java.lang.String r3 = "Canceled"
            r0.<init>(r3)     // Catch: java.lang.Throwable -> La0 java.io.IOException -> La4
            throw r0     // Catch: java.lang.Throwable -> La0 java.io.IOException -> La4
        La0:
            r0 = move-exception
            r3 = r22
            goto Laf
        La4:
            r0 = move-exception
            r3 = 1
            java.io.IOException r0 = r1.noMoreExchanges$okhttp(r0)     // Catch: java.lang.Throwable -> Lae
            r0.getClass()     // Catch: java.lang.Throwable -> Lae
            throw r0     // Catch: java.lang.Throwable -> Lae
        Lae:
            r0 = move-exception
        Laf:
            if (r3 != 0) goto Lb4
            r1.noMoreExchanges$okhttp(r2)
        Lb4:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.getResponseWithInterceptorChain$okhttp():okhttp3.Response");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:53:0x0011, B:10:0x002c, B:12:0x0030, B:14:0x0034, B:16:0x0038, B:17:0x003a, B:19:0x003f, B:21:0x0043, B:23:0x0047, B:27:0x0050, B:7:0x001a, B:46:0x0020, B:49:0x0026), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0030 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:53:0x0011, B:10:0x002c, B:12:0x0030, B:14:0x0034, B:16:0x0038, B:17:0x003a, B:19:0x003f, B:21:0x0043, B:23:0x0047, B:27:0x0050, B:7:0x001a, B:46:0x0020, B:49:0x0026), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:53:0x0011, B:10:0x002c, B:12:0x0030, B:14:0x0034, B:16:0x0038, B:17:0x003a, B:19:0x003f, B:21:0x0043, B:23:0x0047, B:27:0x0050, B:7:0x001a, B:46:0x0020, B:49:0x0026), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:53:0x0011, B:10:0x002c, B:12:0x0030, B:14:0x0034, B:16:0x0038, B:17:0x003a, B:19:0x003f, B:21:0x0043, B:23:0x0047, B:27:0x0050, B:7:0x001a, B:46:0x0020, B:49:0x0026), top: B:52:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0050 A[Catch: all -> 0x0016, TRY_LEAVE, TryCatch #0 {all -> 0x0016, blocks: (B:53:0x0011, B:10:0x002c, B:12:0x0030, B:14:0x0034, B:16:0x0038, B:17:0x003a, B:19:0x003f, B:21:0x0043, B:23:0x0047, B:27:0x0050, B:7:0x001a, B:46:0x0020, B:49:0x0026), top: B:52:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.IOException messageDone$okhttp(androidx.compose.runtime.Latch r3, boolean r4, boolean r5, boolean r6, boolean r7, java.io.IOException r8) {
        /*
            r2 = this;
            r3.getClass()
            androidx.compose.runtime.Latch r0 = r2.exchange
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto Ld
            goto L70
        Ld:
            monitor-enter(r2)
            r3 = 0
            if (r4 == 0) goto L18
            boolean r0 = r2.requestBodyOpen     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto L2a
            goto L18
        L16:
            r3 = move-exception
            goto L59
        L18:
            if (r5 == 0) goto L1e
            boolean r0 = r2.responseBodyOpen     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto L2a
        L1e:
            if (r7 == 0) goto L24
            boolean r0 = r2.socketSinkOpen     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto L2a
        L24:
            if (r6 == 0) goto L5b
            boolean r0 = r2.socketSourceOpen     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto L5b
        L2a:
            if (r4 == 0) goto L2e
            r2.requestBodyOpen = r3     // Catch: java.lang.Throwable -> L16
        L2e:
            if (r5 == 0) goto L32
            r2.responseBodyOpen = r3     // Catch: java.lang.Throwable -> L16
        L32:
            if (r7 == 0) goto L36
            r2.socketSinkOpen = r3     // Catch: java.lang.Throwable -> L16
        L36:
            if (r6 == 0) goto L3a
            r2.socketSourceOpen = r3     // Catch: java.lang.Throwable -> L16
        L3a:
            boolean r4 = r2.requestBodyOpen     // Catch: java.lang.Throwable -> L16
            r5 = 1
            if (r4 != 0) goto L4d
            boolean r4 = r2.responseBodyOpen     // Catch: java.lang.Throwable -> L16
            if (r4 != 0) goto L4d
            boolean r4 = r2.socketSinkOpen     // Catch: java.lang.Throwable -> L16
            if (r4 != 0) goto L4d
            boolean r4 = r2.socketSourceOpen     // Catch: java.lang.Throwable -> L16
            if (r4 != 0) goto L4d
            r4 = r5
            goto L4e
        L4d:
            r4 = r3
        L4e:
            if (r4 == 0) goto L55
            boolean r6 = r2.expectMoreExchanges     // Catch: java.lang.Throwable -> L16
            if (r6 != 0) goto L55
            r3 = r5
        L55:
            r1 = r4
            r4 = r3
            r3 = r1
            goto L5c
        L59:
            monitor-exit(r2)
            throw r3
        L5b:
            r4 = r3
        L5c:
            monitor-exit(r2)
            if (r3 == 0) goto L69
            r3 = 0
            r2.exchange = r3
            okhttp3.internal.connection.RealConnection r3 = r2.connection
            if (r3 == 0) goto L69
            r3.incrementSuccessCount$okhttp()
        L69:
            if (r4 == 0) goto L70
            java.io.IOException r2 = r2.callDone(r8)
            return r2
        L70:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.messageDone$okhttp(androidx.compose.runtime.Latch, boolean, boolean, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    public final IOException noMoreExchanges$okhttp(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.expectMoreExchanges) {
                this.expectMoreExchanges = false;
                if (!this.requestBodyOpen && !this.responseBodyOpen && !this.socketSinkOpen) {
                    if (!this.socketSourceOpen) {
                        z = true;
                    }
                }
            }
        }
        return z ? callDone(iOException) : iOException;
    }

    public final Socket releaseConnectionNoEvents$okhttp() {
        RealConnection realConnection = this.connection;
        realConnection.getClass();
        TimeZone timeZone = _UtilJvmKt.UTC;
        ArrayList arrayList = realConnection.calls;
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (Intrinsics.areEqual(((Reference) it.next()).get(), this)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Check failed.");
            return null;
        }
        arrayList.remove(i);
        this.connection = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        realConnection.idleAtNs = System.nanoTime();
        RealConnectionPool realConnectionPool = this.connectionPool;
        ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) realConnectionPool.connections;
        TaskQueue taskQueue = (TaskQueue) realConnectionPool.cleanupQueue;
        TimeZone timeZone2 = _UtilJvmKt.UTC;
        if (!realConnection.noNewExchanges) {
            taskQueue.schedule((TaskQueue$execute$1) realConnectionPool.cleanupTask, 0L);
            return null;
        }
        realConnection.noNewExchanges = true;
        concurrentLinkedQueue.remove(realConnection);
        if (concurrentLinkedQueue.isEmpty()) {
            taskQueue.cancelAll();
        }
        return realConnection.javaNetSocket;
    }
}
