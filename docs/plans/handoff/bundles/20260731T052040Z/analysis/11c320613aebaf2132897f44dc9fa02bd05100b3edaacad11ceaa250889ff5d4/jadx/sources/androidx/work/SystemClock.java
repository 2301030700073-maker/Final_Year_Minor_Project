package androidx.work;

import android.content.Context;
import androidx.core.os.BundleKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SystemClock {
    public static final SystemClock INSTANCE = new SystemClock();
    public static final SystemClock INSTANCE$1 = new SystemClock();
    public static final Operation$State$SUCCESS IN_PROGRESS;
    public static final Operation$State$SUCCESS SUCCESS;

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.work.Operation$State$SUCCESS] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.work.Operation$State$SUCCESS] */
    static {
        final int i = 0;
        SUCCESS = new BundleKt() { // from class: androidx.work.Operation$State$SUCCESS
            public final String toString() {
                switch (i) {
                    case 0:
                        return "SUCCESS";
                    default:
                        return "IN_PROGRESS";
                }
            }
        };
        final int i2 = 1;
        IN_PROGRESS = new BundleKt() { // from class: androidx.work.Operation$State$SUCCESS
            public final String toString() {
                switch (i2) {
                    case 0:
                        return "SUCCESS";
                    default:
                        return "IN_PROGRESS";
                }
            }
        };
    }

    public ListenableWorker createWorkerWithDefaultFallback(Context context, String str, WorkerParameters workerParameters) {
        context.getClass();
        str.getClass();
        workerParameters.getClass();
        try {
            Class<? extends U> asSubclass = Class.forName(str).asSubclass(ListenableWorker.class);
            asSubclass.getClass();
            try {
                Object newInstance = asSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                newInstance.getClass();
                ListenableWorker listenableWorker = (ListenableWorker) newInstance;
                if (!listenableWorker.mUsed) {
                    return listenableWorker;
                }
                throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + str + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
            } catch (Throwable th) {
                Logger$LogcatLogger.get().error(WorkerFactoryKt.TAG, "Could not instantiate ".concat(str), th);
                throw th;
            }
        } catch (Throwable th2) {
            Logger$LogcatLogger.get().error(WorkerFactoryKt.TAG, "Invalid class: ".concat(str), th2);
            throw th2;
        }
    }
}
