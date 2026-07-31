package okhttp3.internal.connection;

import androidx.compose.animation.core.Animation;
import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$execute$1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealConnectionPool {
    public final TaskQueue cleanupQueue;
    public final TaskQueue$execute$1 cleanupTask;
    public final ConcurrentLinkedQueue connections;
    public final long keepAliveDurationNs;

    public RealConnectionPool(TaskRunner taskRunner) {
        TimeUnit.MINUTES.getClass();
        this.keepAliveDurationNs = 300000000000L;
        this.cleanupQueue = taskRunner.newQueue();
        this.cleanupTask = new TaskQueue$execute$1(Animation.CC.m(new StringBuilder(), _UtilJvmKt.okHttpName, " ConnectionPool connection closer"), this, 2);
        this.connections = new ConcurrentLinkedQueue();
    }

    public final int pruneAndGetAllocationCount(RealConnection realConnection, long j) {
        TimeZone timeZone = _UtilJvmKt.UTC;
        ArrayList arrayList = realConnection.calls;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                String str = "A connection to " + realConnection.route.address.url + " was leaked. Did you forget to close a response body?";
                Platform platform = Platform.platform;
                Platform.platform.logCloseableLeak(str, ((RealCall.CallReference) reference).callStackTrace);
                arrayList.remove(i);
                if (arrayList.isEmpty()) {
                    realConnection.idleAtNs = j - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
