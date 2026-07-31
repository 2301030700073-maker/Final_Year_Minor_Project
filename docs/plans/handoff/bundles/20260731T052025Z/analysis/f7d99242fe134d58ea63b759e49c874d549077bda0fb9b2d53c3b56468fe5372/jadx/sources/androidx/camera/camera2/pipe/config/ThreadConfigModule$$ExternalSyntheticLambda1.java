package androidx.camera.camera2.pipe.config;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.camera.camera2.pipe.CameraPipe$ThreadConfig;
import androidx.camera.camera2.pipe.core.AndroidThreads;
import androidx.camera.camera2.pipe.core.AndroidThreads$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import com.google.zxing.PlanarYUVLuminanceSource;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ThreadConfigModule$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlanarYUVLuminanceSource f$0;
    public final /* synthetic */ CameraPipeLifetime f$1;

    public /* synthetic */ ThreadConfigModule$$ExternalSyntheticLambda1(PlanarYUVLuminanceSource planarYUVLuminanceSource, CameraPipeLifetime cameraPipeLifetime, int i) {
        this.$r8$classId = i;
        this.f$0 = planarYUVLuminanceSource;
        this.f$1 = cameraPipeLifetime;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        CameraPipeLifetime.ShutdownType shutdownType = CameraPipeLifetime.ShutdownType.THREAD;
        CameraPipeLifetime cameraPipeLifetime = this.f$1;
        PlanarYUVLuminanceSource planarYUVLuminanceSource = this.f$0;
        switch (i) {
            case 0:
                ((CameraPipe$ThreadConfig) planarYUVLuminanceSource.yuvData).getClass();
                HandlerThread handlerThread = new HandlerThread("CXCP-Camera-H", planarYUVLuminanceSource.dataWidth);
                handlerThread.start();
                cameraPipeLifetime.addShutdownAction(shutdownType, new Preview$$ExternalSyntheticLambda0(6, handlerThread));
                return new Handler(handlerThread.getLooper());
            default:
                Executor executor = ((CameraPipe$ThreadConfig) planarYUVLuminanceSource.yuvData).defaultCameraExecutor;
                if (executor != null) {
                    return executor;
                }
                ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(1, new AndroidThreads$$ExternalSyntheticLambda0(planarYUVLuminanceSource.dataWidth, AndroidThreads.withPrefix(AndroidThreads.factory, "CXCP-Camera-E")));
                newFixedThreadPool.getClass();
                cameraPipeLifetime.addShutdownAction(shutdownType, new Preview$$ExternalSyntheticLambda0(7, newFixedThreadPool));
                return newFixedThreadPool;
        }
    }
}
