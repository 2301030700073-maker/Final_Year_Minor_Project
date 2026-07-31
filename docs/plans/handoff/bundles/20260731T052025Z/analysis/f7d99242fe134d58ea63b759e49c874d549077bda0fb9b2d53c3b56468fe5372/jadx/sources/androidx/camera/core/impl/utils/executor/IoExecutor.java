package androidx.camera.core.impl.utils.executor;

import android.os.Handler;
import androidx.camera.core.CameraExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IoExecutor implements Executor {
    public static volatile IoExecutor sExecutor;
    public final /* synthetic */ int $r8$classId;
    public final Object mIoService;

    public IoExecutor() {
        this.$r8$classId = 0;
        this.mIoService = Executors.newFixedThreadPool(2, new CameraExecutor.AnonymousClass1(2));
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.$r8$classId;
        Object obj = this.mIoService;
        switch (i) {
            case 0:
                ((ExecutorService) obj).execute(runnable);
                break;
            default:
                ((Handler) ((Dispatcher) obj).runningAsyncCalls).post(runnable);
                break;
        }
    }

    public IoExecutor(Dispatcher dispatcher) {
        this.$r8$classId = 1;
        this.mIoService = dispatcher;
    }
}
