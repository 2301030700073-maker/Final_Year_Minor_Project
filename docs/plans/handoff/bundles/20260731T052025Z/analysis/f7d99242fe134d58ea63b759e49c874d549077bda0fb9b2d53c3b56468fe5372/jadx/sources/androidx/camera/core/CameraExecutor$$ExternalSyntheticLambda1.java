package androidx.camera.core;

import androidx.datastore.preferences.protobuf.Utf8;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraExecutor$$ExternalSyntheticLambda1 implements RejectedExecutionHandler {
    @Override // java.util.concurrent.RejectedExecutionHandler
    public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        Utf8.SafeProcessor.w("CameraExecutor", "A rejected execution occurred in CameraExecutor!");
    }
}
