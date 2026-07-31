package okhttp3.internal.concurrent;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TaskQueue$execute$1 extends Task {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ int $r8$classId = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskQueue$execute$1(RealConnectionPool realConnectionPool, String str) {
        super(str);
        this.$block = realConnectionPool;
    }

    @Override // okhttp3.internal.concurrent.Task
    public final long runOnce() {
        switch (this.$r8$classId) {
            case 0:
                ((Function0) this.$block).invoke();
                return -1L;
            default:
                RealConnectionPool realConnectionPool = (RealConnectionPool) this.$block;
                long nanoTime = System.nanoTime();
                long j = (nanoTime - realConnectionPool.keepAliveDurationNs) + 1;
                Iterator it = realConnectionPool.connections.iterator();
                it.getClass();
                RealConnection realConnection = null;
                long j2 = Long.MAX_VALUE;
                int i = 0;
                RealConnection realConnection2 = null;
                RealConnection realConnection3 = null;
                int i2 = 0;
                while (it.hasNext()) {
                    RealConnection realConnection4 = (RealConnection) it.next();
                    realConnection4.getClass();
                    synchronized (realConnection4) {
                        if (realConnectionPool.pruneAndGetAllocationCount(realConnection4, nanoTime) > 0) {
                            i2++;
                        } else {
                            long j3 = realConnection4.idleAtNs;
                            if (j3 < j) {
                                j = j3;
                                realConnection2 = realConnection4;
                            }
                            i++;
                            if (j3 < j2) {
                                j2 = j3;
                                realConnection3 = realConnection4;
                            }
                        }
                    }
                }
                if (realConnection2 != null) {
                    realConnection = realConnection2;
                } else if (i > 5) {
                    j = j2;
                    realConnection = realConnection3;
                } else {
                    j = -1;
                }
                if (realConnection == null) {
                    if (realConnection3 != null) {
                        return (j2 + realConnectionPool.keepAliveDurationNs) - nanoTime;
                    }
                    if (i2 > 0) {
                        return realConnectionPool.keepAliveDurationNs;
                    }
                    return -1L;
                }
                synchronized (realConnection) {
                    if (realConnection.calls.isEmpty() && realConnection.idleAtNs == j) {
                        realConnection.noNewExchanges = true;
                        realConnectionPool.connections.remove(realConnection);
                        _UtilJvmKt.closeQuietly(realConnection.javaNetSocket);
                        if (!realConnectionPool.connections.isEmpty()) {
                            return 0L;
                        }
                        realConnectionPool.cleanupQueue.cancelAll();
                        return 0L;
                    }
                    return 0L;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskQueue$execute$1(String str, Function0 function0) {
        super(str);
        this.$block = function0;
    }
}
