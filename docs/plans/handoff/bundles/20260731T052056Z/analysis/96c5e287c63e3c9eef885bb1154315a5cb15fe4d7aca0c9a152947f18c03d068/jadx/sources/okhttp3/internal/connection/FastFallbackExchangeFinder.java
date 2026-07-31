package okhttp3.internal.connection;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskRunner;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FastFallbackExchangeFinder implements ExchangeFinder {
    public final LinkedBlockingDeque connectResults;
    public long nextTcpConnectAtNanos;
    public final RealRoutePlanner routePlanner;
    public final TaskRunner taskRunner;
    public final CopyOnWriteArrayList tcpConnectsInFlight;

    public FastFallbackExchangeFinder(RealRoutePlanner realRoutePlanner, TaskRunner taskRunner) {
        taskRunner.getClass();
        this.routePlanner = realRoutePlanner;
        this.taskRunner = taskRunner;
        this.nextTcpConnectAtNanos = Long.MIN_VALUE;
        this.tcpConnectsInFlight = new CopyOnWriteArrayList();
        this.connectResults = new LinkedBlockingDeque();
    }

    public final void cancelInFlightConnects() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.tcpConnectsInFlight;
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            RoutePlanner$Plan routePlanner$Plan = (RoutePlanner$Plan) it.next();
            routePlanner$Plan.cancel();
            RoutePlanner$Plan retry = routePlanner$Plan.retry();
            if (retry != null) {
                this.routePlanner.deferredPlans.addLast(retry);
            }
        }
        copyOnWriteArrayList.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004e A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0002, B:5:0x000a, B:11:0x001d, B:13:0x0025, B:20:0x004e, B:64:0x005a, B:67:0x0065, B:25:0x006e, B:27:0x0074, B:31:0x007d, B:33:0x0088, B:34:0x008e, B:36:0x0092, B:41:0x0099, B:44:0x00a3, B:46:0x00a7, B:49:0x00ad, B:50:0x00b1, B:52:0x00b5, B:53:0x00b6, B:56:0x00ba, B:69:0x0042, B:71:0x00c3, B:72:0x00ca), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0002, B:5:0x000a, B:11:0x001d, B:13:0x0025, B:20:0x004e, B:64:0x005a, B:67:0x0065, B:25:0x006e, B:27:0x0074, B:31:0x007d, B:33:0x0088, B:34:0x008e, B:36:0x0092, B:41:0x0099, B:44:0x00a3, B:46:0x00a7, B:49:0x00ad, B:50:0x00b1, B:52:0x00b5, B:53:0x00b6, B:56:0x00ba, B:69:0x0042, B:71:0x00c3, B:72:0x00ca), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a7 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0002, B:5:0x000a, B:11:0x001d, B:13:0x0025, B:20:0x004e, B:64:0x005a, B:67:0x0065, B:25:0x006e, B:27:0x0074, B:31:0x007d, B:33:0x0088, B:34:0x008e, B:36:0x0092, B:41:0x0099, B:44:0x00a3, B:46:0x00a7, B:49:0x00ad, B:50:0x00b1, B:52:0x00b5, B:53:0x00b6, B:56:0x00ba, B:69:0x0042, B:71:0x00c3, B:72:0x00ca), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x006d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x006e A[SYNTHETIC] */
    @Override // okhttp3.internal.connection.ExchangeFinder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RealConnection find() {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.FastFallbackExchangeFinder.find():okhttp3.internal.connection.RealConnection");
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RealRoutePlanner getRoutePlanner() {
        return this.routePlanner;
    }

    public final RoutePlanner$ConnectResult launchTcpConnect() {
        final RoutePlanner$Plan failedPlan;
        RealRoutePlanner realRoutePlanner = this.routePlanner;
        if (realRoutePlanner.hasNext(null)) {
            try {
                failedPlan = realRoutePlanner.plan();
            } catch (Throwable th) {
                failedPlan = new FailedPlan(th);
            }
            if (failedPlan.isReady()) {
                return new RoutePlanner$ConnectResult(failedPlan, (Throwable) null, 6);
            }
            if (failedPlan instanceof FailedPlan) {
                return ((FailedPlan) failedPlan).result;
            }
            this.tcpConnectsInFlight.add(failedPlan);
            final String str = _UtilJvmKt.okHttpName + " connect " + realRoutePlanner.address.url.redact();
            this.taskRunner.newQueue().schedule(new Task(str) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder$launchTcpConnect$1
                @Override // okhttp3.internal.concurrent.Task
                public final long runOnce() {
                    RoutePlanner$ConnectResult routePlanner$ConnectResult;
                    RoutePlanner$Plan routePlanner$Plan = failedPlan;
                    try {
                        routePlanner$ConnectResult = routePlanner$Plan.connectTcp();
                    } catch (Throwable th2) {
                        routePlanner$ConnectResult = new RoutePlanner$ConnectResult(routePlanner$Plan, th2, 2);
                    }
                    FastFallbackExchangeFinder fastFallbackExchangeFinder = this;
                    if (!fastFallbackExchangeFinder.tcpConnectsInFlight.contains(routePlanner$Plan)) {
                        return -1L;
                    }
                    fastFallbackExchangeFinder.connectResults.put(routePlanner$ConnectResult);
                    return -1L;
                }
            }, 0L);
        }
        return null;
    }
}
