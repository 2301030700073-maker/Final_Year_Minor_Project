package androidx.core.os;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ExecutorCompat$HandlerExecutor implements Executor {
    public final /* synthetic */ int $r8$classId;
    public final Object mHandler;

    public /* synthetic */ ExecutorCompat$HandlerExecutor(Object obj, int i) {
        this.$r8$classId = i;
        this.mHandler = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.$r8$classId;
        Object obj = this.mHandler;
        switch (i) {
            case 0:
                Handler handler = (Handler) obj;
                runnable.getClass();
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            case 1:
                Handler handler2 = (Handler) obj;
                runnable.getClass();
                if (handler2.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler2 + " is shutting down");
            default:
                ((Handler) ((Dispatcher) obj).runningAsyncCalls).post(runnable);
                return;
        }
    }
}
