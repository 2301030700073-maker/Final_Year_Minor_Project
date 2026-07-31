package okhttp3.internal.connection;

import androidx.compose.runtime.Latch;
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
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealCall implements Call, Cloneable {
    public Object callStackTrace;
    public volatile boolean canceled;
    public final OkHttpClient client;
    public RealConnection connection;
    public final RealConnectionPool connectionPool;
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AsyncCall implements Runnable {
        public volatile AtomicInteger callsPerHost = new AtomicInteger(0);
        public final Callback responseCallback;

        public AsyncCall(Callback callback) {
            this.responseCallback = callback;
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
                        try {
                            this.responseCallback.onResponse(realCall, realCall.getResponseWithInterceptorChain$okhttp());
                            dispatcher = realCall.client.dispatcher;
                        } catch (IOException e) {
                            e = e;
                            z = true;
                            if (z) {
                                Platform platform = Platform.platform;
                                Platform.platform.log(4, "Callback failure for ".concat(RealCall.access$toLoggableString(realCall)), e);
                            } else {
                                this.responseCallback.onFailure(realCall, e);
                            }
                            dispatcher = realCall.client.dispatcher;
                            dispatcher.getClass();
                            Dispatcher.promoteAndExecute$default(dispatcher, null, this, 3);
                        } catch (Throwable th) {
                            th = th;
                            z = true;
                            realCall.cancel();
                            if (!z) {
                                IOException iOException = new IOException("canceled due to " + th);
                                iOException.initCause(th);
                                this.responseCallback.onFailure(realCall, iOException);
                            }
                            if (!(th instanceof InterruptedException)) {
                                throw th;
                            }
                            Thread.currentThread().interrupt();
                            dispatcher = realCall.client.dispatcher;
                            dispatcher.getClass();
                            Dispatcher.promoteAndExecute$default(dispatcher, null, this, 3);
                        }
                    } catch (Throwable th2) {
                        Dispatcher dispatcher2 = realCall.client.dispatcher;
                        dispatcher2.getClass();
                        Dispatcher.promoteAndExecute$default(dispatcher2, null, this, 3);
                        throw th2;
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (Throwable th3) {
                    th = th3;
                }
                dispatcher.getClass();
                Dispatcher.promoteAndExecute$default(dispatcher, null, this, 3);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CallReference extends WeakReference {
        public final Object callStackTrace;

        public CallReference(RealCall realCall, Object obj) {
            super(realCall);
            this.callStackTrace = obj;
        }
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [okhttp3.internal.connection.RealCall$timeout$1, okio.Timeout] */
    public RealCall(OkHttpClient okHttpClient, Request request) {
        request.getClass();
        this.client = okHttpClient;
        this.originalRequest = request;
        this.connectionPool = (RealConnectionPool) okHttpClient.connectionPool.delegate;
        okHttpClient.eventListenerFactory.getClass();
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
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
            } else if (releaseConnectionNoEvents$okhttp != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
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
        if (iOException != null) {
            iOException2.getClass();
        }
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
    }

    public final Object clone() {
        return new RealCall(this.client, this.originalRequest);
    }

    public final void enqueue(Callback callback) {
        if (!this.executed.compareAndSet(false, true)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Already Executed");
            return;
        }
        Platform platform = Platform.platform;
        this.callStackTrace = Platform.platform.getStackTraceForCloseable();
        Dispatcher dispatcher = this.client.dispatcher;
        AsyncCall asyncCall = new AsyncCall(callback);
        dispatcher.getClass();
        Dispatcher.promoteAndExecute$default(dispatcher, asyncCall, null, 6);
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

    public final Response getResponseWithInterceptorChain$okhttp() {
        ArrayList arrayList = new ArrayList();
        CollectionsKt.addAll(this.client.interceptors, arrayList);
        arrayList.add(new BridgeInterceptor(this.client));
        arrayList.add(new BridgeInterceptor(this.client.cookieJar));
        arrayList.add(new CacheInterceptor());
        arrayList.add(ConnectInterceptor.INSTANCE);
        CollectionsKt.addAll(this.client.networkInterceptors, arrayList);
        arrayList.add(CallServerInterceptor.INSTANCE);
        Request request = this.originalRequest;
        OkHttpClient okHttpClient = this.client;
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this, arrayList, 0, null, request, okHttpClient.connectTimeoutMillis, okHttpClient.readTimeoutMillis, okHttpClient.writeTimeoutMillis);
        boolean z = false;
        try {
            try {
                Response proceed = realInterceptorChain.proceed(this.originalRequest);
                if (this.canceled) {
                    _UtilCommonKt.closeQuietly(proceed);
                    throw new IOException("Canceled");
                }
                noMoreExchanges$okhttp(null);
                return proceed;
            } catch (IOException e) {
                z = true;
                IOException noMoreExchanges$okhttp = noMoreExchanges$okhttp(e);
                noMoreExchanges$okhttp.getClass();
                throw noMoreExchanges$okhttp;
            }
        } catch (Throwable th) {
            if (!z) {
                noMoreExchanges$okhttp(null);
            }
            throw th;
        }
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return null;
        }
        arrayList.remove(i);
        this.connection = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        realConnection.idleAtNs = System.nanoTime();
        RealConnectionPool realConnectionPool = this.connectionPool;
        ConcurrentLinkedQueue concurrentLinkedQueue = realConnectionPool.connections;
        TaskQueue taskQueue = realConnectionPool.cleanupQueue;
        TimeZone timeZone2 = _UtilJvmKt.UTC;
        if (!realConnection.noNewExchanges) {
            taskQueue.schedule(realConnectionPool.cleanupTask, 0L);
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
