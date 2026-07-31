package androidx.camera.camera2.pipe.core;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidThreads {
    public static final int[] NICE_VALUES = {19, 16, 13, 10, 0, -2, -4, -5, -6, -8};
    public static final ThreadFactory factory;

    static {
        ThreadFactory defaultThreadFactory = Executors.defaultThreadFactory();
        defaultThreadFactory.getClass();
        factory = defaultThreadFactory;
    }

    public static ScheduledExecutorService asScheduledThreadPool(AndroidThreads$$ExternalSyntheticLambda0 androidThreads$$ExternalSyntheticLambda0, int i) {
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Threads (", ") must be > 0"));
            return null;
        }
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(i, androidThreads$$ExternalSyntheticLambda0);
        newScheduledThreadPool.getClass();
        return newScheduledThreadPool;
    }

    public static AndroidThreads$$ExternalSyntheticLambda1 withPrefix(ThreadFactory threadFactory, String str) {
        threadFactory.getClass();
        return new AndroidThreads$$ExternalSyntheticLambda1(threadFactory, str, AtomicFU.atomic(0));
    }
}
