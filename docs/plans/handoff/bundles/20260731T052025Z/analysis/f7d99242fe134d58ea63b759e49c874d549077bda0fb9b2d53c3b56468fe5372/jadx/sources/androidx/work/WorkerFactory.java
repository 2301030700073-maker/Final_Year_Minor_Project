package androidx.work;

import android.content.Context;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WorkerFactory {
    public abstract ListenableWorker createWorker(Context context, String str, WorkerParameters workerParameters);

    public final ListenableWorker createWorkerWithDefaultFallback(Context context, String str, WorkerParameters workerParameters) {
        context.getClass();
        str.getClass();
        workerParameters.getClass();
        ListenableWorker createWorker = createWorker(context, str, workerParameters);
        if (createWorker == null) {
            try {
                Class<? extends U> asSubclass = Class.forName(str).asSubclass(ListenableWorker.class);
                asSubclass.getClass();
                try {
                    Object newInstance = asSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                    newInstance.getClass();
                    createWorker = (ListenableWorker) newInstance;
                } catch (Throwable th) {
                    Logger$LogcatLogger.get().error(WorkerFactoryKt.TAG, "Could not instantiate ".concat(str), th);
                    throw th;
                }
            } catch (Throwable th2) {
                Logger$LogcatLogger.get().error(WorkerFactoryKt.TAG, "Invalid class: ".concat(str), th2);
                throw th2;
            }
        }
        if (!createWorker.mUsed) {
            return createWorker;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("WorkerFactory (", getClass().getName(), ") returned an instance of a ListenableWorker (", str, ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
        return null;
    }
}
