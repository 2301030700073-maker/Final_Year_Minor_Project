package androidx.work;

import android.content.Context;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SystemClock {
    public static final SystemClock INSTANCE = new SystemClock();

    public SystemClock() {
        List list = Collections.EMPTY_LIST;
    }

    public ListenableWorker createWorkerWithDefaultFallback(Context context, String str, WorkerParameters workerParameters) {
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
