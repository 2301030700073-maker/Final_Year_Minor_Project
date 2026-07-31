package retrofit2;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidMainExecutor implements Executor {
    public final /* synthetic */ int $r8$classId;
    public final Object handler;

    public AndroidMainExecutor() {
        this.$r8$classId = 0;
        this.handler = new Handler(Looper.getMainLooper());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.$r8$classId;
        Object obj = this.handler;
        switch (i) {
            case 0:
                ((Handler) obj).post(runnable);
                return;
            case 1:
                Handler handler = (Handler) obj;
                runnable.getClass();
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            default:
                ((WorkManagerTaskExecutor) obj).mMainThreadHandler.post(runnable);
                return;
        }
    }

    public /* synthetic */ AndroidMainExecutor(int i, Object obj) {
        this.$r8$classId = i;
        this.handler = obj;
    }
}
