package okhttp3.internal.connection;

import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import coil3.intercept.RealInterceptorChain;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.Address;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;
import okio.PriorityQueue;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealRoutePlanner {
    public final Address address;
    public final RealCall call;
    public final RealConnectionPool connectionPool;
    public final ArrayDeque deferredPlans;
    public final boolean doExtensiveHealthChecks;
    public final boolean fastFallback;
    public Route nextRouteToTry;
    public final int readTimeoutMillis;
    public final boolean retryOnConnectionFailure;
    public final ConnectionPool routeDatabase;
    public PriorityQueue routeSelection;
    public RealInterceptorChain routeSelector;
    public final int socketConnectTimeoutMillis;
    public final int socketReadTimeoutMillis;
    public final TaskRunner taskRunner;
    public final int writeTimeoutMillis;

    public RealRoutePlanner(TaskRunner taskRunner, RealConnectionPool realConnectionPool, int i, int i2, int i3, int i4, boolean z, boolean z2, Address address, ConnectionPool connectionPool, RealCall realCall, Request request) {
        taskRunner.getClass();
        connectionPool.getClass();
        this.taskRunner = taskRunner;
        this.connectionPool = realConnectionPool;
        this.readTimeoutMillis = i;
        this.writeTimeoutMillis = i2;
        this.socketConnectTimeoutMillis = i3;
        this.socketReadTimeoutMillis = i4;
        this.retryOnConnectionFailure = z;
        this.fastFallback = z2;
        this.address = address;
        this.routeDatabase = connectionPool;
        this.call = realCall;
        this.doExtensiveHealthChecks = !Intrinsics.areEqual(request.method, "GET");
        this.deferredPlans = new ArrayDeque();
    }

    public final boolean hasNext(RealConnection realConnection) {
        RealInterceptorChain realInterceptorChain;
        Route route;
        if (this.deferredPlans.isEmpty() && this.nextRouteToTry == null) {
            if (realConnection != null) {
                synchronized (realConnection) {
                    route = null;
                    if (realConnection.routeFailureCount == 0 && realConnection.noNewExchanges && _UtilJvmKt.canReuseConnectionFor(realConnection.route.address.url, this.address.url)) {
                        route = realConnection.route;
                    }
                }
                if (route != null) {
                    this.nextRouteToTry = route;
                    return true;
                }
            }
            PriorityQueue priorityQueue = this.routeSelection;
            if ((priorityQueue == null || priorityQueue.size >= ((ArrayList) priorityQueue.array).size()) && (realInterceptorChain = this.routeSelector) != null) {
                return realInterceptorChain.hasNext();
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RoutePlanner$Plan plan() {
        /*
            r7 = this;
            okhttp3.internal.connection.RealCall r0 = r7.call
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            r1 = 0
            if (r0 != 0) goto L9
        L7:
            r2 = r1
            goto L65
        L9:
            boolean r2 = r7.doExtensiveHealthChecks
            boolean r2 = r0.isHealthy(r2)
            monitor-enter(r0)
            boolean r3 = r0.noNewExchanges
            r4 = 1
            if (r2 != 0) goto L21
            r0.noNewExchanges = r4     // Catch: java.lang.Throwable -> L1e
            okhttp3.internal.connection.RealCall r2 = r7.call     // Catch: java.lang.Throwable -> L1e
            java.net.Socket r2 = r2.releaseConnectionNoEvents$okhttp()     // Catch: java.lang.Throwable -> L1e
            goto L4a
        L1e:
            r7 = move-exception
            goto L8e
        L21:
            if (r3 != 0) goto L44
            okhttp3.Route r2 = r0.route     // Catch: java.lang.Throwable -> L1e
            okhttp3.Address r2 = r2.address     // Catch: java.lang.Throwable -> L1e
            okhttp3.HttpUrl r2 = r2.url     // Catch: java.lang.Throwable -> L1e
            okhttp3.Address r3 = r7.address     // Catch: java.lang.Throwable -> L1e
            okhttp3.HttpUrl r3 = r3.url     // Catch: java.lang.Throwable -> L1e
            int r5 = r2.port     // Catch: java.lang.Throwable -> L1e
            int r6 = r3.port     // Catch: java.lang.Throwable -> L1e
            if (r5 != r6) goto L3e
            java.lang.String r2 = r2.host     // Catch: java.lang.Throwable -> L1e
            java.lang.String r3 = r3.host     // Catch: java.lang.Throwable -> L1e
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)     // Catch: java.lang.Throwable -> L1e
            if (r2 == 0) goto L3e
            goto L3f
        L3e:
            r4 = 0
        L3f:
            if (r4 != 0) goto L42
            goto L44
        L42:
            r2 = r1
            goto L4a
        L44:
            okhttp3.internal.connection.RealCall r2 = r7.call     // Catch: java.lang.Throwable -> L1e
            java.net.Socket r2 = r2.releaseConnectionNoEvents$okhttp()     // Catch: java.lang.Throwable -> L1e
        L4a:
            monitor-exit(r0)
            okhttp3.internal.connection.RealCall r3 = r7.call
            okhttp3.internal.connection.RealConnection r3 = r3.connection
            if (r3 == 0) goto L5f
            if (r2 != 0) goto L59
            okhttp3.internal.connection.ReusePlan r2 = new okhttp3.internal.connection.ReusePlan
            r2.<init>(r0)
            goto L65
        L59:
            java.lang.String r7 = "Check failed."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r1
        L5f:
            if (r2 == 0) goto L7
            okhttp3.internal._UtilJvmKt.closeQuietly(r2)
            goto L7
        L65:
            if (r2 == 0) goto L68
            return r2
        L68:
            okhttp3.internal.connection.ReusePlan r0 = r7.planReusePooledConnection$okhttp(r1, r1)
            if (r0 == 0) goto L6f
            return r0
        L6f:
            kotlin.collections.ArrayDeque r0 = r7.deferredPlans
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L80
            kotlin.collections.ArrayDeque r7 = r7.deferredPlans
            java.lang.Object r7 = r7.removeFirst()
            okhttp3.internal.connection.RoutePlanner$Plan r7 = (okhttp3.internal.connection.RoutePlanner$Plan) r7
            return r7
        L80:
            okhttp3.internal.connection.ConnectPlan r0 = r7.planConnect$okhttp()
            java.util.List r1 = r0.routes
            okhttp3.internal.connection.ReusePlan r7 = r7.planReusePooledConnection$okhttp(r0, r1)
            if (r7 == 0) goto L8d
            return r7
        L8d:
            return r0
        L8e:
            monitor-exit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealRoutePlanner.plan():okhttp3.internal.connection.RoutePlanner$Plan");
    }

    public final ConnectPlan planConnect$okhttp() {
        String str;
        int i;
        List list;
        boolean contains;
        Route route = this.nextRouteToTry;
        if (route != null) {
            this.nextRouteToTry = null;
            return planConnectToRoute$okhttp(route, null);
        }
        PriorityQueue priorityQueue = this.routeSelection;
        if (priorityQueue != null && priorityQueue.size < ((ArrayList) priorityQueue.array).size()) {
            int i2 = priorityQueue.size;
            ArrayList arrayList = (ArrayList) priorityQueue.array;
            if (i2 >= arrayList.size()) {
                Utils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            int i3 = priorityQueue.size;
            priorityQueue.size = i3 + 1;
            return planConnectToRoute$okhttp((Route) arrayList.get(i3), null);
        }
        RealInterceptorChain realInterceptorChain = this.routeSelector;
        if (realInterceptorChain == null) {
            realInterceptorChain = new RealInterceptorChain(this.address, this.routeDatabase, this.call, this.fastFallback);
            this.routeSelector = realInterceptorChain;
        }
        if (!realInterceptorChain.hasNext()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("exhausted all routes");
            return null;
        }
        if (!realInterceptorChain.hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        while (realInterceptorChain.index < realInterceptorChain.interceptors.size()) {
            Address address = (Address) realInterceptorChain.initialRequest;
            if (realInterceptorChain.index >= realInterceptorChain.interceptors.size()) {
                throw new SocketException("No route to " + address.url.host + "; exhausted proxy configurations: " + realInterceptorChain.interceptors);
            }
            List list2 = realInterceptorChain.interceptors;
            int i4 = realInterceptorChain.index;
            realInterceptorChain.index = i4 + 1;
            Proxy proxy = (Proxy) list2.get(i4);
            ArrayList arrayList3 = new ArrayList();
            realInterceptorChain.size = arrayList3;
            if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                HttpUrl httpUrl = address.url;
                str = httpUrl.host;
                i = httpUrl.port;
            } else {
                SocketAddress address2 = proxy.address();
                if (!(address2 instanceof InetSocketAddress)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Proxy.address() is not an InetSocketAddress: ", address2.getClass());
                    return null;
                }
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address2;
                InetAddress address3 = inetSocketAddress.getAddress();
                if (address3 == null) {
                    str = inetSocketAddress.getHostName();
                    str.getClass();
                } else {
                    str = address3.getHostAddress();
                    str.getClass();
                }
                i = inetSocketAddress.getPort();
            }
            if (1 > i || i >= 65536) {
                throw new SocketException("No route to " + str + ':' + i + "; port is out of range");
            }
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList3.add(InetSocketAddress.createUnresolved(str, i));
            } else {
                Regex regex = _HostnamesCommonKt.VERIFY_AS_IP_ADDRESS;
                str.getClass();
                if (_HostnamesCommonKt.VERIFY_AS_IP_ADDRESS.matches(str)) {
                    list = Room.listOf(InetAddress.getByName(str));
                } else {
                    try {
                        InetAddress[] allByName = InetAddress.getAllByName(str);
                        allByName.getClass();
                        List list3 = ArraysKt___ArraysKt.toList(allByName);
                        if (list3.isEmpty()) {
                            throw new UnknownHostException(address.dns + " returned no addresses for " + str);
                        }
                        list = list3;
                    } catch (NullPointerException e) {
                        UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(str));
                        unknownHostException.initCause(e);
                        throw unknownHostException;
                    }
                }
                if (realInterceptorChain.isPlaceholderCached && list.size() >= 2) {
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj : list) {
                        if (((InetAddress) obj) instanceof Inet6Address) {
                            arrayList4.add(obj);
                        } else {
                            arrayList5.add(obj);
                        }
                    }
                    if (!arrayList4.isEmpty() && !arrayList5.isEmpty()) {
                        byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                        Iterator it = arrayList4.iterator();
                        Iterator it2 = arrayList5.iterator();
                        ListBuilder createListBuilder = Room.createListBuilder();
                        while (true) {
                            if (!it.hasNext() && !it2.hasNext()) {
                                break;
                            }
                            if (it.hasNext()) {
                                createListBuilder.add(it.next());
                            }
                            if (it2.hasNext()) {
                                createListBuilder.add(it2.next());
                            }
                        }
                        list = Room.build(createListBuilder);
                    }
                }
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(new InetSocketAddress((InetAddress) it3.next(), i));
                }
            }
            Iterator it4 = ((List) realInterceptorChain.size).iterator();
            while (it4.hasNext()) {
                Route route2 = new Route((Address) realInterceptorChain.initialRequest, proxy, (InetSocketAddress) it4.next());
                ConnectionPool connectionPool = (ConnectionPool) realInterceptorChain.request;
                synchronized (connectionPool) {
                    contains = ((LinkedHashSet) connectionPool.delegate).contains(route2);
                }
                if (contains) {
                    ((ArrayList) realInterceptorChain.eventListener).add(route2);
                } else {
                    arrayList2.add(route2);
                }
            }
            if (!arrayList2.isEmpty()) {
                break;
            }
        }
        if (arrayList2.isEmpty()) {
            CollectionsKt.addAll(arrayList2, (ArrayList) realInterceptorChain.eventListener);
            ((ArrayList) realInterceptorChain.eventListener).clear();
        }
        PriorityQueue priorityQueue2 = new PriorityQueue(arrayList2);
        this.routeSelection = priorityQueue2;
        if (this.call.canceled) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Canceled");
            return null;
        }
        if (priorityQueue2.size >= arrayList2.size()) {
            Utils$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        int i5 = priorityQueue2.size;
        priorityQueue2.size = i5 + 1;
        return planConnectToRoute$okhttp((Route) arrayList2.get(i5), arrayList2);
    }

    public final ConnectPlan planConnectToRoute$okhttp(Route route, ArrayList arrayList) {
        route.getClass();
        Address address = route.address;
        if (address.sslSocketFactory == null) {
            if (!address.connectionSpecs.contains(ConnectionSpec.CLEARTEXT)) {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
            String str = route.address.url.host;
            Platform platform = Platform.platform;
            if (!Platform.platform.isCleartextTrafficPermitted(str)) {
                throw new UnknownServiceException(Animation.CC.m("CLEARTEXT communication to ", str, " not permitted by network security policy"));
            }
        } else if (address.protocols.contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        Request request = null;
        if (route.proxy.type() == Proxy.Type.HTTP) {
            Address address2 = route.address;
            if (address2.sslSocketFactory != null || address2.protocols.contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
                Request.Builder builder = new Request.Builder(0);
                builder.url = route.address.url;
                builder.method("CONNECT", null);
                builder.header("Host", _UtilJvmKt.toHostHeader(route.address.url, true));
                builder.header("Proxy-Connection", "Keep-Alive");
                builder.header("User-Agent", "okhttp/5.3.2");
                request = new Request(builder);
                Response.Builder builder2 = new Response.Builder();
                builder2.request = request;
                Protocol protocol = Protocol.HTTP_1_1;
                protocol.getClass();
                builder2.protocol = protocol;
                builder2.code = 407;
                builder2.message = "Preemptive Authenticate";
                builder2.sentRequestAtMillis = -1L;
                builder2.receivedResponseAtMillis = -1L;
                builder2.header("Proxy-Authenticate", "OkHttp-Preemptive");
                builder2.build();
            }
        }
        return new ConnectPlan(this.taskRunner, this.connectionPool, this.readTimeoutMillis, this.writeTimeoutMillis, this.socketConnectTimeoutMillis, this.socketReadTimeoutMillis, this.retryOnConnectionFailure, this.call, this, route, arrayList, request, -1, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0038, code lost:
    
        if ((r7.http2Connection != null) == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.ReusePlan planReusePooledConnection$okhttp(okhttp3.internal.connection.ConnectPlan r11, java.util.List r12) {
        /*
            r10 = this;
            okhttp3.internal.connection.RealConnectionPool r0 = r10.connectionPool
            boolean r1 = r10.doExtensiveHealthChecks
            okhttp3.Address r2 = r10.address
            okhttp3.internal.connection.RealCall r3 = r10.call
            r4 = 0
            r5 = 1
            if (r11 == 0) goto L14
            boolean r6 = r11.isReady()
            if (r6 == 0) goto L14
            r6 = r5
            goto L15
        L14:
            r6 = r4
        L15:
            java.util.concurrent.ConcurrentLinkedQueue r0 = r0.connections
            java.util.Iterator r0 = r0.iterator()
            r0.getClass()
        L1e:
            boolean r7 = r0.hasNext()
            r8 = 0
            if (r7 == 0) goto L66
            java.lang.Object r7 = r0.next()
            okhttp3.internal.connection.RealConnection r7 = (okhttp3.internal.connection.RealConnection) r7
            r7.getClass()
            monitor-enter(r7)
            if (r6 == 0) goto L3e
            okhttp3.internal.http2.Http2Connection r9 = r7.http2Connection     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L37
            r9 = r5
            goto L38
        L37:
            r9 = r4
        L38:
            if (r9 != 0) goto L3e
        L3a:
            r9 = r4
            goto L49
        L3c:
            r10 = move-exception
            goto L64
        L3e:
            boolean r9 = r7.isEligible$okhttp(r2, r12)     // Catch: java.lang.Throwable -> L3c
            if (r9 != 0) goto L45
            goto L3a
        L45:
            r3.acquireConnectionNoEvents(r7)     // Catch: java.lang.Throwable -> L3c
            r9 = r5
        L49:
            monitor-exit(r7)
            if (r9 == 0) goto L1e
            boolean r9 = r7.isHealthy(r1)
            if (r9 == 0) goto L53
            goto L67
        L53:
            monitor-enter(r7)
            r7.noNewExchanges = r5     // Catch: java.lang.Throwable -> L61
            java.net.Socket r8 = r3.releaseConnectionNoEvents$okhttp()     // Catch: java.lang.Throwable -> L61
            monitor-exit(r7)
            if (r8 == 0) goto L1e
            okhttp3.internal._UtilJvmKt.closeQuietly(r8)
            goto L1e
        L61:
            r10 = move-exception
            monitor-exit(r7)
            throw r10
        L64:
            monitor-exit(r7)
            throw r10
        L66:
            r7 = r8
        L67:
            if (r7 != 0) goto L6a
            return r8
        L6a:
            if (r11 == 0) goto L77
            okhttp3.Route r12 = r11.route
            r10.nextRouteToTry = r12
            java.net.Socket r10 = r11.javaNetSocket
            if (r10 == 0) goto L77
            okhttp3.internal._UtilJvmKt.closeQuietly(r10)
        L77:
            okhttp3.internal.connection.ReusePlan r10 = new okhttp3.internal.connection.ReusePlan
            r10.<init>(r7)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealRoutePlanner.planReusePooledConnection$okhttp(okhttp3.internal.connection.ConnectPlan, java.util.List):okhttp3.internal.connection.ReusePlan");
    }
}
