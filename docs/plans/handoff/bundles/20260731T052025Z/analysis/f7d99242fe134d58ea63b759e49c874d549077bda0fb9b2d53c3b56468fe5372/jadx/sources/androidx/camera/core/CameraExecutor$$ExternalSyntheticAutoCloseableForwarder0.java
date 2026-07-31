package androidx.camera.core;

import android.os.Build;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class CameraExecutor$$ExternalSyntheticAutoCloseableForwarder0 {
    public static /* synthetic */ void m(CameraExecutor cameraExecutor) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || cameraExecutor != ForkJoinPool.commonPool()) && !(isTerminated = cameraExecutor.isTerminated())) {
            cameraExecutor.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = cameraExecutor.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        cameraExecutor.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
