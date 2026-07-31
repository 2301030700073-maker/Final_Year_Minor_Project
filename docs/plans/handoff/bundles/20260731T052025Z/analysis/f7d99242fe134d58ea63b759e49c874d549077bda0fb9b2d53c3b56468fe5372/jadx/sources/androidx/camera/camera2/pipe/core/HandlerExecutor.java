package androidx.camera.camera2.pipe.core;

import android.os.Handler;
import android.os.Looper;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import com.bumptech.glide.load.engine.ActiveResources$1;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HandlerExecutor implements Executor {
    public static volatile HandlerExecutor sExecutor;
    public final /* synthetic */ int $r8$classId;
    public final Object handler;

    public HandlerExecutor(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 3:
                this.handler = Executors.newSingleThreadExecutor(new ActiveResources$1(1));
                break;
            default:
                this.handler = new Handler(Looper.getMainLooper());
                break;
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.$r8$classId;
        Object obj = this.handler;
        switch (i) {
            case 0:
                runnable.getClass();
                Handler handler = (Handler) obj;
                if (!handler.post(runnable)) {
                    DifferentialMotionFlingController$$ExternalSyntheticLambda0.m794m((Object) handler);
                    break;
                }
                break;
            case 1:
                ((Handler) obj).post(runnable);
                break;
            case 2:
                Handler handler2 = (Handler) obj;
                runnable.getClass();
                if (!handler2.post(runnable)) {
                    DifferentialMotionFlingController$$ExternalSyntheticLambda0.m794m((Object) handler2);
                    break;
                }
                break;
            default:
                ((ExecutorService) obj).execute(runnable);
                break;
        }
    }

    public HandlerExecutor(Handler handler, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 2:
                this.handler = handler;
                break;
            default:
                handler.getClass();
                this.handler = handler;
                break;
        }
    }
}
