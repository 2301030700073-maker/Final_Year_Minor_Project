package okhttp3.internal.connection;

import androidx.compose.ui.Modifier;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
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
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.Address;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okhttp3.ResponseBody$Companion$asResponseBody$1;
import okhttp3.Route;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;
import okio.PriorityQueue;
import org.jsoup.Jsoup;
import org.schabi.newpipe.streams.Mp4DashReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public Mp4DashReader routeSelector;
    public final int socketConnectTimeoutMillis;
    public final int socketReadTimeoutMillis;
    public final TaskRunner taskRunner;
    public final int writeTimeoutMillis;

    public RealRoutePlanner(TaskRunner taskRunner, RealConnectionPool realConnectionPool, int i, int i2, int i3, int i4, boolean z, boolean z2, Address address, ConnectionPool connectionPool, RealCall realCall, Request request) {
        taskRunner.getClass();
        realConnectionPool.getClass();
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
        Mp4DashReader mp4DashReader;
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
            if ((priorityQueue == null || priorityQueue.size >= ((ArrayList) priorityQueue.array).size()) && (mp4DashReader = this.routeSelector) != null) {
                return mp4DashReader.hasNext();
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0073  */
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
            if (r0 != 0) goto La
        L7:
            r2 = r1
            goto L70
        La:
            boolean r2 = r7.doExtensiveHealthChecks
            boolean r2 = r0.isHealthy(r2)
            monitor-enter(r0)
            boolean r3 = r0.noNewExchanges
            r4 = 1
            if (r2 != 0) goto L22
            r0.noNewExchanges = r4     // Catch: java.lang.Throwable -> L1f
            okhttp3.internal.connection.RealCall r2 = r7.call     // Catch: java.lang.Throwable -> L1f
            java.net.Socket r2 = r2.releaseConnectionNoEvents$okhttp()     // Catch: java.lang.Throwable -> L1f
            goto L4e
        L1f:
            r7 = move-exception
            goto L99
        L22:
            if (r3 != 0) goto L48
            okhttp3.Route r2 = r0.route     // Catch: java.lang.Throwable -> L1f
            okhttp3.Address r2 = r2.address     // Catch: java.lang.Throwable -> L1f
            okhttp3.HttpUrl r2 = r2.url     // Catch: java.lang.Throwable -> L1f
            r2.getClass()     // Catch: java.lang.Throwable -> L1f
            okhttp3.Address r3 = r7.address     // Catch: java.lang.Throwable -> L1f
            okhttp3.HttpUrl r3 = r3.url     // Catch: java.lang.Throwable -> L1f
            int r5 = r2.port     // Catch: java.lang.Throwable -> L1f
            int r6 = r3.port     // Catch: java.lang.Throwable -> L1f
            if (r5 != r6) goto L42
            java.lang.String r2 = r2.host     // Catch: java.lang.Throwable -> L1f
            java.lang.String r3 = r3.host     // Catch: java.lang.Throwable -> L1f
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)     // Catch: java.lang.Throwable -> L1f
            if (r2 == 0) goto L42
            goto L43
        L42:
            r4 = 0
        L43:
            if (r4 != 0) goto L46
            goto L48
        L46:
            r2 = r1
            goto L4e
        L48:
            okhttp3.internal.connection.RealCall r2 = r7.call     // Catch: java.lang.Throwable -> L1f
            java.net.Socket r2 = r2.releaseConnectionNoEvents$okhttp()     // Catch: java.lang.Throwable -> L1f
        L4e:
            monitor-exit(r0)
            okhttp3.internal.connection.RealCall r3 = r7.call
            okhttp3.internal.connection.RealConnection r3 = r3.connection
            if (r3 == 0) goto L63
            if (r2 != 0) goto L5d
            okhttp3.internal.connection.ReusePlan r2 = new okhttp3.internal.connection.ReusePlan
            r2.<init>(r0)
            goto L70
        L5d:
            java.lang.String r7 = "Check failed."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r1
        L63:
            if (r2 == 0) goto L68
            okhttp3.internal._UtilJvmKt.closeQuietly(r2)
        L68:
            okhttp3.internal.connection.RealCall r0 = r7.call
            okhttp3.EventListener r0 = r0.eventListener
            r0.getClass()
            goto L7
        L70:
            if (r2 == 0) goto L73
            return r2
        L73:
            okhttp3.internal.connection.ReusePlan r0 = r7.planReusePooledConnection$okhttp(r1, r1)
            if (r0 == 0) goto L7a
            return r0
        L7a:
            kotlin.collections.ArrayDeque r0 = r7.deferredPlans
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L8b
            kotlin.collections.ArrayDeque r7 = r7.deferredPlans
            java.lang.Object r7 = r7.removeFirst()
            okhttp3.internal.connection.RoutePlanner$Plan r7 = (okhttp3.internal.connection.RoutePlanner$Plan) r7
            return r7
        L8b:
            okhttp3.internal.connection.ConnectPlan r0 = r7.planConnect$okhttp()
            java.util.List r1 = r0.routes
            okhttp3.internal.connection.ReusePlan r7 = r7.planReusePooledConnection$okhttp(r0, r1)
            if (r7 == 0) goto L98
            return r7
        L98:
            return r0
        L99:
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
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                return null;
            }
            int i3 = priorityQueue.size;
            priorityQueue.size = i3 + 1;
            return planConnectToRoute$okhttp((Route) arrayList.get(i3), null);
        }
        Mp4DashReader mp4DashReader = this.routeSelector;
        if (mp4DashReader == null) {
            mp4DashReader = new Mp4DashReader(this.address, this.routeDatabase, this.call, this.fastFallback);
            this.routeSelector = mp4DashReader;
        }
        if (!mp4DashReader.hasNext()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("exhausted all routes");
            return null;
        }
        if (!mp4DashReader.hasNext()) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        while (mp4DashReader.selectedTrack < ((List) mp4DashReader.box).size()) {
            if (mp4DashReader.selectedTrack >= ((List) mp4DashReader.box).size()) {
                throw new SocketException("No route to " + ((Address) mp4DashReader.stream).url.host + "; exhausted proxy configurations: " + ((List) mp4DashReader.box));
            }
            List list2 = (List) mp4DashReader.box;
            int i4 = mp4DashReader.selectedTrack;
            mp4DashReader.selectedTrack = i4 + 1;
            Proxy proxy = (Proxy) list2.get(i4);
            ArrayList arrayList3 = new ArrayList();
            mp4DashReader.backupBox = arrayList3;
            if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                HttpUrl httpUrl = ((Address) mp4DashReader.stream).url;
                str = httpUrl.host;
                i = httpUrl.port;
            } else {
                SocketAddress address = proxy.address();
                if (!(address instanceof InetSocketAddress)) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$1(address.getClass(), "Proxy.address() is not an InetSocketAddress: ");
                    return null;
                }
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                InetAddress address2 = inetSocketAddress.getAddress();
                if (address2 == null) {
                    str = inetSocketAddress.getHostName();
                    str.getClass();
                } else {
                    str = address2.getHostAddress();
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
                    list = Jsoup.listOf(InetAddress.getByName(str));
                } else {
                    ((RealCall) mp4DashReader.brands).eventListener.getClass();
                    ((Address) mp4DashReader.stream).dns.getClass();
                    try {
                        InetAddress[] allByName = InetAddress.getAllByName(str);
                        allByName.getClass();
                        list = ArraysKt.toList(allByName);
                        if (list.isEmpty()) {
                            throw new UnknownHostException(((Address) mp4DashReader.stream).dns + " returned no addresses for " + str);
                        }
                        ((RealCall) mp4DashReader.brands).eventListener.getClass();
                    } catch (NullPointerException e) {
                        UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(str));
                        unknownHostException.initCause(e);
                        throw unknownHostException;
                    }
                }
                if (mp4DashReader.chunkZero && list.size() >= 2) {
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj : list) {
                        if (((InetAddress) obj) instanceof Inet6Address) {
                            arrayList4.add(obj);
                        } else {
                            arrayList5.add(obj);
                        }
                    }
                    Pair pair = new Pair(arrayList4, arrayList5);
                    List list3 = (List) pair.component1();
                    List list4 = (List) pair.component2();
                    if (!list3.isEmpty() && !list4.isEmpty()) {
                        byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                        Iterator it = list3.iterator();
                        Iterator it2 = list4.iterator();
                        ListBuilder createListBuilder = Jsoup.createListBuilder();
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
                        list = createListBuilder.build();
                    }
                }
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(new InetSocketAddress((InetAddress) it3.next(), i));
                }
            }
            Iterator it4 = ((List) mp4DashReader.backupBox).iterator();
            while (it4.hasNext()) {
                Route route2 = new Route((Address) mp4DashReader.stream, proxy, (InetSocketAddress) it4.next());
                ConnectionPool connectionPool = (ConnectionPool) mp4DashReader.tracks;
                synchronized (connectionPool) {
                    contains = ((LinkedHashSet) connectionPool.delegate).contains(route2);
                }
                if (contains) {
                    ((ArrayList) mp4DashReader.moof).add(route2);
                } else {
                    arrayList2.add(route2);
                }
            }
            if (!arrayList2.isEmpty()) {
                break;
            }
        }
        if (arrayList2.isEmpty()) {
            CollectionsKt__MutableCollectionsKt.addAll((ArrayList) mp4DashReader.moof, arrayList2);
            ((ArrayList) mp4DashReader.moof).clear();
        }
        PriorityQueue priorityQueue2 = new PriorityQueue(10, arrayList2);
        this.routeSelection = priorityQueue2;
        if (this.call.canceled) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Canceled");
            return null;
        }
        if (priorityQueue2.size >= arrayList2.size()) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
            return null;
        }
        int i5 = priorityQueue2.size;
        priorityQueue2.size = i5 + 1;
        return planConnectToRoute$okhttp((Route) arrayList2.get(i5), arrayList2);
    }

    public final ConnectPlan planConnectToRoute$okhttp(Route route, ArrayList arrayList) {
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        route.getClass();
        Address address = route.address;
        if (address.sslSocketFactory == null) {
            if (!address.connectionSpecs.contains(ConnectionSpec.CLEARTEXT)) {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
            String str = route.address.url.host;
            Platform platform = Platform.platform;
            if (!Platform.platform.isCleartextTrafficPermitted(str)) {
                throw new UnknownServiceException(Modifier.CC.m("CLEARTEXT communication to ", str, " not permitted by network security policy"));
            }
        } else if (address.protocols.contains(protocol)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        Request request = null;
        if (route.proxy.type() == Proxy.Type.HTTP) {
            Address address2 = route.address;
            if (address2.sslSocketFactory != null || address2.protocols.contains(protocol)) {
                Request.Builder builder = new Request.Builder();
                HttpUrl httpUrl = route.address.url;
                httpUrl.getClass();
                builder.url = httpUrl;
                builder.method("CONNECT", null);
                Address address3 = route.address;
                builder.header("Host", _UtilJvmKt.toHostHeader(address3.url, true));
                builder.header("Proxy-Connection", "Keep-Alive");
                builder.header("User-Agent", "okhttp/5.4.0");
                request = new Request(builder);
                ResponseBody$Companion$asResponseBody$1 responseBody$Companion$asResponseBody$1 = ResponseBody.EMPTY;
                Headers.Builder builder2 = new Headers.Builder(0);
                Jsoup.headersCheckName("Proxy-Authenticate");
                Jsoup.headersCheckValue("OkHttp-Preemptive", "Proxy-Authenticate");
                builder2.removeAll("Proxy-Authenticate");
                Jsoup.commonAddLenient(builder2, "Proxy-Authenticate", "OkHttp-Preemptive");
                builder2.build();
                responseBody$Companion$asResponseBody$1.getClass();
                address3.proxyAuthenticator.getClass();
            }
        }
        return new ConnectPlan(this.taskRunner, this.connectionPool, this.readTimeoutMillis, this.writeTimeoutMillis, this.socketConnectTimeoutMillis, this.socketReadTimeoutMillis, this.retryOnConnectionFailure, this.call, this, route, arrayList, request, -1, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x003d, code lost:
    
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
            r0.getClass()
            java.io.Serializable r0 = r0.connections
            java.util.concurrent.ConcurrentLinkedQueue r0 = (java.util.concurrent.ConcurrentLinkedQueue) r0
            java.util.Iterator r0 = r0.iterator()
            r0.getClass()
        L23:
            boolean r7 = r0.hasNext()
            r8 = 0
            if (r7 == 0) goto L6b
            java.lang.Object r7 = r0.next()
            okhttp3.internal.connection.RealConnection r7 = (okhttp3.internal.connection.RealConnection) r7
            r7.getClass()
            monitor-enter(r7)
            if (r6 == 0) goto L43
            okhttp3.internal.http2.Http2Connection r9 = r7.http2Connection     // Catch: java.lang.Throwable -> L41
            if (r9 == 0) goto L3c
            r9 = r5
            goto L3d
        L3c:
            r9 = r4
        L3d:
            if (r9 != 0) goto L43
        L3f:
            r9 = r4
            goto L4e
        L41:
            r10 = move-exception
            goto L69
        L43:
            boolean r9 = r7.isEligible$okhttp(r2, r12)     // Catch: java.lang.Throwable -> L41
            if (r9 != 0) goto L4a
            goto L3f
        L4a:
            r3.acquireConnectionNoEvents(r7)     // Catch: java.lang.Throwable -> L41
            r9 = r5
        L4e:
            monitor-exit(r7)
            if (r9 == 0) goto L23
            boolean r9 = r7.isHealthy(r1)
            if (r9 == 0) goto L58
            goto L6c
        L58:
            monitor-enter(r7)
            r7.noNewExchanges = r5     // Catch: java.lang.Throwable -> L66
            java.net.Socket r8 = r3.releaseConnectionNoEvents$okhttp()     // Catch: java.lang.Throwable -> L66
            monitor-exit(r7)
            if (r8 == 0) goto L23
            okhttp3.internal._UtilJvmKt.closeQuietly(r8)
            goto L23
        L66:
            r10 = move-exception
            monitor-exit(r7)
            throw r10
        L69:
            monitor-exit(r7)
            throw r10
        L6b:
            r7 = r8
        L6c:
            if (r7 != 0) goto L6f
            return r8
        L6f:
            if (r11 == 0) goto L7c
            okhttp3.Route r12 = r11.route
            r10.nextRouteToTry = r12
            java.net.Socket r11 = r11.javaNetSocket
            if (r11 == 0) goto L7c
            okhttp3.internal._UtilJvmKt.closeQuietly(r11)
        L7c:
            okhttp3.internal.connection.RealCall r10 = r10.call
            okhttp3.EventListener r10 = r10.eventListener
            r10.getClass()
            okhttp3.internal.connection.ReusePlan r10 = new okhttp3.internal.connection.ReusePlan
            r10.<init>(r7)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealRoutePlanner.planReusePooledConnection$okhttp(okhttp3.internal.connection.ConnectPlan, java.util.List):okhttp3.internal.connection.ReusePlan");
    }
}
