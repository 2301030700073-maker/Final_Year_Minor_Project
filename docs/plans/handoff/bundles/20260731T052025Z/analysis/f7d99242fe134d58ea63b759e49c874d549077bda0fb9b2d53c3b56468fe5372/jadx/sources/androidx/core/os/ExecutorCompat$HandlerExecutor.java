package androidx.core.os;

import android.os.Handler;
import android.os.Looper;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExecutorCompat$HandlerExecutor implements Executor {
    public final /* synthetic */ int $r8$classId;
    public final Handler mHandler;

    public ExecutorCompat$HandlerExecutor() {
        this.$r8$classId = 1;
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.$r8$classId;
        Handler handler = this.mHandler;
        switch (i) {
            case 0:
                runnable.getClass();
                if (!handler.post(runnable)) {
                    DifferentialMotionFlingController$$ExternalSyntheticLambda0.m794m((Object) handler);
                    break;
                }
                break;
            default:
                handler.post(runnable);
                break;
        }
    }

    public ExecutorCompat$HandlerExecutor(Handler handler) {
        this.$r8$classId = 0;
        this.mHandler = handler;
    }
}
